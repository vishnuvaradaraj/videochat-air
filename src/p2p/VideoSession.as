package p2p 
{
	
	import events.VideoChangeEvent;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.events.NetStatusEvent;
	import flash.events.TimerEvent;
	import flash.media.Camera;
	import flash.media.Microphone;
	import flash.media.SoundCodec;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.net.dns.AAAARecord;
	import flash.text.TextField;
	import flash.utils.Timer;
	
	import model.Globals;
	
	import mx.core.UIComponent;
	import mx.utils.ObjectUtil;
	
	import spark.components.ViewNavigator;
	
	public class VideoSession extends UIComponent
	{	
		static private var cameras :Array =  Camera.names;
		
		private var sendStream:NetStream;           
		private var recvStream:NetStream;  
		private var camera:Camera=null;
		
		private var timer:Timer;
		
		private var p2pUserCall:Function;
		private var endCallListener:Function;
		
		private var localVideo:Video;
		private var remoteVideo:Video;
		
		private var remotePeerID:String;
		
		private var globals:Globals;
		
		private var mic:Microphone;
		
		public function VideoSession()
		{
			
		}
		
		public function init(p2pUserCall:Function, endCallListener:Function):void
		{
			this.p2pUserCall = p2pUserCall;
			this.endCallListener = endCallListener;
			this.globals = Globals.getInstance();
		}
		
		public function switchCamera():void
		{
			this.globals = Globals.getInstance();
			
			this.globals.currentCamera = this.globals.currentCamera+1;
			if (this.globals.currentCamera >= VideoSession.cameras.length)
			{
				this.globals.currentCamera = 0;	
			}
			
			var cameraName : String = null;
			if (VideoSession.cameras.length > 0)
			{
				cameraName = VideoSession.cameras[this.globals.currentCamera];
			}
			
			camera = Camera.getCamera(cameraName);
			if(camera!=null)
			{
				var width:int = this.globals.mobileApplication.navigator.width * 2 /3;
				var height:int = this.globals.mobileApplication.navigator.width/2;
				
				camera.setMode(width, height, 12, false);
				camera.setQuality(0, 90);
				
				localVideo.attachCamera(camera);				
				sendStream.attachCamera(camera);				
			}			
		}
		
		public function switchMic(sendAudio:Boolean):void
		{
			if (sendAudio)
			{
				if(mic==null)
				{
					mic = Microphone.getMicrophone();
					mic.setUseEchoSuppression(true);
					mic.setLoopBack(false);
					mic.setSilenceLevel(2,10000);
					mic.codec = SoundCodec.NELLYMOSER;
					//mic.gain = 60;
					//mic.framesPerPacket = 1;
					//mic.rate = 8; // use 8 for Nelly 
				}
				sendStream.attachAudio(mic);
			}		
			else
			{
				sendStream.attachAudio(null);
			}
		}
		
		protected function startLocalFile(conn:NetConnection):void
		{
			sendStream = new NetStream(conn, NetStream.DIRECT_CONNECTIONS);
			sendStream.addEventListener(NetStatusEvent.NET_STATUS, streamStatus,false,0,true);
			
			sendStream.publish("media");
			
			localVideo = new Video(88, 66);
			localVideo.attachNetStream(sendStream);
			
			dispatchEvent(new VideoChangeEvent(VideoChangeEvent.START_LOCAL, localVideo));				
			sendStream.play(Globals.getInstance().localVideoFile);

			//Mic
			mic = Microphone.getMicrophone();
			if(mic!=null)
			{
				mic.setUseEchoSuppression(true);
				mic.setLoopBack(false);
				mic.setSilenceLevel(2,10000);
				mic.codec = SoundCodec.NELLYMOSER;
				sendStream.attachAudio(mic);
			}		
		}
		
		public function startLocalStream(conn:NetConnection):void
		{
			if (this.globals.localVideoFile && this.globals.localVideoFile.length>0)
			{
				this.startLocalFile(conn);
				return;
			}
			
			//use camera
			if(camera!=null)
				return;

			sendStream = new NetStream(conn, NetStream.DIRECT_CONNECTIONS);
			sendStream.addEventListener(NetStatusEvent.NET_STATUS, streamStatus,false,0,true);
	
			sendStream.publish("media");
			
			// CAMERA
			camera = Camera.getCamera();
			if(camera!=null)
			{
			
				this.globals = Globals.getInstance();
				
				var width:int = this.globals.mobileApplication.navigator.width * 2 /3;
				var height:int = this.globals.mobileApplication.navigator.width/2;
				
				camera.setMode(320, 240, 12, false);
				camera.setQuality(0, 90);
				
				localVideo = new Video(88, 66);
				localVideo.attachCamera(camera);
				
				dispatchEvent(new VideoChangeEvent(VideoChangeEvent.START_LOCAL, localVideo));			
				sendStream.attachCamera(camera);
				
			}
		
			
			/* 
			camera = Camera.getCamera();
			if(camera!=null)
			{
				camera.setMode(320, 240, 12, false);
				camera.setQuality(0, 90);
				
				localVideo = new Video(320, 240);
				localVideo.attachCamera(camera);
				
				//videoGroup.localVideoHolder.addChild(localVideo);
				//dispatchEvent(new VideoEvent(VideoEvent.START_LOCAL, localVideo));
				
				sendStream.attachCamera(camera);
			}
			*/
			//Mic
			mic = Microphone.getMicrophone();
			if(mic!=null)
			{
				mic.setUseEchoSuppression(true);
				mic.setLoopBack(false);
				mic.setSilenceLevel(2,10000);
				mic.codec = SoundCodec.NELLYMOSER;
				//mic.gain = 60;
				//mic.framesPerPacket = 1;
				//mic.rate = 8; // use 8 for Nelly 
				sendStream.attachAudio(mic);
			}		
		}
		
		public function startRemoteStream(conn:NetConnection, remotePeerID:String):void
		{		
			this.remotePeerID=remotePeerID;
			
			var p2pUser:Object = p2pUserCall(remotePeerID);
			
			recvStream = new NetStream(conn, remotePeerID);
			recvStream.receiveAudio(true);
			recvStream.receiveVideo(true);
			recvStream.addEventListener(NetStatusEvent.NET_STATUS, streamStatus,false,0,true);
			var client:Object = new Object( );
			client.onMetaData = function(metadata:Object):void {
				trace(ObjectUtil.toString(metadata));
			};
			recvStream.client = client;
			
			
			
			var width:int = this.globals.mobileApplication.navigator.width * 2 /3;
			var height:int = this.globals.mobileApplication.navigator.width/2;
			Globals.LOG.info("Remote video: width=" + width + ", height=" + height);

			remoteVideo = new Video(width,height);
			dispatchEvent(new VideoChangeEvent(VideoChangeEvent.START_REMOTE, remoteVideo, p2pUser));
			
			remoteVideo.attachNetStream(recvStream);
			recvStream.play("media");
						
			
			
			/*
			remoteVideo = new Video(320,240);
			dispatchEvent(new VideoEvent(VideoEvent.START_REMOTE, remoteVideo, p2pUser));
			
			remoteVideo.attachNetStream(recvStream);
			recvStream.play("media");
			*/
		}
		
		public function endSession():void
		{		
			remotePeerID=null;
			
			if(timer!=null)
			{
				timer.stop();
				timer=null;
			}
			if(recvStream!=null)
			{
				recvStream.removeEventListener(NetStatusEvent.NET_STATUS, streamStatus);
				recvStream.close();
				recvStream=null;
			}
			if(sendStream!=null)
			{
				sendStream.attachCamera(null);
				sendStream.attachAudio(null);
				sendStream.removeEventListener(NetStatusEvent.NET_STATUS, streamStatus);
				sendStream.close();
				sendStream=null;
			}
			
			if(localVideo!=null)
			{
				localVideo.attachCamera(null);
				localVideo.clear();
				
				dispatchEvent(new VideoChangeEvent(VideoChangeEvent.STOP_LOCAL, localVideo));
				localVideo=null;
				camera=null;
			}
			
			if(remoteVideo!=null)
			{
				remoteVideo.attachNetStream(null);
				remoteVideo.clear();
				dispatchEvent(new VideoChangeEvent(VideoChangeEvent.STOP_REMOTE, remoteVideo));
				remoteVideo=null;
			}
		}
		
		public function handleEndCall(event:MouseEvent):void
		{
			endCallListener(remotePeerID);
		}
		
		private function streamStatus(event:NetStatusEvent):void
		{
			Globals.LOG.info("streamStatus: "+event.info.code+"\n");
		}
		
	}
}