package p2p
{
	import flash.system.Capabilities;
	
	/**
	 * object used for storing user information in the user list. 
	 * 
	 */
	[Bindable]
	public class UserObject
	{
		public var id:String;

		
		public var stamp:Number;
		public var peerId:String;
		public var idle:Date;
		
		public var nick:String;
		public var realName:String;
		public var photo:String;
		public var deviceType:String;
		public var latitude:Number;
		public var longitude:Number;
		public var location:String;
		public var description:String;
		public var age:Number;
		public var gender:String;
		public var secret:String;
		public var approved:Number;
		
		public var seq:uint;
		public var isOnline:Boolean;
		public var message:Object;
		public var isPrivateMessage:Boolean=true;
		
		public function UserObject(from:Object=null) 
		{
			if (!from) 
				return;
			
			if (from.hasOwnProperty("nick"))
			{
				this.nick = from.nick;
			}
			
			if (from.hasOwnProperty("photo"))
			{
				this.photo = from.photo;
			}
			
			if (from.hasOwnProperty("age"))
			{
				this.age = from.age;
			}
			
			if (from.hasOwnProperty("gender"))
			{
				this.gender = from.gender;
			}
			
			if (from.hasOwnProperty("location"))
			{
				this.location = from.location;
			}
						
			if (from.hasOwnProperty("description"))
			{
				this.description = from.description;
			}
			
			if (from.hasOwnProperty("peerId"))
			{
				this.peerId = from.peerId;
			}
			
			if (from.hasOwnProperty("secret"))
			{
				this.secret = from.secret;
			}
			
			if (from.hasOwnProperty("realName"))
			{
				this.realName = from.realName;
			}
			
			if (from.hasOwnProperty("deviceType"))
			{
				this.deviceType = from.deviceType;
			}
						
			if (from.hasOwnProperty("stamp"))
			{
				this.stamp = from.stamp;
			}
			
			if (from.hasOwnProperty("idle"))
			{
				this.idle = from.idle;
			}
			
			if (from.hasOwnProperty("id"))
			{
				this.id = from.id;
			}
			
			if (from.hasOwnProperty("isOnline"))
			{
				this.isOnline = from.isOnline;
			}

			if (from.hasOwnProperty("approved"))
			{
				this.approved = from.approved;
			}
			else
			{
				this.approved = 0;
			}
			
			if (!this.deviceType)
				this.deviceType = Capabilities.cpuArchitecture;	
			
			if (!this.photo) {
				this.photo = "male.png";
				if (this.gender && this.gender == "Female")
					this.photo = "female.png";
			}

		}
	}
}