﻿﻿package p2p{	import events.PeerMessageEvent;	import events.StatusInfoEvent;	import events.UserStatusEvent;		import flash.events.EventDispatcher;	import flash.events.SampleDataEvent;	import flash.media.Sound;	import flash.media.SoundChannel;	import flash.media.Video;		import model.Globals;	import model.UserStatusInfo;
		[Bindable]	public class CallManager extends EventDispatcher	{				private var ringer:Sound;		private var ringerChannel:SoundChannel;				public var ringing:Boolean=false;		public var currentState:String = "normal";				private var p2pSession:P2PSession;				private var remotePeerID:String;				private var videoSession:VideoSession;				private var _globals :Globals = Globals.getInstance();				public function CallManager()		{			super();		}				public function init(p2pSession:P2PSession, videoSession:VideoSession):void		{			this.videoSession = videoSession;			this.p2pSession = p2pSession;			p2pSession.addEventListener(PeerMessageEvent.INCOMING_CALL, incomingCallHandler,false,0,true);			p2pSession.addEventListener(PeerMessageEvent.ACCEPTED_CALL, acceptedCallHandler,false,0,true);		}				public function callUser(peerID:String):Boolean		{			var ret:Boolean = false;						if(currentState == "normal")			{								currentState="dialing";					remotePeerID=peerID;				ret = placeOutgoingCall(remotePeerID);			}							return ret;		}				public function handleUserRequest(peerID:String):String		{			Globals.LOG.info("handleRequest from {0}: oldState = {1}", peerID, currentState);						if(currentState == "active")			{				currentState="normal";				stopRing();				endCurrentCall(peerID);			}			else if(currentState == "dialing")			{				currentState="normal";									stopRing();								endCurrentCall(peerID);			}			else if(currentState == "normal")			{								currentState="dialing";					remotePeerID=peerID;				placeOutgoingCall(remotePeerID);			}			else if(currentState == "incoming")			{				currentState="active";									stopRing();								acceptImcomingCall(remotePeerID);			}								Globals.LOG.info("handleRequest from {0}: currentState = {1}", peerID, currentState);						return currentState;		}				/**		 * called when a local user selects a Peer to have a video call with		 * The MouseEvent comes from the user pressing a listItem that represents 		 * another user 		 */		private function placeOutgoingCall(remotePeerID:String):Boolean		{								var ret:Boolean = true;						var selectedUsers:Vector.<String> = new Vector.<String>();						selectedUsers.push(remotePeerID);						ret = p2pSession.sendCallEventToPeerIds(PeerMessageEvent.INCOMING_CALL, selectedUsers);			if (ret)			{				//Listen for the remote party sending the ACCEPTED_CALL event				p2pSession.addEventListener(PeerMessageEvent.ACCEPTED_CALL, remoteAcceptedEventHandler,false,0,true);				p2pSession.addEventListener(PeerMessageEvent.REJECTED_CALL, rejectedCallHandler,false,0,true);								dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, remotePeerID));			}						return ret;		}				public function incomingCallHandler(event:PeerMessageEvent):void		{			//handle ui			var callerId :String = event.message.sender.id;							var statusData : UserStatusInfo  = null;			var remoteUser :P2PUser = this._globals.p2pUsers[callerId];			if (remoteUser)			{				statusData = new UserStatusInfo(remoteUser);				this._globals.incomingCalls.addItem(statusData); 				dispatchEvent(new UserStatusEvent(UserStatusEvent.INCOMING, statusData));			}						//handle call			if(currentState=="normal")			{				currentState="incoming";								remotePeerID=event.message.sender.id;								dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, remotePeerID));				this._globals.incomingCallFrom = remoteUser;				ring();			}			else			{				if (statusData)				{					statusData.state = 1;				}								rejectIncomingCall(event.message.sender.id);			}							p2pSession.addEventListener(PeerMessageEvent.END_CALL, endCallHandler,false,0,true);		}				public function endCallHandler(event:PeerMessageEvent):void		{			if (this._globals.remoteUser)			{				var  statusData : UserStatusInfo = new UserStatusInfo(this._globals.remoteUser);				dispatchEvent(new UserStatusEvent(UserStatusEvent.DISCONNECTED, statusData));			}							p2pSession.removeEventListener(PeerMessageEvent.END_CALL, endCallHandler);						currentState="normal";			stopRing();			dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, event.message.sender.id));			dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, P2PSession.myUser.id));						videoSession.endSession();						this._globals.remoteUser = null;		}				public function rejectedCallHandler(event:PeerMessageEvent):void		{			p2pSession.removeEventListener(PeerMessageEvent.ACCEPTED_CALL, remoteAcceptedEventHandler);			p2pSession.removeEventListener(PeerMessageEvent.REJECTED_CALL, rejectedCallHandler);						if(currentState=="dialing")			{				currentState="normal";				stopRing();				dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, event.message.sender.id));			}						var statusData : UserStatusInfo  = null;			var callerId :String = event.message.sender.id;				var remoteUser :P2PUser = this._globals.p2pUsers[callerId];			if (remoteUser)			{				statusData = new UserStatusInfo(remoteUser);				dispatchEvent(new UserStatusEvent(UserStatusEvent.REJECTED, statusData));			}			else			{				Globals.LOG.error("Failed to locate user with id:", callerId);			}		}						public function acceptedCallHandler(event:PeerMessageEvent):void		{			if(currentState=="dialing")			{				currentState="active";								dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, event.message.sender.id));			}			}				/**		 * When we use placeCall we must wait for the user to send back the ACCEPTED_CALL event.  		 * This function handles the ACCEPTED_CALL event and starts the local video streams for		 * the user that initiated.		 */		private function remoteAcceptedEventHandler(event:PeerMessageEvent):void		{			p2pSession.removeEventListener(PeerMessageEvent.ACCEPTED_CALL, remoteAcceptedEventHandler);			p2pSession.removeEventListener(PeerMessageEvent.REJECTED_CALL, rejectedCallHandler);						p2pSession.addEventListener(PeerMessageEvent.END_CALL, endCallHandler,false,0,true);						var remoteUser :P2PUser = this._globals.p2pUsers[event.message.sender.id];			if (remoteUser)			{				var statusData : UserStatusInfo = new UserStatusInfo(remoteUser);				dispatchEvent(new UserStatusEvent(UserStatusEvent.ACCEPTED, statusData));			}					}				/**		 * Each P2PUser displayed is listening for INCOMING_CALL events, when one is received		 * this function is called by the P2PUser. The P2PUser provides the remotePeerID for the user		 * that's calling.  So we can now route the ACCEPTED_CALL message.		 */		private function acceptImcomingCall(remotePeerID:String):void		{				var selectedUsers:Vector.<String> = new Vector.<String>();						selectedUsers.push(remotePeerID);						p2pSession.sendCallEventToPeerIds(PeerMessageEvent.ACCEPTED_CALL, selectedUsers);								dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, remotePeerID));			p2pSession.addEventListener(PeerMessageEvent.END_CALL, endCallHandler,false,0,true);						var remoteUser :P2PUser = this._globals.p2pUsers[remotePeerID];			if (remoteUser)			{				var statusData : UserStatusInfo = new UserStatusInfo(remoteUser);				dispatchEvent(new UserStatusEvent(UserStatusEvent.ACCEPTED, statusData));			}		}				public function rejectIncomingCall(remotePeerID:String):void		{				if (this._globals.incomingCallFrom && this._globals.incomingCallFrom.id == remotePeerID)			{				this._globals.incomingCallFrom = null;			}									var selectedUsers:Vector.<String> = new Vector.<String>();						selectedUsers.push(remotePeerID);			p2pSession.sendCallEventToPeerIds(PeerMessageEvent.REJECTED_CALL, selectedUsers);					}						public function resetCallState(remotePeerID:String):void		{			currentState="normal";			this.stopRing();						dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, remotePeerID));		}				public function endCurrentCall(remotePeerID:String):void		{				if(remotePeerID==this.remotePeerID)			{					currentState="normal";				this.stopRing();								dispatchEvent(new StatusInfoEvent(StatusInfoEvent.CALL_STATUS_INFO, currentState, remotePeerID));								var len:uint = p2pSession.chatGroup.groupUserList.length;				var selectedUsers:Vector.<UserObject> = new Vector.<UserObject>();											for(var i:uint = 0; i<len;i++)				{					var user:UserObject = p2pSession.chatGroup.groupUserList[i];					if(user.id == remotePeerID)					{						selectedUsers.push(user);						p2pSession.sendCallEvent(PeerMessageEvent.END_CALL, selectedUsers);						break;					}				}								p2pSession.removeEventListener(PeerMessageEvent.END_CALL, endCallHandler);				videoSession.endSession();			}		}						private function ring():void		{				ringer = new Sound();						ringer.addEventListener("sampleData", ringTone);			ringerChannel = ringer.play();		}				private function stopRing():void		{			if (ringerChannel)			{				ringerChannel.stop();								ringer.removeEventListener("sampleData", ringTone);								ringer = null;				ringerChannel = null;			}		}				private function ringTone(event:SampleDataEvent):void		{				for (var c:int=0; c<8192; c++) 			{				var pos:Number = Number(c + event.position) / Number(6 * 44100);				var frac:Number = pos - int(pos);				var sample:Number;				if (frac < 0.066)				{					sample = 0.4 * Math.sin(2* Math.PI / (44100/784) * (Number(c + event.position)));				}				else if (frac < 0.333)				{					sample = 0.2 * (Math.sin(2* Math.PI / (44100/646) * (Number(c + event.position)))						+ Math.sin(2* Math.PI / (44100/672) * (Number(c + event.position)))						+ Math.sin(2* Math.PI / (44100/1034) * (Number(c + event.position)))						+ Math.sin(2* Math.PI / (44100/1060) * (Number(c + event.position))));				}				else				{					sample = 0;					}				event.data.writeFloat(sample);				event.data.writeFloat(sample);			}		}	}}