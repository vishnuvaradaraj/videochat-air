
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import valueObjects.QueueData;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ListQueueResultEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("sync_token", "count", "status", "data");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("sync_token", "count", "status", "data");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("sync_token", "count", "status", "data");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("sync_token", "count", "status", "data");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("sync_token", "count", "status", "data");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("data");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ListQueueResult";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _sync_tokenIsValid:Boolean;
    model_internal var _sync_tokenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sync_tokenIsValidCacheInitialized:Boolean = false;
    model_internal var _sync_tokenValidationFailureMessages:Array;
    
    model_internal var _dataIsValid:Boolean;
    model_internal var _dataValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dataIsValidCacheInitialized:Boolean = false;
    model_internal var _dataValidationFailureMessages:Array;

    model_internal var _instance:_Super_ListQueueResult;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ListQueueResultEntityMetadata(value : _Super_ListQueueResult)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["sync_token"] = new Array();
            model_internal::dependentsOnMap["count"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["data"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["data"] = "valueObjects.QueueData";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["sync_token"] = "String";
        model_internal::propertyTypeMap["count"] = "int";
        model_internal::propertyTypeMap["status"] = "int";
        model_internal::propertyTypeMap["data"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_sync_tokenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSync_token);
        model_internal::_sync_tokenValidator.required = true;
        model_internal::_sync_tokenValidator.requiredFieldError = "sync_token is required";
        //model_internal::_sync_tokenValidator.source = model_internal::_instance;
        //model_internal::_sync_tokenValidator.property = "sync_token";
        model_internal::_dataValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForData);
        model_internal::_dataValidator.required = true;
        model_internal::_dataValidator.requiredFieldError = "data is required";
        //model_internal::_dataValidator.source = model_internal::_instance;
        //model_internal::_dataValidator.property = "data";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity ListQueueResult");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity ListQueueResult");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ListQueueResult");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ListQueueResult");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ListQueueResult");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ListQueueResult");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isSync_tokenAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCountAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDataAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnSync_token():void
    {
        if (model_internal::_sync_tokenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSync_token = null;
            model_internal::calculateSync_tokenIsValid();
        }
    }
    public function invalidateDependentOnData():void
    {
        if (model_internal::_dataIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfData = null;
            model_internal::calculateDataIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get sync_tokenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sync_tokenValidator() : StyleValidator
    {
        return model_internal::_sync_tokenValidator;
    }

    model_internal function set _sync_tokenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sync_tokenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sync_tokenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sync_tokenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sync_tokenIsValid():Boolean
    {
        if (!model_internal::_sync_tokenIsValidCacheInitialized)
        {
            model_internal::calculateSync_tokenIsValid();
        }

        return model_internal::_sync_tokenIsValid;
    }

    model_internal function calculateSync_tokenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sync_tokenValidator.validate(model_internal::_instance.sync_token)
        model_internal::_sync_tokenIsValid_der = (valRes.results == null);
        model_internal::_sync_tokenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sync_tokenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sync_tokenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sync_tokenValidationFailureMessages():Array
    {
        if (model_internal::_sync_tokenValidationFailureMessages == null)
            model_internal::calculateSync_tokenIsValid();

        return _sync_tokenValidationFailureMessages;
    }

    model_internal function set sync_tokenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sync_tokenValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_sync_tokenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sync_tokenValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get countStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get dataStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dataValidator() : StyleValidator
    {
        return model_internal::_dataValidator;
    }

    model_internal function set _dataIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dataIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dataIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dataIsValid():Boolean
    {
        if (!model_internal::_dataIsValidCacheInitialized)
        {
            model_internal::calculateDataIsValid();
        }

        return model_internal::_dataIsValid;
    }

    model_internal function calculateDataIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dataValidator.validate(model_internal::_instance.data)
        model_internal::_dataIsValid_der = (valRes.results == null);
        model_internal::_dataIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dataValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dataValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dataValidationFailureMessages():Array
    {
        if (model_internal::_dataValidationFailureMessages == null)
            model_internal::calculateDataIsValid();

        return _dataValidationFailureMessages;
    }

    model_internal function set dataValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dataValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_dataValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("sync_token"):
            {
                return sync_tokenValidationFailureMessages;
            }
            case("data"):
            {
                return dataValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
