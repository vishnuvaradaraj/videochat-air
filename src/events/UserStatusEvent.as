package events
{
	import flash.events.Event;
	
	import model.UserStatusInfo;
	
	import p2p.P2PUser;
	
	public class UserStatusEvent extends Event
	{
		public static const INCOMING:String = "incoming";
		public static const ACCEPTED:String = "accepted";
		public static const REJECTED:String = "rejected";
		public static const DISCONNECTED:String = "disconnected";
		public static const CONNECTED:String = "connected";
		public static const MESSAGE:String = "message";
		
		public var userStatusInfo:UserStatusInfo;
		
		public function UserStatusEvent(type:String, userStatusInfo:UserStatusInfo = null, bubbles:Boolean = true, cancelable:Boolean = true)
		{
			super(type, bubbles, cancelable);
			this.userStatusInfo = userStatusInfo;
		}
	}
}