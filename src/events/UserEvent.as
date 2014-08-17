
package events
{
	import flash.events.Event;
	
	public class UserEvent extends Event
	{
		public static const LOGIN:String = "login";
		public static const LOGOUT:String = "logout";
		public static const CONNECTED:String = "connected";
		public static const DISCONNECTED:String = "disconnected";

		public var data:*;
		
		public function UserEvent(type:String, data:* = null, bubbles:Boolean = true, cancelable:Boolean = true)
   		{
			super(type, bubbles, cancelable);
			this.data = data;
		}
	}
}