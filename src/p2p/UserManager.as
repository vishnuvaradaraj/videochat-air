package p2p
{
	import events.PeerStatusEvent;
	import events.StatusInfoEvent;
	import events.UserStatusEvent;
	
	import flash.events.EventDispatcher;
	
	import model.Globals;
	import model.UserStatusInfo;
	
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	
	import p2p.CallManager;
	import p2p.P2PSession;
	import p2p.P2PUser;
	import p2p.UserObject;
	import p2p.VideoSession;
	
	import spark.events.IndexChangeEvent;

	public class UserManager extends EventDispatcher
	{ 
		private var p2pSession:P2PSession;
		private var callManager:CallManager;
		private var videoSession:VideoSession;
		
		private var user:UserObject = new UserObject();		
		private var userCount:int=0;
		
		[Bindable]
		private var globals:Globals = Globals.getInstance();

		public function UserManager()
		{
		}
		
		public function login(user:UserObject):void
		{
			this.user = user;
						
			P2PSession.debugMode = true;
			p2pSession = this.globals.p2pSession;
			p2pSession.addEventListener(Event.CONNECT, onP2PSessionConnect,false,0,true);	
			p2pSession.addEventListener(Event.CLOSE, onP2PSessionDisconnect,false,0,true);
			p2pSession.connect(this.user);
		}
		
		protected function onP2PSessionDisconnect(event:Event):void
		{
			Globals.LOG.info("P2P session dis connected");
			
			var p2pUser :P2PUser = new P2PUser(this.user, callManager);
			var statusData :UserStatusInfo = new UserStatusInfo(p2pUser);
			dispatchEvent(new UserStatusEvent(UserStatusEvent.DISCONNECTED, statusData));

		}
		
		protected function onP2PSessionConnect(event:Event):void
		{
			Globals.LOG.info("P2P session connected");
			
			//p2pSession.chatGroup.addEventListener(PeerStatusEvent.USER_ADDED, userListChange,false,0,true);
			//p2pSession.chatGroup.addEventListener(PeerStatusEvent.USER_REMOVED, userListChange,false,0,true);
			//p2pSession.chatGroup.addEventListener(PeerStatusEvent.USER_IDLE, userListChange,false,0,true);
						
			callManager = this.globals.callManager;
			videoSession = this.globals.videoSession;
			
			videoSession.init(getP2PUser, callManager.handleUserRequest);
			callManager.init(p2pSession, videoSession);	
			
			callManager.addEventListener(StatusInfoEvent.CALL_STATUS_INFO, handleCallStatus,false,0,true);
			
			var p2pUser :P2PUser = new P2PUser(this.user, callManager);
			var statusData :UserStatusInfo = new UserStatusInfo(p2pUser);
			dispatchEvent(new UserStatusEvent(UserStatusEvent.CONNECTED, statusData));
		}
		
		private function handleCallStatus(event:StatusInfoEvent):void
		{
		}
		
		private function getP2PUser(peerID:String):P2PUser
		{
			return this.globals.p2pUsers[peerID];
		}
		
		private function userListChange(msg :PeerStatusEvent):void
		{		
			Globals.LOG.info("User List Event: " + msg.type + " - " + msg.info.id);
			
			switch(msg.type) 
			{
				case "userAdded":	
					
					if(this.globals.p2pUsers[msg.info.id]==null)
					{
						userCount++;
						
						var userObject:UserObject = new UserObject(msg.info);							
						var user:P2PUser = new P2PUser(userObject, callManager);
						this.globals.p2pUsers[user.data.id] = user;
						this.globals.p2pUsersList.addItem(user);
						callManager.addEventListener(StatusInfoEvent.CALL_STATUS_INFO, user.onUserStatusChange,false,0,true);
					}
					break;
				case "userRemoved":
					
					if(this.globals.p2pUsers[msg.info.id]!=null)
					{
						var user1:P2PUser = this.globals.p2pUsers[msg.info.id] as P2PUser;
						if(user1!=null)
						{
							user1.removeEventListener(StatusInfoEvent.CALL_STATUS_INFO, user1.onUserStatusChange);
							
						}
						this.globals.p2pUsers[msg.info.id] = null;
						var index : int = this.globals.p2pUsersList.getItemIndex(user1);
						if (-1 != index)
						{
							this.globals.p2pUsersList.removeItemAt(index);
							userCount--;
						}
					}
					
					//If we are in an active call then this will cancel it
					callManager.endCurrentCall(msg.info.id);
					
					break;
				case "connected":
				case "userIdle":
					break;
			}				
		}
	}
}