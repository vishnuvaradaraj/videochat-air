package model
{
	public class MessagesList extends FriendsList
	{
		public function MessagesList()
		{
			super();
		}
		
		override protected function createDefaultQuery():Object
		{
			var temp:Object = new Object();
			temp.kind = "Friends_Queue";
			temp.columns = [];
			temp.filters = [];
			temp.orders = ["-created"];
			
			return temp;
		}
		
		override protected function invokeMethod():void
		{
			var token :String = Globals.getInstance().token;
			this.responder.token = pbay.listQueue(token, this.query, this.bookmark);
		}

		override public function wrap(item:Object, checkOnline:Boolean=false):Object
		{
			var obj:Object = new Object();
			obj.owner = item.owner;
			obj.comments = item.comments;
			obj.sourcePhoto = item.sourcePhoto;
			
			this.list.addItem(obj);
			
			return obj;
		}

		override protected function queryName():String
		{
			return "messagesQuery";
		}
		
		override public function getLocalData(more:Boolean=true):int 
		{
			return 0;	
		}
		
		override protected function isEmptyRow(res:Object):Boolean
		{
			var ret:Boolean = false;
			
			if (res.hasOwnProperty('targetUser') && !res.targetUser)
			{
				ret = true;
			}
			
			return ret;
		}
	}
}