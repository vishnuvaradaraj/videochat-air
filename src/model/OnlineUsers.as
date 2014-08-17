package model
{
	import events.ChatEvent;
	import events.PeerStatusEvent;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import model.FriendsList;
	import model.Globals;
	
	import mx.collections.ArrayCollection;
	import mx.events.FlexEvent;
	import mx.events.PropertyChangeEvent;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import p2p.P2PSession;
	import p2p.P2PUser;
	import p2p.UserObject;
	
	[Bindable]
	public class OnlineUsers extends EventDispatcher
	{
		private static var DEFAULT_MESSAGE:String = "Searching For Humans";
		private static var OTHER_MESSAGE:String = " is now online.";
		
		private static var MAX_USERS:int = 20;
		private static var SWITCH_INTERVAL:int = 8000;
		
		private var globals:Globals = Globals.getInstance();
		
		public var message:String = DEFAULT_MESSAGE;
		public var isPrivateMessage:Boolean=true;
		public var user:String = "";
		
		public var users:ArrayCollection = new ArrayCollection();
		public var userMap:Object = new Object();
		
		public var currentIndex :int = 0;
		public var currentUserObj :UserObject = null;
		
		private var switchTimer:Timer;			

		public function OnlineUsers(target:IEventDispatcher=null)
		{
			super(target);
			this.user = this.globals.currentUser.nick;
		}
		
		protected function startTimers():void
		{
			this.switchTimer = new Timer(SWITCH_INTERVAL);
			this.switchTimer.addEventListener(TimerEvent.TIMER, this.switchCallback);
			this.switchTimer.start();
		}
		
		public function init():void
		{
			this.users.removeAll();
			this.userMap = new Object();
			
			this.globals.p2pSession.chatGroup.addEventListener(PeerStatusEvent.USER_ADDED, userListUpdate,false,0,true);
			this.globals.p2pSession.chatGroup.addEventListener(PeerStatusEvent.USER_REMOVED, userListUpdate,false,0,true);
			this.globals.p2pSession.chatGroup.addEventListener(ChatEvent.NEW_MESSAGE, this.onChatMessage);
			
			this.startTimers();
		}
		
		private function onChatMessage(event:ChatEvent):void
		{		
			if (this.globals.hidePublic && (!event.data.isPrivate))
			{
				trace("ignoring public chat");
				return;
			}
			
			trace("Processing chat message in status bar: " + event.data.message);	

			if (!event.data.isPrivate || (event.data.isPrivate && (event.data.peerId == P2PSession.myUser.id)))
			{
				if (event.data.sender && event.data.sender.nick)
				{
					var user :UserObject = new UserObject(event.data.sender);
					
					if (event.data.message && event.data.message.length>0)
					{
						var suffix:String = "'";
						if (event.data.isPrivate)
						{
							suffix = "' to you.";
						}
						user.message = " says: '" + event.data.message + suffix;
						user.isPrivateMessage = event.data.isPrivate;
					}
					this.addorUpdateEntry(user);
				}
			}
		}

		protected function switchCallback(te:TimerEvent=null):void 
		{
			this.switchUser();
			
		}
		
		private function resetToDefault():void
		{
			this.currentIndex = 0;
			this.currentUserObj = null;

			this.message = DEFAULT_MESSAGE;
			this.isPrivateMessage = true;
			this.user = this.globals.currentUser.nick;
		}
		
		public function switchUser():Boolean
		{			
			if (this.users.length <= 0)
			{
				this.resetToDefault();
				return false;	
			}
			
			this.currentIndex++;
			if (this.currentIndex >= this.users.length)	
			{
				this.currentIndex = 0;
			}

			this.currentUserObj = this.users.getItemAt(this.currentIndex) as UserObject;
			if (this.currentUserObj)
			{
				this.user = this.currentUserObj.nick;
				this.message = OTHER_MESSAGE;
				if (this.currentUserObj.message)
				{
					this.message = this.currentUserObj.message as String;
					this.isPrivateMessage = this.currentUserObj.isPrivateMessage;
				}
			}
			return true;
		}
		
		public function getCurrentUser():P2PUser
		{
			var ret:P2PUser = null;
			if (this.currentUserObj)
			{
				ret = new P2PUser(this.currentUserObj, this.globals.callManager);
			}
			
			return ret;
		}
		
		protected function addorUpdateEntry(userObj:UserObject):void
		{
			if (userObj.nick == P2PSession.myUser.nick)
			{
				return;
			}
			
			if (!this.userMap[userObj.id])
			{
				trace('Found new online user:' + userObj.nick);				
				
				this.userMap[userObj.id] = userObj;
				if (this.users.length > MAX_USERS)
				{
					this.users.removeItemAt(0);
				}
				this.users.addItem(userObj);
				
				//update UI
				if (this.message == DEFAULT_MESSAGE)
				{
					this.switchUser();
				}
			}
			else
			{
				if (userObj.message) 
				{
					this.userMap[userObj.id].message = userObj.message;
					this.userMap[userObj.id].isPrivateMessage = userObj.isPrivateMessage;
				}
			}

		}
		
		protected function removeEntry(uo:UserObject):void
		{
			if (uo)
			{
				trace('Removed online user:' + uo.nick);
				
				var index:int = this.users.getItemIndex(uo);
				this.users.removeItemAt(index);
				delete this.userMap[uo.id];
				
				if (this.users.length == 0)
				{
					this.resetToDefault();
				}
			}
		}
		
		public function userListUpdate(msg:PeerStatusEvent):void 
		{
			if (msg.type == "userAdded")
			{
				var userObj:UserObject = new UserObject(msg.info);
				this.addorUpdateEntry(userObj);
				
			}
			else if (msg.type == "userRemoved")
			{
				
				var peerId :String = msg.info as String;
				var uo:UserObject = this.userMap[peerId];
				this.removeEntry(uo);
			}
		}
		
		public function shutdown():void
		{
			this.switchTimer.stop();
			
			this.globals.p2pSession.chatGroup.removeEventListener(ChatEvent.NEW_MESSAGE, this.onChatMessage);
			this.globals.p2pSession.chatGroup.removeEventListener(PeerStatusEvent.USER_ADDED, userListUpdate);
			this.globals.p2pSession.chatGroup.removeEventListener(PeerStatusEvent.USER_REMOVED, userListUpdate);

			this.users.removeAll();
			this.userMap = new Object();
		}
	}
}