package events
{
	import p2p.UserObject;
	
	import flash.events.Event;
	
	/**
	 * transmits chat messages in/out of a visual component to P2PSession
	 */
	public class PeerMessageEvent extends Event
	{
		
		public static const CHAT_MESSAGE:String = "chatMessage";
		public static const OPEN_PRIVATE_CHAT:String = "openPrivateChat";
		
		public static const INCOMING_CALL:String = "incomingCall";
		public static const ACCEPTED_CALL:String = "acceptedCall";
		public static const REJECTED_CALL:String = "rejectedCall";
		public static const END_CALL:String = "endCall";
		
		public var message:Object;
		
		public function PeerMessageEvent(type:String, message:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			this.message = message;
		}
		
	}
}