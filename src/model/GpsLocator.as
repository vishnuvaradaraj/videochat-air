
package model 
{
	
	public class GpsLocator
	{
		import flash.events.GeolocationEvent;
		import flash.sensors.Geolocation;
		import flash.utils.Timer;
		import flash.events.TimerEvent;
		
		private var geoLocation:Geolocation;
		
		private var gpsTimeout:Timer = new Timer(5000, 1);
		
		public function GpsLocator()
		{
			if(Geolocation.isSupported)
			{
				geoLocation = new Geolocation();
				geoLocation.addEventListener(GeolocationEvent.UPDATE, handleLocationRequest);
				gpsTimeout.start();
				gpsTimeout.addEventListener(TimerEvent.TIMER_COMPLETE, timerHandler,false,0,true);
			}
		}
		
		private function timerHandler(evt:TimerEvent):void
		{
			trace("Didn't get location from GPS");
			release();
		}
		
		
		public function release():void
		{
			gpsTimeout.stop();
			gpsTimeout = null;
			
			if(geoLocation!=null)
			{
				geoLocation.removeEventListener(GeolocationEvent.UPDATE, handleLocationRequest);
				geoLocation = null;
			}			
		}
		
		private function handleLocationRequest(event:GeolocationEvent):void
		{			
			trace("Location: " + event.latitude + ", "  + event.longitude);
			release();
		}
		
	}
}