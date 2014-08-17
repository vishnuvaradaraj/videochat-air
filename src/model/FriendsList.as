package model
{
	import com.adobe.serialization.json.JSON;
	import com.adobe.serializers.utility.TypeUtility;
	
	import components.ImageCacheManager;
	
	import flash.events.EventDispatcher;
	import flash.net.SharedObject;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.CallResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import p2p.P2PUser;
	import p2p.UserObject;
	
	import services.parabay.Parabay;
	
	import spark.components.View;
	import spark.components.ViewNavigator;
	
	import views.UploadProgressView;

	[Bindable]
	public class FriendsList extends EventDispatcher
	{
	
		public var list : ArrayCollection = new ArrayCollection();
		public var loading:Boolean = false;
		
		public var bookmark :String = null;
		protected var offset:int = 0;
		
		protected var parent : View;
		protected var navigator:ViewNavigator;
		protected var progressPage :UploadProgressView;
		
		protected var responder:CallResponder;
		protected var pbay:Parabay;
		
		protected var localSO:SharedObject;
		
		protected var currentQuery : String;
		
		protected var clearData:Boolean = false;
		
		public var hasErrors:Boolean = false;
		

		//don't create globals here. use directly.
		
		public function FriendsList()
		{
			this.responder = new CallResponder();
			this.pbay = new Parabay();
			this.localSO = SharedObject.getLocal("settings");			

		}
		
		public function init(parent:View, navigator:ViewNavigator):void
		{
			this.parent = parent;
			this.navigator = navigator;		
			
			this.getDataIfNecessary();
			this.addEventListener("queryChanged", onUserQueryChanged); 
			
			this.pbay.addEventListener(ResultEvent.RESULT, this.listUsersResult_resultHandler);
			this.pbay.addEventListener(FaultEvent.FAULT, this.listUsersResult_faultHandler);
		}
		
		public function deinit():void
		{
			this.removeEventListener("queryChanged", onUserQueryChanged);
			
			this.pbay.removeEventListener(ResultEvent.RESULT, this.listUsersResult_resultHandler);
			this.pbay.removeEventListener(FaultEvent.FAULT, this.listUsersResult_faultHandler);

			this.parent = null;
			this.navigator = null;
		}
		
		protected function invokeMethod():void
		{
			trace("loading data from server...");
			
			this.loading = true;
			var token :String = Globals.getInstance().token;
			this.responder.token = pbay.listFriends(token, this.query, this.bookmark);
		}
		
		protected function getDataIfNecessary():void
		{
			if (this.currentQuery != this.query)
			{
				this.getData(false);
			}
		}
		
		public function getLocalData(more:Boolean=true):int
		{		
			this.loading = true;
			
			if (!more)
			{
				this.offset = 0;
			}

			var ret:int = 0;
			var cache:UserCache = Globals.getInstance().userCache;	
			
			var cacheResult:ArrayCollection = cache.loadUsers(this.offset);
			if (cacheResult.length>0)
			{
				
				if (this.list.length > Globals.MAX_LIST_ROWS)
				{
					this.list.removeAll();
				}

				this.offset += cacheResult.length;
				ret = cacheResult.length;
				
				for(var index:Object in cacheResult)
				{
					var u:Object = cacheResult[index];
					this.list.addItem(this.wrap(u, false)); //update this to true to check online status					
				}
			}
			
			this.loading = false;
			
			return ret;
		}
		
		public function getData(more:Boolean=true):Boolean
		{
			if (clearData || !more || (this.currentQuery != this.query))
			{
				clearData = false;
				this.list.removeAll();
				this.currentQuery = this.query;
				this.bookmark = null;
				this.offset = 0;
			}

			var localRows:int = this.getLocalData(more);
			if (localRows>= 10)
				return true;
			
			if (this.bookmark == "")
				return false;
			
			if (this.parent)
			{
				progressPage = new UploadProgressView();
				progressPage.show("Loading...");
			}
						
			this.invokeMethod();
			return true;
		}
		
		protected function isEmptyRow(res:Object):Boolean
		{
			var ret:Boolean = false;
			
			if (res.hasOwnProperty('nick') && !res.nick)
			{
				ret = true;
			}
			
			return ret;
		}
		
		public function listUsersResult_resultHandler(event:ResultEvent):void
		{ 
			this.loading = false;
			if (this.progressPage)
			{
				this.progressPage.cancel();
				this.progressPage = null;
			}
						
			if (event.result.status == 5)
			{
				this.clearData = true;
				Globals.getInstance().token = null;
				
				if (this.navigator)
				{
					navigator.popAll();
					navigator.pushView(views.LoginPage);
				}
			}
			else
			{
				this.hasErrors = false;
				
				bookmark = event.result.sync_token;
				
				/* no need to clear display list or disable more due to local refresh.
				if (bookmark.length == 0)
				{
					this.clearData = true;
					Globals.getInstance().actionBarItems.more = false;
				}
				else
				{
					this.clearData = false;
					Globals.getInstance().actionBarItems.more = true;
				}
				*/
				
				var result :ArrayCollection = new ArrayCollection();
				if (event.result.data)
				{
					result = event.result.data as ArrayCollection;
					if (result.length == 1)
					{
						var res:Object = result[0];
						if ( this.isEmptyRow(res) )
						{
							result = new ArrayCollection();
						}
					}
				}
				
				//result.source.reverse();
				for(var index:Object in result)
				{
					var u:P2PUser = this.wrap(result[index]) as P2PUser;
					if (u && u.data)
					{
						Globals.getInstance().userCache.saveUser(u.data);
					}
					//this.list.addItemAt(u, 0);
				}
					
				this.getLocalData(true);
			}
		}

		public function wrap(item:Object, checkOnline:Boolean=false):Object
		{
			if (item.peerId)
			{
				item.id = item.peerId;
				item.peerId = null;
			}
			
			var user:UserObject = new UserObject(item);
			user.approved = Globals.getInstance().approvedDefault; //all users from server are approved.
			//Globals.LOG.info(user.nick + '; Approved=' + user.approved);
			
			if (user.id && checkOnline)
			{
				user.isOnline = Globals.getInstance().p2pSession.pingUser(user.id);
			}
			else
			{
				user.isOnline = false;
			}

			var p2pUser:P2PUser = new P2PUser(user, Globals.getInstance().callManager);
			return p2pUser;
		}
		
		public function listUsersResult_faultHandler(event:FaultEvent):void
		{
			this.loading = false;
			this.clearData = true;
			this.hasErrors = true;
			
			if (this.progressPage)
			{
				this.progressPage.cancel();
				this.progressPage = null;
			}
		}
		
		protected function onUserQueryChanged(event:*):void
		{			
			this.getData(false);
		}
		
		protected function createDefaultQuery():Object
		{
			var temp:Object = new Object();
			temp.kind = "Friends_User";
			temp.columns = [];
			temp.filters = [];
			temp.orders = [];

			var filter :Object = new Object();
			filter.condition = "approved =";
			filter.param = "1";
			filter.type = "string";
			temp.filters.push(filter);
						
			return temp;
		}
		
		protected function queryName():String
		{
			return "friendsQuery";
		}
		
		protected var _query :String;
		
		[Bindable(event="queryChanged")]
		public function get query():String
		{
			var ret:String = this._query;
			if (!ret && this.localSO.data.hasOwnProperty(this.queryName()))
			{
				//ret = localSO.data.query;
			}
			
			if (!ret)
			{
				ret = com.adobe.serialization.json.JSON.encode(this.createDefaultQuery());
				_query = ret;
			}
			
			return ret;
		}
		
		public function set query(__query:String):void
		{
			this._query = __query;
			localSO.data[this.queryName()] = __query;
			localSO.flush();
			dispatchEvent(new Event("queryChanged"));
		}

	}
}