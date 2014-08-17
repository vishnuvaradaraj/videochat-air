
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
internal class _FriendListEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("primaryPhone", "realName", "bookmark", "peerId", "location", "emailAddress", "org", "photo", "id", "lastLogin", "nick", "updated", "created", "description", "age", "name", "owner", "gender");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("primaryPhone", "realName", "peerId", "lastLogin");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("primaryPhone", "realName", "bookmark", "peerId", "location", "emailAddress", "org", "photo", "id", "lastLogin", "nick", "updated", "created", "description", "age", "name", "owner", "gender");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("primaryPhone", "realName", "bookmark", "peerId", "location", "emailAddress", "org", "photo", "id", "lastLogin", "nick", "updated", "created", "description", "age", "name", "owner", "gender");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("primaryPhone", "realName", "bookmark", "peerId", "location", "emailAddress", "org", "photo", "id", "lastLogin", "nick", "updated", "created", "description", "age", "name", "owner", "gender");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "FriendList";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _primaryPhoneIsValid:Boolean;
    model_internal var _primaryPhoneValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _primaryPhoneIsValidCacheInitialized:Boolean = false;
    model_internal var _primaryPhoneValidationFailureMessages:Array;
    
    model_internal var _realNameIsValid:Boolean;
    model_internal var _realNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _realNameIsValidCacheInitialized:Boolean = false;
    model_internal var _realNameValidationFailureMessages:Array;
    
    model_internal var _peerIdIsValid:Boolean;
    model_internal var _peerIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _peerIdIsValidCacheInitialized:Boolean = false;
    model_internal var _peerIdValidationFailureMessages:Array;
    
    model_internal var _lastLoginIsValid:Boolean;
    model_internal var _lastLoginValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _lastLoginIsValidCacheInitialized:Boolean = false;
    model_internal var _lastLoginValidationFailureMessages:Array;

    model_internal var _instance:_Super_FriendList;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FriendListEntityMetadata(value : _Super_FriendList)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["primaryPhone"] = new Array();
            model_internal::dependentsOnMap["realName"] = new Array();
            model_internal::dependentsOnMap["bookmark"] = new Array();
            model_internal::dependentsOnMap["peerId"] = new Array();
            model_internal::dependentsOnMap["location"] = new Array();
            model_internal::dependentsOnMap["emailAddress"] = new Array();
            model_internal::dependentsOnMap["org"] = new Array();
            model_internal::dependentsOnMap["photo"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["lastLogin"] = new Array();
            model_internal::dependentsOnMap["nick"] = new Array();
            model_internal::dependentsOnMap["updated"] = new Array();
            model_internal::dependentsOnMap["created"] = new Array();
            model_internal::dependentsOnMap["description"] = new Array();
            model_internal::dependentsOnMap["age"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["owner"] = new Array();
            model_internal::dependentsOnMap["gender"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["primaryPhone"] = "String";
        model_internal::propertyTypeMap["realName"] = "String";
        model_internal::propertyTypeMap["bookmark"] = "String";
        model_internal::propertyTypeMap["peerId"] = "String";
        model_internal::propertyTypeMap["location"] = "String";
        model_internal::propertyTypeMap["emailAddress"] = "String";
        model_internal::propertyTypeMap["org"] = "String";
        model_internal::propertyTypeMap["photo"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["lastLogin"] = "String";
        model_internal::propertyTypeMap["nick"] = "String";
        model_internal::propertyTypeMap["updated"] = "String";
        model_internal::propertyTypeMap["created"] = "String";
        model_internal::propertyTypeMap["description"] = "String";
        model_internal::propertyTypeMap["age"] = "int";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["owner"] = "String";
        model_internal::propertyTypeMap["gender"] = "String";

        model_internal::_instance = value;
        model_internal::_primaryPhoneValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPrimaryPhone);
        model_internal::_primaryPhoneValidator.required = true;
        model_internal::_primaryPhoneValidator.requiredFieldError = "primaryPhone is required";
        //model_internal::_primaryPhoneValidator.source = model_internal::_instance;
        //model_internal::_primaryPhoneValidator.property = "primaryPhone";
        model_internal::_realNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRealName);
        model_internal::_realNameValidator.required = true;
        model_internal::_realNameValidator.requiredFieldError = "realName is required";
        //model_internal::_realNameValidator.source = model_internal::_instance;
        //model_internal::_realNameValidator.property = "realName";
        model_internal::_peerIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPeerId);
        model_internal::_peerIdValidator.required = true;
        model_internal::_peerIdValidator.requiredFieldError = "peerId is required";
        //model_internal::_peerIdValidator.source = model_internal::_instance;
        //model_internal::_peerIdValidator.property = "peerId";
        model_internal::_lastLoginValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLastLogin);
        model_internal::_lastLoginValidator.required = true;
        model_internal::_lastLoginValidator.requiredFieldError = "lastLogin is required";
        //model_internal::_lastLoginValidator.source = model_internal::_instance;
        //model_internal::_lastLoginValidator.property = "lastLogin";
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
            throw new Error(propertyName + " is not a data property of entity FriendList");
            
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
            throw new Error(propertyName + " is not a collection property of entity FriendList");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of FriendList");

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
            throw new Error(propertyName + " does not exist for entity FriendList");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity FriendList");
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
            throw new Error(propertyName + " does not exist for entity FriendList");
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
    public function get isPrimaryPhoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRealNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBookmarkAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPeerIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLocationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEmailAddressAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOrgAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPhotoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLastLoginAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNickAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdatedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreatedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescriptionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAgeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOwnerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGenderAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnPrimaryPhone():void
    {
        if (model_internal::_primaryPhoneIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPrimaryPhone = null;
            model_internal::calculatePrimaryPhoneIsValid();
        }
    }
    public function invalidateDependentOnRealName():void
    {
        if (model_internal::_realNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRealName = null;
            model_internal::calculateRealNameIsValid();
        }
    }
    public function invalidateDependentOnPeerId():void
    {
        if (model_internal::_peerIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPeerId = null;
            model_internal::calculatePeerIdIsValid();
        }
    }
    public function invalidateDependentOnLastLogin():void
    {
        if (model_internal::_lastLoginIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLastLogin = null;
            model_internal::calculateLastLoginIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get primaryPhoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get primaryPhoneValidator() : StyleValidator
    {
        return model_internal::_primaryPhoneValidator;
    }

    model_internal function set _primaryPhoneIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_primaryPhoneIsValid;         
        if (oldValue !== value)
        {
            model_internal::_primaryPhoneIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "primaryPhoneIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get primaryPhoneIsValid():Boolean
    {
        if (!model_internal::_primaryPhoneIsValidCacheInitialized)
        {
            model_internal::calculatePrimaryPhoneIsValid();
        }

        return model_internal::_primaryPhoneIsValid;
    }

    model_internal function calculatePrimaryPhoneIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_primaryPhoneValidator.validate(model_internal::_instance.primaryPhone)
        model_internal::_primaryPhoneIsValid_der = (valRes.results == null);
        model_internal::_primaryPhoneIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::primaryPhoneValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::primaryPhoneValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get primaryPhoneValidationFailureMessages():Array
    {
        if (model_internal::_primaryPhoneValidationFailureMessages == null)
            model_internal::calculatePrimaryPhoneIsValid();

        return _primaryPhoneValidationFailureMessages;
    }

    model_internal function set primaryPhoneValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_primaryPhoneValidationFailureMessages;

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
            model_internal::_primaryPhoneValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "primaryPhoneValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get realNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get realNameValidator() : StyleValidator
    {
        return model_internal::_realNameValidator;
    }

    model_internal function set _realNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_realNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_realNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "realNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get realNameIsValid():Boolean
    {
        if (!model_internal::_realNameIsValidCacheInitialized)
        {
            model_internal::calculateRealNameIsValid();
        }

        return model_internal::_realNameIsValid;
    }

    model_internal function calculateRealNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_realNameValidator.validate(model_internal::_instance.realName)
        model_internal::_realNameIsValid_der = (valRes.results == null);
        model_internal::_realNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::realNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::realNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get realNameValidationFailureMessages():Array
    {
        if (model_internal::_realNameValidationFailureMessages == null)
            model_internal::calculateRealNameIsValid();

        return _realNameValidationFailureMessages;
    }

    model_internal function set realNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_realNameValidationFailureMessages;

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
            model_internal::_realNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "realNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get bookmarkStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get peerIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get peerIdValidator() : StyleValidator
    {
        return model_internal::_peerIdValidator;
    }

    model_internal function set _peerIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_peerIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_peerIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peerIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get peerIdIsValid():Boolean
    {
        if (!model_internal::_peerIdIsValidCacheInitialized)
        {
            model_internal::calculatePeerIdIsValid();
        }

        return model_internal::_peerIdIsValid;
    }

    model_internal function calculatePeerIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_peerIdValidator.validate(model_internal::_instance.peerId)
        model_internal::_peerIdIsValid_der = (valRes.results == null);
        model_internal::_peerIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::peerIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::peerIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get peerIdValidationFailureMessages():Array
    {
        if (model_internal::_peerIdValidationFailureMessages == null)
            model_internal::calculatePeerIdIsValid();

        return _peerIdValidationFailureMessages;
    }

    model_internal function set peerIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_peerIdValidationFailureMessages;

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
            model_internal::_peerIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peerIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get locationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get emailAddressStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get orgStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get photoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get lastLoginStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get lastLoginValidator() : StyleValidator
    {
        return model_internal::_lastLoginValidator;
    }

    model_internal function set _lastLoginIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_lastLoginIsValid;         
        if (oldValue !== value)
        {
            model_internal::_lastLoginIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastLoginIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get lastLoginIsValid():Boolean
    {
        if (!model_internal::_lastLoginIsValidCacheInitialized)
        {
            model_internal::calculateLastLoginIsValid();
        }

        return model_internal::_lastLoginIsValid;
    }

    model_internal function calculateLastLoginIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_lastLoginValidator.validate(model_internal::_instance.lastLogin)
        model_internal::_lastLoginIsValid_der = (valRes.results == null);
        model_internal::_lastLoginIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::lastLoginValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::lastLoginValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get lastLoginValidationFailureMessages():Array
    {
        if (model_internal::_lastLoginValidationFailureMessages == null)
            model_internal::calculateLastLoginIsValid();

        return _lastLoginValidationFailureMessages;
    }

    model_internal function set lastLoginValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_lastLoginValidationFailureMessages;

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
            model_internal::_lastLoginValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastLoginValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nickStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get updatedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get createdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get descriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ownerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get genderStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("primaryPhone"):
            {
                return primaryPhoneValidationFailureMessages;
            }
            case("realName"):
            {
                return realNameValidationFailureMessages;
            }
            case("peerId"):
            {
                return peerIdValidationFailureMessages;
            }
            case("lastLogin"):
            {
                return lastLoginValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
