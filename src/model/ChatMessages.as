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
	public class ChatMessages extends EventDispatcher
	{
		private static var MAX_CHATS:int = 20;
		
		private var globals:Globals = Globals.getInstance();
				
		public var messages:ArrayCollection = new ArrayCollection();
		
		public function ChatMessages(target:IEventDispatcher=null)
		{
			super(target);
		}
				
		public function init():void
		{
			this.messages.removeAll();
			
			this.globals.p2pSession.chatGroup.addEventListener(ChatEvent.NEW_MESSAGE, this.onChatMessage);
		}
		
		private function onChatMessage(event:ChatEvent):void
		{
			if (!event.data.isPrivate || (event.data.isPrivate && (event.data.peerId == P2PSession.myUser.id)))
			{
				if (event.data.sender && event.data.sender.nick)
				{			
					if (event.data.message && event.data.message.length>0)
					{
						trace("Storing chat message: " + event.data.message);	
						
						var msg:Object = new Object();
						var user :UserObject = new UserObject(event.data.sender);
						msg.stamp = new Date();
						msg.sender = user;
						msg.isPrivate = event.data.isPrivate;
						if (!msg.isPrivate)
						{
							msg.title = user.nick + " says: ";
						}
						else
						{
							msg.title = user.nick + " says to you:";
						}
						msg.photo = user.photo;
						msg.message =  this.formatDate(msg.stamp) + ' - ' + event.data.message;
						
						this.addorUpdateEntry(msg);
					}
					
				}
			}
		}
		
		
		protected function addorUpdateEntry(msg:Object):void
		{
			if (msg)
			{
				if (this.messages.length > MAX_CHATS)
				{
					this.messages.removeItemAt(this.messages.length-1);
				}
				this.messages.addItemAt(msg, 0);
			}
			
		}
				
		
		public function shutdown():void
		{			
			this.globals.p2pSession.chatGroup.removeEventListener(ChatEvent.NEW_MESSAGE, this.onChatMessage);
			
			this.messages.removeAll();
		}
		
		protected function pad(n:int) :String
		{
			var s:String = n.toString();
			while (s.length<2) 
			{
				s = "0" + s;
			}
			return s;
		} 
		
		protected function formatDate(d:Date):String
		{
			var ret:String = "";
			var suffix:String = " am";
			
			var h:int = d.hours;
			if (h>12)
			{
				h -= 12;
				suffix = " pm";
			}
			
			ret = pad(h) + ":" + pad(d.minutes) + suffix;
			return ret;				
		}
	}
}