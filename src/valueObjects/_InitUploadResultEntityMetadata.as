
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
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _InitUploadResultEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("url", "uploadUrl", "id", "status", "fileUrl");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("url", "uploadUrl", "id", "fileUrl");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("url", "uploadUrl", "id", "status", "fileUrl");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("url", "uploadUrl", "id", "status", "fileUrl");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("url", "uploadUrl", "id", "status", "fileUrl");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "InitUploadResult";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _urlIsValid:Boolean;
    model_internal var _urlValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _urlIsValidCacheInitialized:Boolean = false;
    model_internal var _urlValidationFailureMessages:Array;
    
    model_internal var _uploadUrlIsValid:Boolean;
    model_internal var _uploadUrlValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _uploadUrlIsValidCacheInitialized:Boolean = false;
    model_internal var _uploadUrlValidationFailureMessages:Array;
    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _fileUrlIsValid:Boolean;
    model_internal var _fileUrlValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fileUrlIsValidCacheInitialized:Boolean = false;
    model_internal var _fileUrlValidationFailureMessages:Array;

    model_internal var _instance:_Super_InitUploadResult;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _InitUploadResultEntityMetadata(value : _Super_InitUploadResult)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["url"] = new Array();
            model_internal::dependentsOnMap["uploadUrl"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["fileUrl"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["url"] = "String";
        model_internal::propertyTypeMap["uploadUrl"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["status"] = "int";
        model_internal::propertyTypeMap["fileUrl"] = "String";

        model_internal::_instance = value;
        model_internal::_urlValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUrl);
        model_internal::_urlValidator.required = true;
        model_internal::_urlValidator.requiredFieldError = "url is required";
        //model_internal::_urlValidator.source = model_internal::_instance;
        //model_internal::_urlValidator.property = "url";
        model_internal::_uploadUrlValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUploadUrl);
        model_internal::_uploadUrlValidator.required = true;
        model_internal::_uploadUrlValidator.requiredFieldError = "uploadUrl is required";
        //model_internal::_uploadUrlValidator.source = model_internal::_instance;
        //model_internal::_uploadUrlValidator.property = "uploadUrl";
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_fileUrlValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFileUrl);
        model_internal::_fileUrlValidator.required = true;
        model_internal::_fileUrlValidator.requiredFieldError = "fileUrl is required";
        //model_internal::_fileUrlValidator.source = model_internal::_instance;
        //model_internal::_fileUrlValidator.property = "fileUrl";
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
            throw new Error(propertyName + " is not a data property of entity InitUploadResult");
            
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
            throw new Error(propertyName + " is not a collection property of entity InitUploadResult");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of InitUploadResult");

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
            throw new Error(propertyName + " does not exist for entity InitUploadResult");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity InitUploadResult");
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
            throw new Error(propertyName + " does not exist for entity InitUploadResult");
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
    public function get isUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUploadUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFileUrlAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnUrl():void
    {
        if (model_internal::_urlIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUrl = null;
            model_internal::calculateUrlIsValid();
        }
    }
    public function invalidateDependentOnUploadUrl():void
    {
        if (model_internal::_uploadUrlIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUploadUrl = null;
            model_internal::calculateUploadUrlIsValid();
        }
    }
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnFileUrl():void
    {
        if (model_internal::_fileUrlIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFileUrl = null;
            model_internal::calculateFileUrlIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get urlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get urlValidator() : StyleValidator
    {
        return model_internal::_urlValidator;
    }

    model_internal function set _urlIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_urlIsValid;         
        if (oldValue !== value)
        {
            model_internal::_urlIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "urlIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get urlIsValid():Boolean
    {
        if (!model_internal::_urlIsValidCacheInitialized)
        {
            model_internal::calculateUrlIsValid();
        }

        return model_internal::_urlIsValid;
    }

    model_internal function calculateUrlIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_urlValidator.validate(model_internal::_instance.url)
        model_internal::_urlIsValid_der = (valRes.results == null);
        model_internal::_urlIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::urlValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::urlValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get urlValidationFailureMessages():Array
    {
        if (model_internal::_urlValidationFailureMessages == null)
            model_internal::calculateUrlIsValid();

        return _urlValidationFailureMessages;
    }

    model_internal function set urlValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_urlValidationFailureMessages;

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
            model_internal::_urlValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "urlValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get uploadUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get uploadUrlValidator() : StyleValidator
    {
        return model_internal::_uploadUrlValidator;
    }

    model_internal function set _uploadUrlIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_uploadUrlIsValid;         
        if (oldValue !== value)
        {
            model_internal::_uploadUrlIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uploadUrlIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get uploadUrlIsValid():Boolean
    {
        if (!model_internal::_uploadUrlIsValidCacheInitialized)
        {
            model_internal::calculateUploadUrlIsValid();
        }

        return model_internal::_uploadUrlIsValid;
    }

    model_internal function calculateUploadUrlIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_uploadUrlValidator.validate(model_internal::_instance.uploadUrl)
        model_internal::_uploadUrlIsValid_der = (valRes.results == null);
        model_internal::_uploadUrlIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::uploadUrlValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::uploadUrlValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get uploadUrlValidationFailureMessages():Array
    {
        if (model_internal::_uploadUrlValidationFailureMessages == null)
            model_internal::calculateUploadUrlIsValid();

        return _uploadUrlValidationFailureMessages;
    }

    model_internal function set uploadUrlValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_uploadUrlValidationFailureMessages;

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
            model_internal::_uploadUrlValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uploadUrlValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

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
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get fileUrlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fileUrlValidator() : StyleValidator
    {
        return model_internal::_fileUrlValidator;
    }

    model_internal function set _fileUrlIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fileUrlIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fileUrlIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fileUrlIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fileUrlIsValid():Boolean
    {
        if (!model_internal::_fileUrlIsValidCacheInitialized)
        {
            model_internal::calculateFileUrlIsValid();
        }

        return model_internal::_fileUrlIsValid;
    }

    model_internal function calculateFileUrlIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fileUrlValidator.validate(model_internal::_instance.fileUrl)
        model_internal::_fileUrlIsValid_der = (valRes.results == null);
        model_internal::_fileUrlIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fileUrlValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fileUrlValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fileUrlValidationFailureMessages():Array
    {
        if (model_internal::_fileUrlValidationFailureMessages == null)
            model_internal::calculateFileUrlIsValid();

        return _fileUrlValidationFailureMessages;
    }

    model_internal function set fileUrlValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fileUrlValidationFailureMessages;

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
            model_internal::_fileUrlValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fileUrlValidationFailureMessages", oldValue, value));
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
            case("url"):
            {
                return urlValidationFailureMessages;
            }
            case("uploadUrl"):
            {
                return uploadUrlValidationFailureMessages;
            }
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("fileUrl"):
            {
                return fileUrlValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
