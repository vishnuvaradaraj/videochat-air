package events
{
	import flash.events.Event;
	
	public class ChatEvent extends Event
	{
		public static const NEW_MESSAGE:String 		= "received";
		
		public var data :Object;
		
		public function ChatEvent(type:String, message:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.data = message;
		}
	}
}