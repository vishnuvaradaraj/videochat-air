﻿package p2p{		import events.ChatEvent;	import events.PeerStatusEvent;	import events.StatusInfoEvent;		import flash.events.Event;	import flash.events.NetStatusEvent;	import flash.net.GroupSpecifier;	import flash.net.NetConnection;	import flash.net.NetGroup;		import model.Globals;		import mx.collections.ArrayCollection;
			[Event(name="statusInfo",type="p2p.events.StatusInfoEvent")]	/**	 * Dispatched when groupUserList changes	 */	public class GroupChat extends UserList	{				/**		 * chat sequence to make messages unique		 */		private var chatSequence:uint = 0;				/**		 * contains list of users, maintained by UserList class		 */		[Bindable]		public var groupUserList:ArrayCollection;			public var users:Array;				public function GroupChat(connection:NetConnection, groupspec:String, user:UserObject)		{			super(connection, groupspec, user);						setupUserList();		}				public function getNewGroupChat(groupName:String):GroupChat		{			var groupspec:GroupSpecifier = new GroupSpecifier("parabay.p2p_"+groupName);			groupspec.postingEnabled = true;			groupspec.serverChannelEnabled = true;			groupspec.ipMulticastMemberUpdatesEnabled=true;			groupspec.multicastEnabled=true;			groupspec.routingEnabled=true;			groupspec.objectReplicationEnabled=true;						groupspec.setPostingPassword("pswd","pb@y")						return new GroupChat(P2PSession.getConnection(),groupspec.toString(),getUser());					}				public function findUserWithPeerId(peerId:String):UserObject		{			var ret :UserObject = null;			for(var k:int = 0; k<groupUserList.length; k++)			{				if(groupUserList[k].id == peerId) 				{					ret = groupUserList[k];					break;				}			}			return ret;		}				public function chatSend(message:String, isPrivate:Boolean, peerId:String=null):void		{			var msgObj:Object = new Object();			msgObj.message = message;			msgObj.nick = P2PSession.myUser.nick;			msgObj.photo = P2PSession.myUser.photo;			msgObj.id = P2PSession.myUser.id;			msgObj.sender = P2PSession.myUser;			msgObj.sequence = chatSequence++;						if (!isPrivate)			{				msgObj.type = "publicChat";				msgObj.peerId = null;							}			else			{				msgObj.type = "chat";				msgObj.peerId = peerId;								var globals:Globals = Globals.getInstance();				if (!peerId && globals.remoteUser && globals.remoteUser.data)				{					msgObj.peerId = globals.remoteUser.data.id;				}								/*				//attempt local send				if (msgObj.peerId)				{					var res:String = this.sendToNearest(msgObj, this.convertPeerIDToGroupAddress(msgObj.peerId));					trace('sendToNearest:' + res);				}				else				{					trace('Failed to send private message');						}				*/			}						this.post(msgObj);			chatReceive(msgObj, isPrivate);											}				public function chatReceive(msg:Object, isPrivate:Boolean=true):void		{			trace("Received chat:" + msg.message + " from " + msg.nick + " - " + msg.id + " (" + isPrivate + ")");						msg.isPrivate = isPrivate;			if (!isPrivate)			{				msg.peerId = null;			}						dispatchEvent(new ChatEvent(ChatEvent.NEW_MESSAGE, msg));			dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CONN_STATUS_INFO, msg.nick+": "+msg.message));		}				protected function updateUserNames():void		{			users = new Array();			for(var j:int = 0; j<groupUserList.length; j++)			{				users.push(groupUserList[j]);			}		}				protected function onPosting(message:Object):void		{						switch(message.type)			{				case "chat":					chatReceive(message, true);					break;				case "publicChat":					chatReceive(message, false);					break;				default:					break;			}		}				/**		 * handles all net status events covering NetConnection and NetGroup		 */ 		protected function netStatus(e:NetStatusEvent):void		{			switch(e.info.code)			{				case "NetGroup.Connect.Success": // e.info.group					statusWrite("Connected to private chat group");					break;								case "NetGroup.Connect.Rejected": // e.info.group				case "NetGroup.Connect.Failed": // e.info.group					break;								case "NetGroup.Posting.Notify": // e.info.message, e.info.messageID					onPosting(e.info.message);					break;				case "NetGroup.SendTo.Notify": // e.info.message, e.info.from, e.info.fromLocal					break;							case "NetGroup.LocalCoverage.Notify": //										break;				case "NetGroup.Neighbor.Connect": // e.info.neighbor										break;				case "NetGroup.Neighbor.Disconnect": // e.info.neighbor					break;				default:					break;			}		}						/// USER LIST				/**		 * setup UserList instance and all handlers (connected, userAdded, userRemoved, userIdle)		 */		protected function setupUserList():void		{			groupUserList = new ArrayCollection();						//addEventListener(PeerStatusEvent.CONNECTED, userListUpdate,false,0,true);			//addEventListener(PeerStatusEvent.USER_ADDED, userListUpdate,false,0,true);			//addEventListener(PeerStatusEvent.USER_REMOVED, userListUpdate,false,0,true);			//addEventListener(PeerStatusEvent.USER_IDLE, userListUpdate,false,0,true);						// GROUP			addEventListener(NetStatusEvent.NET_STATUS, netStatus,false,0,true);		}				/**		 * handlers (connected, userAdded, userRemoved, userIdle)		 */		public function userListUpdate(msg:PeerStatusEvent):void 		{			switch(msg.type) 			{				case "connected":					break;				case "userAdded":										var userObject:UserObject = new UserObject(msg.info);					userObject.idle = new Date();					groupUserList.addItem(userObject);										statusWrite(userObject.nick+" joined.." + groupUserList.length);										updateUserNames();					break;				case "userRemoved":										for(var j:int = 0; j<groupUserList.length; j++)					{						if(groupUserList[j].id == msg.info.id) 						{							groupUserList.removeItemAt(j);							break;						}					}					statusWrite(msg.info.nick+" left..");										updateUserNames();					break;				case "userIdle":										for(var k:int = 0; k<groupUserList.length; k++)					{						if(groupUserList[k].id == msg.info.id) 						{							groupUserList[k].idle = new Date();							break;						}					}					statusWrite(msg.info.nick+" is idle..");										break;			}		}						/**		 * dispaches event, which is supposed to be written - debug and message info		 */		protected function statusWrite(str:String):void		{			trace(str);			dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CONN_STATUS_INFO,str));		}	}}