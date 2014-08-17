package p2p
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.events.StatusEvent;
	import flash.net.FileReference;
	import flash.utils.ByteArray;
	
	[Event(name="complete",type="flash.events.Event")]
	[Event(name="status",type="flash.events.StatusEvent")]
	public class LocalFileLoader extends EventDispatcher
	{
		public function LocalFileLoader()
		{
			
		}
		
		
		private var file:FileReference;
		public var p2pSharedObject:P2PSharedObject;
		
		
		public function browseFileSystem():void {
			file = new FileReference();
			file.addEventListener(Event.SELECT, selectHandler);
			file.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			file.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			file.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler)
			file.addEventListener(Event.COMPLETE, completeHandler);
			file.browse();
		}
		
		protected function selectHandler(event:Event):void {
			writeText("fileChosen");
			
			writeText(file.name+" | "+file.size);
			
			file.load();
		}
		
		protected function ioErrorHandler(event:IOErrorEvent):void {
			writeText("ioErrorHandler: " + event);
		}
		
		protected function securityErrorHandler(event:SecurityErrorEvent):void {
			writeText("securityError: " + event);
		}
		
		protected function progressHandler(event:ProgressEvent):void {
			var file:FileReference = FileReference(event.target);
			writeText("progressHandler: bytesLoaded=" + event.bytesLoaded + "/" +event.bytesTotal);
			
		}
		
		protected function completeHandler(event:Event):void {
			writeText("completeHandler");
			
			p2pSharedObject = new P2PSharedObject();
			p2pSharedObject.size = file.size;
			p2pSharedObject.packetLength = Math.floor(file.size/64000)+1;
			p2pSharedObject.data = file.data;
			
			
			p2pSharedObject.chunks = new Object();
			p2pSharedObject.chunks[0] = p2pSharedObject.packetLength+1;
			for(var i:int = 1;i<p2pSharedObject.packetLength;i++){
				p2pSharedObject.chunks[i] = new ByteArray();
				p2pSharedObject.data.readBytes(p2pSharedObject.chunks[i],0,64000);
				
			}
			// +1 last packet
			p2pSharedObject.chunks[p2pSharedObject.packetLength] = new ByteArray();
			p2pSharedObject.data.readBytes(p2pSharedObject.chunks[i],0,p2pSharedObject.data.bytesAvailable);
			
			p2pSharedObject.packetLength+=1;
			
			writeText("----- p2pSharedObject -----");
			writeText("packetLenght: "+(p2pSharedObject.packetLength));
			
			
			dispatchEvent(new Event(Event.COMPLETE));
		}
		
		protected function writeText(str:String):void{
			
			trace(str);
			var e:StatusEvent = new StatusEvent(StatusEvent.STATUS,false,false,"status",str);
			
			dispatchEvent(e);
		}
	}
}