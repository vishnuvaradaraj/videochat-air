package model
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	[Bindable]
	public class UserDetailsItem extends EventDispatcher
	{
		public var type:String;
		public var name:String;
		public var details:String;
		public var icon:Class;
		
		public function UserDetailsItem(type_:String, name_:String, details_:String, icon_:Class)
		{
			super(null);
			this.type = type_;
			this.name = name_;
			this.details = details_;
			this.icon = icon_;
		}
	}
}