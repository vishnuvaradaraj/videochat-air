package events
{
	import flash.events.Event;
	
	public class StatusInfoEvent extends Event
	{
		public static const CONN_STATUS_INFO:String = "con_status";
		public static const CALL_STATUS_INFO:String = "call_status";
		
		public var status:String;
		public var args:String;
		
		public function StatusInfoEvent(type:String, status:String, args:String=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		
			this.status = status;
			this.args = args;
		}
		
	}
}