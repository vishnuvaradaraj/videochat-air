package p2p
{
	import components.ImageCacheManager;
	
	import events.PeerMessageEvent;
	import events.StatusInfoEvent;
	
	import flash.events.EventDispatcher;
	
	import model.Globals;
	
	import mx.core.UIComponent;
	
	import p2p.CallManager;
	import p2p.UserObject;

	[Bindable]
	public class P2PUser extends EventDispatcher
	{
		public var data:UserObject;
		private var callManager:CallManager;
		
		private var localPhoto:String;
		private var imageCache:ImageCacheManager = ImageCacheManager.getInstance();

		public function P2PUser(user:UserObject, callManager:CallManager)
		{
			super();
			this.data = user;			
			this.callManager = callManager;		
			if (data.photo)
			{
				this.localPhoto = this.imageCache.getImageByURL(data.photo);
			}
		}
				
		public function callUser():Boolean
		{
			return this.callManager.callUser(data.id);
		}	
		
		public function handleUserRequest():void
		{
			this.callManager.handleUserRequest(data.id);
		}	
		
		public function endCall(remotePeerID:String):void
		{
			this.callManager.endCurrentCall(remotePeerID);
		}
		
		public function onUserStatusChange(event:StatusInfoEvent):void
		{
			if(event.args == data.peerId)
			{
				trace(event.status +" id: "+event.args);
			}
		}
		
		public function get id():String
		{
			return data.id;
		}
		
		public function get nick():String
		{
			return data.nick;
		}
				
		public function get photo():String
		{
			if (Globals.getInstance().currentUser.nick != "support" && data.hasOwnProperty("approved") && !data.approved)
			{
				return "";
			}
			else
			{
				if (this.localPhoto)
				{
					return this.localPhoto;
				}
				
				return data.photo;
			}
		}

		public function get location():String
		{
			return data.location;
		}

		public function get description():String
		{
			return data.description;
		}
		
		public function get peerId():String
		{
			return data.peerId;
		}
		
		public function set peerId(id:String):void
		{
			data.id = id;
			data.peerId = id;
		}
		
		public function get isOnline():Boolean
		{
			return data.isOnline;
		}
		
		public function get title():String
		{
			var ret :String = data.nick;
			
			if (data.gender)
			{
				ret = ret + " - " + data.gender ;
			}
			if (data.age)
			{
				ret = ret + ", " + data.age;
			}

			ret = ret + " ...";
			
			return ret;
		}
		
		public function get message():String
		{
			var ret :String = "";
			
			/*
			if (data.isOnline)
			{
				ret = ret + "(ONLINE) ";
			}
			else
			{
				ret = ret + "(OFFLINE) ";
			}
			*/
			
			if (data.description)
			{
				ret = ret + " " + data.description;
			}

			return ret;
		}
	}
}