package model
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import p2p.P2PUser;
	
	
	[Bindable]
	public class UserStatusInfo extends EventDispatcher
	{
		public var user : P2PUser;
		
		public var data : Object;

		public var state :int = 0;
		
		public function UserStatusInfo(user:P2PUser, data:Object = null, target:IEventDispatcher=null)
		{
			super(target);
			this.user = user;
			this.data = data;
		}
	}
}