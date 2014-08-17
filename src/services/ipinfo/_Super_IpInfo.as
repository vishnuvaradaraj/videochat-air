/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - IpInfo.as.
 */
package services.ipinfo
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;
import valueObjects.GeonamesResult;
import valueObjects.IpInfoResult;

import com.adobe.serializers.json.JSONSerializationFilter;
import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_IpInfo extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();
    private static var serializer1:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_IpInfo()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService();
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "lookupIpInfo");
         operation.url = "http://api.ipinfodb.com/v2/ip_query.php";
         operation.method = "GET";
         argsArray = new Array("key","ip","timezone","output");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.resultType = valueObjects.IpInfoResult;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "lookupLocation");
         operation.url = "http://ws.geonames.org/findNearbyPlaceName";
         operation.method = "GET";
         argsArray = new Array("lat","lng");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.GeonamesResult;
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
      * This method is a generated wrapper used to call the 'lookupIpInfo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function lookupIpInfo(key:String, ip:String, timezone:String, output:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("lookupIpInfo");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(key,ip,timezone,output) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'lookupLocation' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function lookupLocation(lat:String, lng:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("lookupLocation");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(lat,lng) ;
        return _internal_token;
    }
     
}

}
