package model
{
	[Bindable]
	public class ActionBarItems
	{
		public var home :Boolean = true;
		public var search:Boolean = false;
		public var back:Boolean = true;
		public var refresh:Boolean = false;
		public var messages:Boolean = true;
		public var more:Boolean = true;
		public var settings:Boolean = true;
		public var chat:Boolean = true;
		
		public function ActionBarItems()
		{
		}
	}
}