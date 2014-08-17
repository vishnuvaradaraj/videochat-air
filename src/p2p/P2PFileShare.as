package p2p
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.NetStatusEvent;
	import flash.events.StatusEvent;
	import flash.net.GroupSpecifier;
	import flash.net.NetConnection;
	import flash.net.NetGroup;
	import flash.net.NetGroupReplicationStrategy;
	import flash.utils.ByteArray;

	
	[Event(name="complete",type="flash.events.Event")]
	[Event(name="status",type="flash.events.StatusEvent")]
	public class P2PFileShare extends EventDispatcher
	{
		
		[Bindable]
		public var connected:Boolean = false;
		
		public var netConnection:NetConnection;
		
		[Bindable]
		public var netGroup:NetGroup;
		
		public var p2pSharedObject:P2PSharedObject;
		 
		public function P2PFileShare()
		{
		}
		
		public function init(conn:NetConnection, group:NetGroup):void
		{
			if (conn && group)
			{
				this.netConnection = conn;
				this.netGroup = group;
			
				this.connected = true;
				
				this.netGroup.replicationStrategy = NetGroupReplicationStrategy.LOWEST_FIRST;
				
				this.netConnection.addEventListener(NetStatusEvent.NET_STATUS, this.netStatus);
				this.netGroup.addEventListener(NetStatusEvent.NET_STATUS, this.netStatus);
			}
		}
		
		public function startSharing(p2pSharedObject:P2PSharedObject):void{
			writeText("startSharing - chunks shared: "+p2pSharedObject.packetLength);
			
			this.p2pSharedObject = p2pSharedObject;
			
			netGroup.addHaveObjects(0,p2pSharedObject.packetLength);
		}
		
		public function startReceiving():void{
			writeText("startReceiving");
			
			p2pSharedObject = new P2PSharedObject();
			p2pSharedObject.chunks = new Object();
			
			receiveObject(0);
		}
				
		protected function netStatus(event:NetStatusEvent):void{
			
			switch(event.info.code){
				
				case "NetGroup.Replication.Fetch.SendNotify": // e.info.index
					writeText("____ index: "+event.info.index);
					
					break;
				
				case "NetGroup.Replication.Fetch.Failed": // e.info.index
					writeText("____ index: "+event.info.index);
					
					break;
				
				case "NetGroup.Replication.Fetch.Result": // e.info.index, e.info.object
					//writeText("____ index: "+event.info.index+" | object: "+event.info.object);
					
					netGroup.addHaveObjects(event.info.index,event.info.index);
					
					p2pSharedObject.chunks[event.info.index] = event.info.object;
					
					if(event.info.index == 0){
						p2pSharedObject.packetLength = Number(event.info.object);
						writeText("p2pSharedObject.packetLenght: "+p2pSharedObject.packetLength);
						
						receiveObject(1);
						
					}else{
						if(event.info.index+1<p2pSharedObject.packetLength){
							receiveObject(event.info.index+1);
						}else{
							writeText("Receiving DONE");
							writeText("p2pSharedObject.packetLenght: "+p2pSharedObject.packetLength);
							
							p2pSharedObject.data = new ByteArray();
							for(var i:int = 1;i<p2pSharedObject.packetLength;i++){
								p2pSharedObject.data.writeBytes(p2pSharedObject.chunks[i]);
							}
							
							writeText("p2pSharedObject.data.bytesAvailable: "+p2pSharedObject.data.bytesAvailable);
							writeText("p2pSharedObject.data.length: "+p2pSharedObject.data.length);
							
							dispatchEvent(new Event(Event.COMPLETE));
						}
					}
					
					
					break;
				
				case "NetGroup.Replication.Request": // e.info.index, e.info.requestID
					netGroup.writeRequestedObject(event.info.requestID,p2pSharedObject.chunks[event.info.index])
					//
					
					writeText("____ ID: "+event.info.requestID+", index: "+event.info.index);
					break;
				
				default:
					break;
			}
		}
				
		protected function receiveObject(index:Number):void
		{
			netGroup.addWantObjects(index,index);
			p2pSharedObject.actualFetchIndex = index;
		}
		
		protected function writeText(str:String):void
		{
			
			trace(str);
			var e:StatusEvent = new StatusEvent(StatusEvent.STATUS,false,false,"status",str);
		
			dispatchEvent(e);
		}
			
	}
}