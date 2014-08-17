package model
{
	import com.adobe.serialization.json.JSON;
	import com.adobe.serializers.utility.TypeUtility;
	
	import components.ImageCacheManager;
	
	import flash.net.SharedObject;
	import flash.system.Capabilities;
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	import mx.logging.ILogger;
	import mx.logging.Log;
	
	import p2p.CallManager;
	import p2p.P2PSession;
	import p2p.P2PUser;
	import p2p.UserManager;
	import p2p.UserObject;
	import p2p.VideoSession;
	
	import services.parabay.Parabay;
	
	import spark.components.ViewNavigatorApplication;
	
	import valueObjects.UpdatePeerResult;
	
	import views.InCallsPage;
	
	[Bindable]
	public class Globals
	{
		public static const MAX_LIST_ROWS:int = 300;
		
		public static const CLICK_USER_DETAILS:int = 1;
		public static const CLICK_USER_CHAT:int = 2;
		public static const APP_FOCUS_INIT:int = 3;
		public static const CLICK_MORE_USERS:int = 4;
		public static const CLICK_SEARCH_USERS:int = 5;
		public static const CLICK_LOGOUT:int = 6;
		public static const CLICK_USER_NOT_APPROVED:int = 7;
		
		public static const LOG:ILogger = Log.getLogger("Globals");
		
		private static var globals : Globals;
		public var SERVER_URL :String = "http://parabaydemo.appspot.com";
		public var CLIENT_VERSION:int = 10;
		public var MAX_STATS:int = 10;
		public var MAX_CHAT:int = 30;
		
		private var statsDisabled:Boolean = false;
		
		public static function getInstance() : Globals 
		{
			if ( globals == null ) 
			{
				globals = new Globals();
				globals.init();
			}			
			return globals;
		}
	
		private var localSO:SharedObject;
		
		private function init() : void
		{
			this.localSO = SharedObject.getLocal("settings");
		}

		private var _token :String;
	
		[Bindable(event="tokenChanged")]
		public function get token():String
		{
			var ret : String = this._token;
			if (!ret && this.localSO.data.hasOwnProperty("token"))
			{
				ret = localSO.data.token;
			}			
			return ret;
		}
		
		public function set token(__token:String):void
		{
			this._token = __token;
			localSO.data.token = __token;
			localSO.flush();
			
			dispatchEvent(new Event("tokenChanged"));
		}
		
		private var _videoSession :VideoSession;
		
		[Bindable(event="videoSessionChanged")]
		public function get videoSession():VideoSession
		{
			if (!this._videoSession)
			{
				this.createVideoSession();
			}
			return this._videoSession;
		}
		
		public function set videoSession(__videoSession:VideoSession):void
		{
			this._videoSession = __videoSession;
			
			dispatchEvent(new Event("videoSessionChanged"));
		}	
		
		public function createVideoSession():VideoSession 
		{
			var vs:VideoSession =new VideoSession();
			this.videoSession = vs;
			return vs;
		}
		
		private var _callManager :CallManager;
		
		[Bindable(event="callManagerChanged")]
		public function get callManager():CallManager
		{
			if (!this._callManager)
			{
				this.createCallManager();
			}
			return this._callManager;
		}
		
		public function set callManager(__callManager:CallManager):void
		{
			this._callManager = __callManager;
			
			dispatchEvent(new Event("callManagerChanged"));
		}	
		
		public function createCallManager():CallManager 
		{
			var vs:CallManager =new CallManager();
			this.callManager = vs;
			return vs;
		}

		
		private var _p2pSession :P2PSession;
		
		[Bindable(event="p2pSessionChanged")]
		public function get p2pSession():P2PSession
		{
			if (!this._p2pSession)
			{
				this.createP2PSession();
			}
			return this._p2pSession;
		}
		
		public function set p2pSession(__p2pSession:P2PSession):void
		{
			this._p2pSession = __p2pSession;
			
			dispatchEvent(new Event("p2pSessionChanged"));
		}	
		
		public function createP2PSession():P2PSession 
		{
			var vs:P2PSession =new P2PSession();
			this.p2pSession = vs;
			return vs;
		}		
		
		private var _incomingCalls :ArrayCollection = new ArrayCollection();
		
		[Bindable(event="incomingCallsChanged")]
		public function get incomingCalls():ArrayCollection
		{
			return this._incomingCalls;
		}
		
		public function set incomingCalls(__incomingCalls:ArrayCollection):void
		{
			this._incomingCalls = __incomingCalls;
			
			dispatchEvent(new Event("incomingCallsChanged"));
		}		
		
		private var _chatMessages :ArrayCollection = new ArrayCollection();
		
		[Bindable(event="chatMessagesChanged")]
		public function get chatMessages():ArrayCollection
		{
			return this._chatMessages;
		}
		
		public function set chatMessages(__chatMessages:ArrayCollection):void
		{
			this._chatMessages = __chatMessages;
			
			dispatchEvent(new Event("chatMessagesChanged"));
		}		
		
		private var _p2pUsers :Object = new Object();
		
		[Bindable(event="p2pUsersChanged")]
		public function get p2pUsers():Object
		{
			return this._p2pUsers;
		}
		
		public function set p2pUsers(__p2pUsers:Object):void
		{
			this._p2pUsers = __p2pUsers;
			
			dispatchEvent(new Event("p2pUsersChanged"));
		}		
		
		private var _p2pUsersList :ArrayCollection = new ArrayCollection();
		
		[Bindable(event="p2pUsersListChanged")]
		public function get p2pUsersList():ArrayCollection
		{
			return this._p2pUsersList;
		}
		
		public function set p2pUsersList(__p2pUsersList:ArrayCollection):void
		{
			this._p2pUsersList = __p2pUsersList;
			
			dispatchEvent(new Event("p2pUsersListChanged"));
		}		

		private var _userManager:UserManager;
		public function get userManager():UserManager
		{
			if (null==this._userManager)
			{
				this._userManager = new  UserManager();
			}
			return this._userManager;
		}
		
		private var _currentUser :UserObject;
		
		[Bindable(event="currentUserChanged")]
		public function get currentUser():UserObject
		{
			var ret:UserObject = this._currentUser;
			if (!ret && this.localSO.data.hasOwnProperty("currentUser"))
			{
				var userObj :Object = localSO.data.currentUser;
				ret =  new UserObject(userObj);
			}
			return ret;
		}
		
		public function set currentUser(__currentUser:UserObject):void
		{
			this._currentUser = __currentUser;
			localSO.data.currentUser = __currentUser;
			localSO.flush();
			dispatchEvent(new Event("currentUserChanged"));
		}	
		
		private var _remoteUser :P2PUser;
		
		[Bindable(event="remoteUserChanged")]
		public function get remoteUser():P2PUser
		{
			return this._remoteUser;
		}
		
		public function set remoteUser(__remoteUser:P2PUser):void
		{
			this._remoteUser = __remoteUser;
			
			dispatchEvent(new Event("remoteUserChanged"));
		}		
		
		public function p2pLoginUser(user:Object):void
		{			
			if (user)
			{
				if (user is UserObject)
				{
					this.currentUser = UserObject(user);
				}
				else
				{
					this.currentUser = new UserObject(user);
				}

				this.userManager.login(this.currentUser);
			}
			else
			{
				Globals.LOG.error("Invalid user");
			}
		}
		
		
		private var _lastUpload :String = "";
		
		[Bindable(event="lastUploadChanged")]
		public function get lastUpload():String
		{
			var ret : String = this._lastUpload;
			return ret;
		}
		
		public function set lastUpload(__lastUpload:String):void
		{
			this._lastUpload = __lastUpload;
			dispatchEvent(new Event("lastUploadChanged"));
		}

		private var _userQuery :String;
		
		[Bindable(event="userQueryChanged")]
		public function get userQuery():String
		{
			var ret:String = this._userQuery;
			if (!ret && this.localSO.data.hasOwnProperty("userQuery"))
			{
				//ret = localSO.data.userQuery;
			}
			
			if (!ret)
			{
				var temp:Object = new Object();
				temp.kind = "Friends_User";
				temp.columns = [];
				temp.filters = [];
				temp.orders = ["-lastLogin"];
				
				var filter :Object = new Object();
				filter.condition = "approved =";
				filter.param = "1";
				filter.type = "string";
				temp.filters.push(filter);

				
				ret = com.adobe.serialization.json.JSON.encode(temp);
				_userQuery = ret;
			}
			
			return ret;
		}
		
		public function set userQuery(__userQuery:String):void
		{
			this._userQuery = __userQuery;
			localSO.data.userQuery = __userQuery;
			localSO.flush();
			dispatchEvent(new Event("userQueryChanged"));
		}	
	
		private var _friendsList :FriendsList = new FriendsList();
		
		[Bindable(event="friendsListChanged")]
		public function get friendsList():FriendsList
		{
			var ret : FriendsList = this._friendsList;
			return ret;
		}
		
		public function set friendsList(__friendsList:FriendsList):void
		{
			this._friendsList = __friendsList;
			dispatchEvent(new Event("friendsListChanged"));
		}
		
		private var _registerUserCache :Object = new Object();
		
		[Bindable(event="registerUserCacheChanged")]
		public function get registerUserCache():Object
		{
			var ret : Object = this._registerUserCache;
			return ret;
		}
		
		public function set registerUserCache(__registerUserCache:Object):void
		{
			this._registerUserCache = __registerUserCache;
			dispatchEvent(new Event("registerUserCacheChanged"));
		}		
		
		private var _messagesList :MessagesList = new MessagesList();
		
		[Bindable(event="messagesListChanged")]
		public function get messagesList():MessagesList
		{
			var ret : MessagesList = this._messagesList;
			return ret;
		}
		
		public function set messagesList(__messagesList:MessagesList):void
		{
			this._messagesList = __messagesList;
			dispatchEvent(new Event("messagesListChanged"));
		}

		private var _incomingCallFrom :P2PUser;
		
		[Bindable(event="incomingCallFromChanged")]
		public function get incomingCallFrom():P2PUser
		{
			return this._incomingCallFrom;
		}
		
		public function set incomingCallFrom(__incomingCallFrom:P2PUser):void
		{
			this._incomingCallFrom = __incomingCallFrom;
			
			dispatchEvent(new Event("incomingCallFromChanged"));
		}		
		
		private var _actionBarItems :ActionBarItems = new ActionBarItems();
		
		[Bindable(event="actionBarItemsChanged")]
		public function get actionBarItems():ActionBarItems
		{
			return this._actionBarItems;
		}
		
		public function set actionBarItems(__actionBarItems:ActionBarItems):void
		{
			this._actionBarItems = __actionBarItems;
			
			dispatchEvent(new Event("actionBarItemsChanged"));
		}	
		
		private var _currentCamera :int = -1;
		
		[Bindable(event="currentCameraChanged")]
		public function get currentCamera():int
		{
			var ret:int = this._currentCamera;
			return ret;
		}
		
		public function set currentCamera(__currentCamera:int):void
		{
			this._currentCamera = __currentCamera;
			dispatchEvent(new Event("currentCameraChanged"));
		}	

		private var _userCache:UserCache = null;
		
		public function get userCache() :UserCache 
		{
			if ( _userCache == null ) 
			{
				_userCache = new UserCache();
			}			
			return _userCache;
		}

		private var _serverSettings :UpdatePeerResult;
		
		[Bindable(event="serverSettingsChanged")]
		public function get serverSettings():UpdatePeerResult
		{
			var ret:UpdatePeerResult = this._serverSettings;
			if (!ret && this.localSO.data.hasOwnProperty("serverSettings"))
			{
				var obj:Object = localSO.data.serverSettings;
				ret = new UpdatePeerResult();
				ret.approved = obj.approved;
				ret.clientVersion = obj.clientVersion;
				ret.disablePeer = obj.disablePeer;
				ret.disableServer = obj.disableServer;
				ret.message = obj.message;
				ret.pulseInterval = obj.pulseInterval;
				
				this._serverSettings = ret;
			}
			
			if (!ret)
			{
				ret = new UpdatePeerResult();
				ret.approved = 1;
				ret.clientVersion = CLIENT_VERSION;
				ret.disablePeer = 0;
				ret.disableServer = 0;
				ret.message = '';
				ret.pulseInterval = 60000;
				
				this._serverSettings = ret;
			}
			return ret;
		}
		
		public function set serverSettings(__serverSettings:UpdatePeerResult):void
		{
			this._serverSettings = __serverSettings;
			localSO.data.serverSettings = __serverSettings;
			localSO.flush();
			dispatchEvent(new Event("serverSettingsChanged"));
		}	
		
		
		private var _mobileApplication :ViewNavigatorApplication;
		
		[Bindable(event="mobileApplicationChanged")]
		public function get mobileApplication():ViewNavigatorApplication
		{
			var ret : ViewNavigatorApplication = this._mobileApplication;
			return ret;
		}
		
		public function set mobileApplication(__mobileApplication:ViewNavigatorApplication):void
		{
			this._mobileApplication = __mobileApplication;
			dispatchEvent(new Event("mobileApplicationChanged"));
		}
		
		private var _approvedDefault :int = 1;
		
		[Bindable(event="approvedDefaultChanged")]
		public function get approvedDefault():int
		{
			var ret : int = this._approvedDefault;
			return ret;
		}
		
		public function set approvedDefault(__approvedDefault:int):void
		{
			this._approvedDefault = __approvedDefault;
			dispatchEvent(new Event("approvedDefaultChanged"));
		}
		
		
		private var _stats :Array;
		
		[Bindable(event="statsChanged")]
		public function get stats():Array
		{
			var ret : Array = this._stats;
			if (!ret && this.localSO.data.hasOwnProperty("stats"))
			{
				ret = localSO.data.stats;
				this._stats = ret;
			}		
			if (!ret)
			{
				ret = new Array();
				this._stats = ret;
			}
			
			return ret;
		}
		
		public function set stats(__stats:Array):void
		{
			this._stats = __stats;
			localSO.data.stats = __stats;
			localSO.flush();
			
			dispatchEvent(new Event("statsChanged"));
		}
		
		public function appendStats(s:Object):void
		{
			if (this.statsDisabled)
				return;
			
			this.stats.push(s);
			
			if (this.stats.length >= this.MAX_STATS)
			{
				this.statsDisabled = true;
				this.saveStats(this.stats);
				this.stats = new Array();
			}
		}
		
		public function saveStats(stats:Array):void
		{
			trace('saving stats to server...');
			var pbay:Parabay = new Parabay();
			var ss:String = com.adobe.serialization.json.JSON.encode(stats);
			pbay.saveStats(ss, 'ParabayOrg-Friends', this.token);
		}
		
		private var _recentUsers:OnlineUsers = null;
		
		public function get recentUsers() :OnlineUsers 
		{
			if ( _recentUsers == null ) 
			{
				_recentUsers = new OnlineUsers();
			}			
			return _recentUsers;
		}
		
		private var _recentChats:ChatMessages = null;
		
		public function get recentChats() :ChatMessages 
		{
			if ( _recentChats == null ) 
			{
				_recentChats = new ChatMessages();
			}			
			return _recentChats;
		}
		
		private var _isInvisible :Boolean;
		
		[Bindable(event="isInvisibleChanged")]
		public function get isInvisible():Boolean
		{
			var ret:Boolean = this._isInvisible;
			if (!ret && this.localSO.data.hasOwnProperty("isInvisible"))
			{
				var userObj :Object = localSO.data.isInvisible;
				ret =  new Boolean(userObj);
			}
			return ret;
		}
		
		public function set isInvisible(__isInvisible:Boolean):void
		{
			this._isInvisible = __isInvisible;
			localSO.data.isInvisible = __isInvisible;
			localSO.flush();
			dispatchEvent(new Event("isInvisibleChanged"));
		}
		
		
		private var _hidePublic :Boolean = false;
		
		[Bindable(event="hidePublicChanged")]
		public function get hidePublic():Boolean
		{
			var ret:Boolean = this._hidePublic;
			if (!ret && this.localSO.data.hasOwnProperty("hidePublic"))
			{
				var userObj :Object = localSO.data.hidePublic;
				ret =  new Boolean(userObj);
			}
			return ret;
		}
		
		public function set hidePublic(__hidePublic:Boolean):void
		{
			this._hidePublic = __hidePublic;
			localSO.data.hidePublic = __hidePublic;
			localSO.flush();
			dispatchEvent(new Event("hidePublicChanged"));
		}
		
		private var _localVideoFile :String = null;
		
		[Bindable(event="localVideoFileChanged")]
		public function get localVideoFile():String
		{
			var ret : String = this._localVideoFile;
			return ret;
		}
		
		public function set localVideoFile(__localVideoFile:String):void
		{
			this._localVideoFile = __localVideoFile;
			dispatchEvent(new Event("localVideoFileChanged"));
		}
		
		private static const PI_OVER_180 : Number = Math.PI / 180.0;
		
		public function distanceBetweenPoints(
			lat1 : Number,
			lon1 : Number,
			lat2 : Number,
			lon2 : Number
		) : Number {
			var a : Number = 6378137, b : Number = 6356752.3142,  f : Number = 1/298.257223563;  // WGS-84 ellipsiod
			var L : Number = (lon2-lon1) * PI_OVER_180;
			var U1 : Number = Math.atan((1-f) * Math.tan(lat1 * PI_OVER_180));
			var U2 : Number = Math.atan((1-f) * Math.tan(lat2 * PI_OVER_180));
			var sinU1 : Number = Math.sin(U1), cosU1 : Number = Math.cos(U1);
			var sinU2 : Number = Math.sin(U2), cosU2 : Number = Math.cos(U2);
			
			var lambda : Number = L, lambdaP : Number = 2*Math.PI;
			var iterLimit : int = 20;
			while (Math.abs(lambda-lambdaP) > 1e-12 && --iterLimit>0) {
				var sinLambda : Number = Math.sin(lambda), cosLambda : Number = Math.cos(lambda);
				var sinSigma : Number = Math.sqrt((cosU2*sinLambda) * (cosU2*sinLambda) + 
					(cosU1*sinU2-sinU1*cosU2*cosLambda) * (cosU1*sinU2-sinU1*cosU2*cosLambda));
				if (sinSigma==0) return 0;  // co-incident points
				var cosSigma : Number = sinU1*sinU2 + cosU1*cosU2*cosLambda;
				var sigma : Number = Math.atan2(sinSigma, cosSigma);
				var sinAlpha : Number = cosU1 * cosU2 * sinLambda / sinSigma;
				var cosSqAlpha : Number = 1 - sinAlpha*sinAlpha;
				var cos2SigmaM : Number = cosSigma - 2*sinU1*sinU2/cosSqAlpha;
				if (isNaN(cos2SigmaM)) cos2SigmaM = 0;  // equatorial line: cosSqAlpha=0 (¤6)
				var C : Number = f/16*cosSqAlpha*(4+f*(4-3*cosSqAlpha));
				lambdaP = lambda;
				lambda = L + (1-C) * f * sinAlpha *
					(sigma + C*sinSigma*(cos2SigmaM+C*cosSigma*(-1+2*cos2SigmaM*cos2SigmaM)));
			}
			if (iterLimit==0) return NaN  // formula failed to converge
			
			var uSq : Number = cosSqAlpha * (a*a - b*b) / (b*b);
			var A : Number = 1 + uSq/16384*(4096+uSq*(-768+uSq*(320-175*uSq)));
			var B : Number = uSq/1024 * (256+uSq*(-128+uSq*(74-47*uSq)));
			var deltaSigma : Number = B*sinSigma*(cos2SigmaM+B/4*(cosSigma*(-1+2*cos2SigmaM*cos2SigmaM)-
				B/6*cos2SigmaM*(-3+4*sinSigma*sinSigma)*(-3+4*cos2SigmaM*cos2SigmaM)));
			var s : Number = b*A*(sigma-deltaSigma);
			return Math.round(s/1000*100)/100;;
		}
	}
	

}