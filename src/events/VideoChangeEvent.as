package events
{
	import flash.events.Event;
	import flash.media.Video;
	
	public class VideoChangeEvent extends Event
	{

		public static const START_LOCAL:String = "start_local";
		public static const STOP_LOCAL:String = "stop_local";
		public static const START_REMOTE:String = "start_remote";
		public static const STOP_REMOTE:String = "stop_remote";
		
		public var video:Video;
		public var user : Object;

		public function VideoChangeEvent(type:String, video:Video, user:Object=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.video = video;
			this.user = user;
		}
	}
}