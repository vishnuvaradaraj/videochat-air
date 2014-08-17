package model
{
	import flash.data.SQLConnection;
	import flash.data.SQLResult;
	import flash.data.SQLStatement;
	import flash.errors.SQLError;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.filesystem.File;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	
	import p2p.UserObject;
	
	public class UserCache extends EventDispatcher
	{
		public var whereClause:String = " WHERE approved = 1";
		
		protected var sqlConnection:SQLConnection;

		public function UserCache(target:IEventDispatcher=null)
		{
			super(target);
			init();
		}
		
		protected function addColumnsIfRequired():void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				
				stmt.text = "ALTER TABLE userCache ADD COLUMN stamp INTEGER DEFAULT 0";
				stmt.execute();
				
			}
			catch (error:SQLError)
			{
				trace("stamp col already exists");
			}
		}
		
		protected function initStatus():void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				
				stmt.text = "UPDATE userCache SET isOnline=:isOnline, stamp=:stamp";
				stmt.parameters[":isOnline"] = false; 
				stmt.parameters[":stamp"] = flash.utils.getTimer();
				trace('init status=' + stmt.parameters[":stamp"]);
				stmt.execute();
				
			}
			catch (error:SQLError)
			{
				trace("init stamp failed");
			}
		}
		
		protected function init():void
		{
			try
			{
				sqlConnection = new SQLConnection();
				sqlConnection.open(File.applicationStorageDirectory.resolvePath("cache.db"));
				
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				
				stmt.text = "CREATE TABLE IF NOT EXISTS userCache (id TEXT, nick TEXT, description TEXT, age TEXT, gender TEXT, location TEXT, photo TEXT, isOnline INTEGER, approved INTEGER, updated TEXT DEFAULT CURRENT_TIMESTAMP)";
				stmt.execute();

				//stmt.text = "ALTER TABLE userCache ADD COLUMN stamp INTEGER DEFAULT 0";
				//stmt.execute();

				//stmt.text = "DELETE FROM userCache";
				//stmt.execute();				
				
			}
			catch (error:SQLError)
			{
				trace("error initializing db");
			}
			
			this.addColumnsIfRequired();
			this.initStatus();

		}
		
		public function loadUsers(offset:int, limit:int = 10):ArrayCollection
		{
			var ret:ArrayCollection = new ArrayCollection();
			var cacheSize:int = this.countUsers();
			if (cacheSize >= offset)
			{	
				try
				{
					var stmt:SQLStatement = new SQLStatement();
					stmt.sqlConnection = sqlConnection;
					
					stmt.text = "SELECT id, nick, description, age, gender, location, photo, isOnline, updated, approved FROM userCache " + this.whereClause  + " ORDER BY updated LIMIT :limit OFFSET :offset";
					trace(stmt.text);
					
					stmt.parameters[":limit"] = limit;
					stmt.parameters[":offset"] = offset;
					stmt.execute();
					
					var result:SQLResult = stmt.getResult(); 
					if (result && result.data)
					{
						var numRows:int = result.data.length; 
						for (var i:int = 0; i < numRows; i++) 
						{ 
							ret.addItem(result.data[i]);
						}
					}
				}
				catch (error:SQLError)
				{
					trace("error loading users");
				}
			}
			else
			{
				trace("cache size is smaller than offset: " + offset + ", " + cacheSize);
			}
			return ret;
		}
		
		public function countUsers():int
		{
			var ret:int = 0;
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				stmt.text = "SELECT count(*) as rowsCount  FROM userCache " + this.whereClause;
				stmt.execute();
				
				var result:SQLResult = stmt.getResult(); 
				if (result && result.data)
				{
					ret = result.data[0].rowsCount;;
				}
			}
			catch (error:SQLError)
			{
				trace("error counting users");
			}
			
			return ret;
		}
		
		public function addUser(u:UserObject):void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				stmt.text = "INSERT INTO userCache (id, nick, description, age, gender, location, photo, isOnline, approved) VALUES (:id, :nick, :description, :age, :gender, :location, :photo, :isOnline, :approved)";
				
				stmt.parameters[":id"] = u.id;
				stmt.parameters[":nick"] = u.nick;
				stmt.parameters[":description"] = u.description;
				stmt.parameters[":age"] = u.age;
				stmt.parameters[":gender"] = u.gender;
				stmt.parameters[":location"] = u.location;
				stmt.parameters[":photo"] = u.photo;
				stmt.parameters[":isOnline"] = u.isOnline;
				stmt.parameters[":approved"] = u.approved;
				stmt.execute();
			}
			catch (error:SQLError)
			{
				trace("error adding user");
			}
		}

		public function updateUser(u:UserObject):void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				stmt.text = "UPDATE userCache SET id=:id, description=:description, age=:age, gender=:gender, location=:location, photo=:photo, isOnline=:isOnline, approved=:approved WHERE nick=:nick";
				
				stmt.parameters[":id"] = u.id;
				stmt.parameters[":description"] = u.description;
				stmt.parameters[":age"] = u.age;
				stmt.parameters[":gender"] = u.gender;
				stmt.parameters[":location"] = u.location;
				stmt.parameters[":photo"] = u.photo;
				stmt.parameters[":isOnline"] = u.isOnline;
				stmt.parameters[":approved"] = u.approved;
				
				stmt.parameters[":nick"] = u.nick;

				stmt.execute();
			}
			catch (error:SQLError)
			{
				trace("error updating user");
			}
		}
		
		public function saveUser(u:UserObject):void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				
				stmt.text = "SELECT * FROM userCache where nick = :nick";
				stmt.parameters[":nick"] = u.nick;
				stmt.execute();
				if (stmt.getResult().data)
				{
					this.updateUser(u);
				}
				else
				{
					this.addUser(u);
				}
			}
			catch (error:SQLError)
			{
				trace("error saving user");
			}
		}

		public function updateOnlineStatus(id:String, isOnline:Boolean):void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				stmt.text = "UPDATE userCache SET isOnline=:isOnline WHERE id=:id";
				stmt.parameters[":isOnline"] = isOnline; 
				stmt.parameters[":id"] = id; 
				stmt.execute();
			}
			catch (error:SQLError)
			{
				trace("error upd status");
			}
		}

		public function clearExpiredOnlineStatus(expired:Number):void
		{
			var currentStamp:uint = flash.utils.getTimer();
			
			trace('clearExpiredOnlineStatus: expire limit=' + expired + ', current stamp=' + currentStamp); 
			
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				stmt.text = "UPDATE userCache SET isOnline=:isOnline WHERE :currentStamp - stamp > :expired";
				stmt.parameters[":isOnline"] = false; 
				stmt.parameters[":currentStamp"] = currentStamp; 
				stmt.parameters[":expired"] = expired; 
				stmt.execute();
			}
			catch (error:SQLError)
			{
				trace("error clearing online flag");
			}
		}
		
		public function deleteUser(u:UserObject):void
		{
			try
			{
				var stmt:SQLStatement = new SQLStatement();
				stmt.sqlConnection = sqlConnection;
				stmt.text = "DELETE FROM userCache WHERE nick=:nick";
				
				stmt.parameters[":nick"] = u.nick;
				stmt.execute();
			}
			catch (error:SQLError)
			{
				trace("error deleting user");
			}
		}
	}
}