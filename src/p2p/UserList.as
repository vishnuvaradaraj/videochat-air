package p2p
{
	import events.PeerStatusEvent;
	
	import flash.events.Event;
	import flash.events.NetStatusEvent;
	import flash.events.TimerEvent;
	import flash.net.NetConnection;
	import flash.net.NetGroup;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	import flash.utils.getTimer;
	import flash.utils.setTimeout;
	
	import model.Globals;
	
	
	
	public class UserList extends NetGroup
	{		

		// members
		private var m_nearID:String;				// near id
		private var m_sequenceNumber:uint;			// sequence number increment, ensures all posts sent to the group are unique
		private var m_neighbored:Boolean;			// initialization flag to indicate participation in the group
		
		private var m_user:UserObject;
//		private var m_userName:String;				// user name assigned to this instance
		private var m_groupAddress:String;			// this peer's address in the group
		
		private var m_keepAliveTimer:Timer;			// handles announcement of user's presence to the group
		private var m_expireTimer:Timer;			// handles expiration of users who may have timed out or disconnected
		private var m_expired:Number;				// time to grant users before expiring them

		/**
		 * Creates a new UserList object. 
		 * @param connection
		 * @param groupspec
		 * @param nick
		 * 
		 */	
		public function UserList(connection:NetConnection, groupspec:String, user:UserObject)
		{
			// create the base NetGroup and add an internal event listener
			super(connection, groupspec);
			
			this.user = user;
			
			// add event listener for NetGroup.Connect.Success which is sent on the NetConnection's status handler
			connection.addEventListener(NetStatusEvent.NET_STATUS, this.connectionStatusHandler);
			
			// add local event listener for NetGroup status events
			addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
			
			// capture the NetConnection which is used to access the nearID
			m_nearID = connection.nearID;
			m_sequenceNumber = 0;
			
			// set announce timer and frequency
			var pulseInterval:int = Globals.getInstance().serverSettings.pulseInterval;
			m_keepAliveTimer = new Timer(pulseInterval);
			m_keepAliveTimer.addEventListener(TimerEvent.TIMER, announceSelf);
			
			m_expireTimer = new Timer(pulseInterval*4);
			m_expireTimer.addEventListener(TimerEvent.TIMER, expireNames);
			m_expired = pulseInterval*5;

			// init group connectivity to false until we become aware of the first neighbor
			m_neighbored = false;
		}

		
		/**
		 * Returns the group address for this peer. 
		 * @return 
		 * 
		 */		
		public function get groupAddress():String
		{
			if(!m_groupAddress)
			{
				m_groupAddress = convertPeerIDToGroupAddress(m_nearID);
			}
			return m_groupAddress;
		}

		/**
		 * Time to send a keep-alive message to the group to inform them you are still present. 
		 * @return 
		 * 
		 */		
		public function get keepAliveTimerDelay():Number			{ return m_keepAliveTimer.delay; }
		public function set keepAliveTimerDelay(delay:Number):void	{ m_keepAliveTimer.delay = delay; }
		
		/**
		 * The interval in which to check if users have expired. 
		 * @return 
		 * 
		 */
		public function get expireTimerDelay():Number				{ return m_expireTimer.delay; }
		public function set expireTimerDelay(delay:Number):void	{ m_expireTimer.delay = delay; }

		/**
		 * User name for this instance. 
		 * @param name
		 * 
		 */		
		public function getUser():UserObject			{ return m_user; }
		public function set user(user:UserObject):void	{ m_user = user; }		
		

		/**
		 * Handles status events received for the NetConnection.
		 * Used to determine when the NetGroup.Connect.Success event is dispatched. 
		 * @param evt
		 * 
		 */
		private function connectionStatusHandler(evt:NetStatusEvent):void
		{
			if( evt.info.code == "NetGroup.Connect.Success" )
			{
				// removes the EventListener as we no longer need it
				(evt.target as NetConnection).removeEventListener(NetStatusEvent.NET_STATUS, this.connectionStatusHandler);
					
				m_user.stamp = getTimer();
				m_user.peerId = groupAddress;
				
				// dispatch user added event for self
				//dispatchEvent( new PeerStatusEvent(PeerStatusEvent.USER_ADDED, true, false, m_user) );
				
			}
			else if( evt.info.code == "NetGroup.Connect.Closed" )
			{
				m_keepAliveTimer.stop();
			}
		}
		
		/**
		 * Handles status events received to the NetGroup. 
		 * @param evt
		 * 
		 */		
		protected function netStatusHandler(evt:NetStatusEvent):void 
		{
			
			switch( evt.info.code ) 
			{
				
				case "NetGroup.Neighbor.Connect":

					// don't start timers and attempt group calls until we have at least one neighbor
					if( !m_neighbored ) 
					{					
						m_neighbored = true;
						
						// start timers
						m_keepAliveTimer.start();
						m_expireTimer.start();
						
						// immediately send a keep-alive to the group
						announceSelf();
						
						// request a current snapshot of the known users from the first neighbor
						requestUsers(evt.info.neighbor);
						dispatchEvent(new PeerStatusEvent(PeerStatusEvent.CONNECTED, true, false));
					}
					break;
				
				case "NetGroup.Neighbor.Disconnect":
					Globals.getInstance().userCache.updateOnlineStatus(evt.info.peerID, false);
					dispatchEvent( new PeerStatusEvent(PeerStatusEvent.USER_REMOVED, true, false, evt.info.peerID) );
					break;
				
				case "NetGroup.Posting.Notify":
					
					// ignore any posts that are not relevant to updating users information
					var postObj:Object = evt.info.message;					
					if( postObj.id != null &&  postObj.nick != null) 
					{
						updateUser(postObj);
					}
					break;
				
				case "NetGroup.SendTo.Notify":
					
					// process directed routing events (user list requests and replies)
					processRouting(evt.info);
					break;
			}
		}
		
		/**
		 * Updates the time stamp for a user when acknowledgement is received of their presence. 
		 * @param user
		 * 
		 */		
		protected function updateUser(user:Object):void
		{
			// grab the current timestamp
			user.stamp = getTimer();
			
			// create a new user object (so we're not wasting memory saving the sequence number)
			var uo:UserObject = new UserObject(user);	
			uo.isOnline = true;
			uo.peerId = uo.id;
			Globals.getInstance().userCache.saveUser(uo);
			
			// dispatch user added event
			dispatchEvent( new PeerStatusEvent(PeerStatusEvent.USER_ADDED, true, false, uo) );
		}
		
		/**
		 * Timer event handler to announce your presence to the group. 
		 * @param te
		 * 
		 */		
		protected function announceSelf(te:TimerEvent=null):void 
		{
			if (Globals.getInstance().isInvisible)
			{
				return;	
			}
			
			// create a new object to be sent to other participants
			// notifying them of your presence.
			var msg:UserObject = new UserObject(m_user);
				msg.seq = m_sequenceNumber++;
				msg.id = m_nearID;
				msg.stamp = getTimer();
				
			// NetGroup.post will return the messageID of the post if successful
			// otherwise it will return null on error
			// If this returns a null, then make sure you selected postingEnabled
			// on your GroupSpecifier object
			if( post(msg) == null )
			{
				Globals.LOG.error("Failed to post user msg");
			}
		}
		
		/**
		 * Timer event handler to loop through the names and see who may no longer be present in the group. 
		 * @param te
		 * 
		 */		
		protected function expireNames(te:TimerEvent=null):void {
			
			Globals.getInstance().userCache.clearExpiredOnlineStatus(m_expired);

		}

		// /////////////////////////////////////////////////////////// 
		// Directed Routing User List Request
		// This is the process by which a new joiner would ask a
		// neighbor for a copy of their users list.
		//
		// /////////////////////////////////////////////////////////// 
		
		
		protected function processRouting(info:Object):void 
		{
			// info properties...
			// message - object that was sent
			// from - group address of neighbor info was received from
			// fromLocal - if true, then from self and process, else pass along
			
			if( info.message.destination == groupAddress )
			{
				// neighbor has requested a copy of user list
				if( info.message.type == ListRoutingObject.REQEUST )
				{
					var response:ListRoutingObject = new ListRoutingObject();
						response.destination = info.message.sender;
						response.time = getTimer();
						response.users = Globals.getInstance().userCache.loadUsers(0, 100).source;
						response.type = ListRoutingObject.RESPONSE;
					
					// send the requester a copy of user list
					sendToNearest(response, response.destination);
				} 

				// neighbor has responded with a copy of their user list
				if( info.message.type == ListRoutingObject.RESPONSE )
				{
					var users:Object = info.message.users;
					var neighborsTime:Number = info.message.time;
					var neighborsAge:Number = 0;
					var localAge:Number = 0;
					
					// loop through and calculate new stamp relative to known age and this system's clock
					for( var i:String in users ) 
					{
						var u:UserObject = new UserObject(users[i]);
						
						neighborsAge = neighborsTime - users[i].stamp + 1000;
						u.stamp = getTimer() - neighborsAge;
						
						// dispatch new user added event						
						Globals.getInstance().userCache.saveUser(u);
						//dispatchEvent( new PeerStatusEvent(PeerStatusEvent.USER_ADDED, true, false, users[i]) );
						
					} // for
					
				} // if RESPONSE
				
				
			}
			else if( !info.fromLocal )
			{
				// not from local, pass it along
				sendToNearest(info.message, info.message.destination);
			}
		}
		
		/**
		 * Sumits a request for a snapshot of the first neighbor's users list. 
		 * @param id
		 * 
		 */
		protected function requestUsers(id:String):void {
			
			var request:ListRoutingObject = new ListRoutingObject();
				request.destination = id;
				request.sender = groupAddress;
				request.type = ListRoutingObject.REQEUST;
			sendToNearest(request, request.destination);
		}		
		
	} // UserList
} // com.adobe.fms

/**
 * Internal object used for requesting, and responding with, a snapshot of the users list.
 * 
 */
internal class ListRoutingObject extends Object
{
	public static const REQEUST:String = "request";
	public static const RESPONSE:String = "response";
	
	public var users:Object;
	public var time:uint;
	public var type:String;
	public var sender:String;
	public var destination:String;
	
} // ListRoutingObject
