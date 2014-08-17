/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - Parabay.as.
 */
package services.parabay
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;
import valueObjects.InitUploadResult;
import valueObjects.ListBuddyResult;
import valueObjects.ListFriendsResult;
import valueObjects.ListGroupResult;
import valueObjects.LoginUserResult;
import valueObjects.RegisterUserResult;
import valueObjects.SaveDataResult;
import valueObjects.StatusResult;
import valueObjects.UpdatePeerResult;
import valueObjects.UserDetailsResult;

import com.adobe.serializers.json.JSONSerializationFilter;
import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_Parabay extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();
    private static var serializer1:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_Parabay()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService("http://parabaydemo.appspot.com");
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "loginUser");
         operation.url = "/api/login";
         operation.method = "POST";
         argsArray = new Array("username","password","friend");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.LoginUserResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "logoutUser");
         operation.url = "/api/logout";
         operation.method = "POST";
         argsArray = new Array("token");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "registerUser");
         operation.url = "/api/register_user";
         operation.method = "POST";
         argsArray = new Array("user","app");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.RegisterUserResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "forgotPassword");
         operation.url = "/api/forgot_password";
         operation.method = "POST";
         argsArray = new Array("email");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "deleteUser");
         operation.url = "/api/delete_user";
         operation.method = "POST";
         argsArray = new Array("token");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "listFriends");
         operation.url = "/api/list/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","query","bookmark");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.ListFriendsResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "saveFriend");
         operation.url = "/api/save/ParabayOrg-Friends/Friends_User";
         operation.method = "POST";
         argsArray = new Array("token","data");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.SaveDataResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "listQueue");
         operation.url = "/api/list/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","query","bookmark");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.ListGroupResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "saveQueue");
         operation.url = "/api/save/ParabayOrg-Friends/Friends_Queue";
         operation.method = "POST";
         argsArray = new Array("token","data");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.SaveDataResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "listBuddies");
         operation.url = "/api/list/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","query","bookmark");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.ListBuddyResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "saveBuddy");
         operation.url = "/api/save/ParabayOrg-Friends/Friends_Buddy";
         operation.method = "POST";
         argsArray = new Array("token","data");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.SaveDataResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "listGroups");
         operation.url = "/api/list/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","query");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.ListGroupResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "saveGroup");
         operation.url = "/api/save/ParabayOrg-Friends/Friends_Group";
         operation.method = "POST";
         argsArray = new Array("token","data");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.SaveDataResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "checkUserID");
         operation.url = "/api/check_userid";
         operation.method = "POST";
         argsArray = new Array("userid");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "initUpload");
         operation.url = "/assets/init_upload/ParabayOrg-Friends";
         operation.method = "GET";
         argsArray = new Array("token");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.InitUploadResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "updatePeerId");
         operation.url = "/api/update_peer/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","peerId");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.UpdatePeerResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "submitFeedback");
         operation.url = "/api/submit_feedback/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","msgtype","message","target");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "approveUser");
         operation.url = "/api/approve_user/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","nick","approved");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "fixupData");
         operation.url = "/api/fixup/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "saveStats");
         operation.url = "/api/save_user_stats";
         operation.method = "POST";
         argsArray = new Array("stats","app","token");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.StatusResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "userDetails");
         operation.url = "/api/user_details/ParabayOrg-Friends";
         operation.method = "POST";
         argsArray = new Array("token","nick");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.UserDetailsResult;
         operations.push(operation);

         _serviceControl.operationList = operations;  


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'loginUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function loginUser(username:String, password:String, friend:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("loginUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username,password,friend) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'logoutUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function logoutUser(token:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("logoutUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'registerUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function registerUser(user:String, app:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("registerUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(user,app) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'forgotPassword' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function forgotPassword(email:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("forgotPassword");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(email) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'deleteUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function deleteUser(token:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("deleteUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listFriends' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listFriends(token:String, query:String, bookmark:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listFriends");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,query,bookmark) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'saveFriend' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function saveFriend(token:String, data:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("saveFriend");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,data) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listQueue' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listQueue(token:String, query:String, bookmark:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listQueue");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,query,bookmark) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'saveQueue' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function saveQueue(token:String, data:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("saveQueue");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,data) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listBuddies' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listBuddies(token:String, query:String, bookmark:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listBuddies");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,query,bookmark) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'saveBuddy' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function saveBuddy(token:String, data:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("saveBuddy");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,data) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'listGroups' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function listGroups(token:String, query:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("listGroups");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,query) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'saveGroup' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function saveGroup(token:String, data:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("saveGroup");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,data) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'checkUserID' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function checkUserID(userid:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("checkUserID");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(userid) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'initUpload' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function initUpload(token:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("initUpload");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updatePeerId' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updatePeerId(token:String, peerId:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updatePeerId");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,peerId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'submitFeedback' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function submitFeedback(token:String, msgtype:String, message:String, target:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("submitFeedback");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,msgtype,message,target) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'approveUser' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function approveUser(token:String, nick:String, approved:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("approveUser");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,nick,approved) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'fixupData' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function fixupData(token:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("fixupData");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'saveStats' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function saveStats(stats:String, app:String, token:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("saveStats");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(stats,app,token) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'userDetails' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function userDetails(token:String, nick:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("userDetails");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(token,nick) ;
        return _internal_token;
    }
     
}

}
