
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
internal class _BuddyDataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id", "tags", "bookmark", "nick", "created", "updated", "name", "owner", "secret", "org", "photo");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id", "tags", "bookmark", "nick", "created", "updated", "name", "owner", "secret", "org", "photo");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id", "tags", "bookmark", "nick", "created", "updated", "name", "owner", "secret", "org", "photo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id", "tags", "bookmark", "nick", "created", "updated", "name", "owner", "secret", "org", "photo");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("id", "tags", "bookmark", "nick", "created", "updated", "name", "owner", "secret", "org", "photo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "BuddyData";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _tagsIsValid:Boolean;
    model_internal var _tagsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tagsIsValidCacheInitialized:Boolean = false;
    model_internal var _tagsValidationFailureMessages:Array;
    
    model_internal var _bookmarkIsValid:Boolean;
    model_internal var _bookmarkValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _bookmarkIsValidCacheInitialized:Boolean = false;
    model_internal var _bookmarkValidationFailureMessages:Array;
    
    model_internal var _nickIsValid:Boolean;
    model_internal var _nickValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nickIsValidCacheInitialized:Boolean = false;
    model_internal var _nickValidationFailureMessages:Array;
    
    model_internal var _createdIsValid:Boolean;
    model_internal var _createdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _createdIsValidCacheInitialized:Boolean = false;
    model_internal var _createdValidationFailureMessages:Array;
    
    model_internal var _updatedIsValid:Boolean;
    model_internal var _updatedValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updatedIsValidCacheInitialized:Boolean = false;
    model_internal var _updatedValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _ownerIsValid:Boolean;
    model_internal var _ownerValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ownerIsValidCacheInitialized:Boolean = false;
    model_internal var _ownerValidationFailureMessages:Array;
    
    model_internal var _secretIsValid:Boolean;
    model_internal var _secretValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _secretIsValidCacheInitialized:Boolean = false;
    model_internal var _secretValidationFailureMessages:Array;
    
    model_internal var _orgIsValid:Boolean;
    model_internal var _orgValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _orgIsValidCacheInitialized:Boolean = false;
    model_internal var _orgValidationFailureMessages:Array;
    
    model_internal var _photoIsValid:Boolean;
    model_internal var _photoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _photoIsValidCacheInitialized:Boolean = false;
    model_internal var _photoValidationFailureMessages:Array;

    model_internal var _instance:_Super_BuddyData;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _BuddyDataEntityMetadata(value : _Super_BuddyData)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["tags"] = new Array();
            model_internal::dependentsOnMap["bookmark"] = new Array();
            model_internal::dependentsOnMap["nick"] = new Array();
            model_internal::dependentsOnMap["created"] = new Array();
            model_internal::dependentsOnMap["updated"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["owner"] = new Array();
            model_internal::dependentsOnMap["secret"] = new Array();
            model_internal::dependentsOnMap["org"] = new Array();
            model_internal::dependentsOnMap["photo"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["tags"] = "String";
        model_internal::propertyTypeMap["bookmark"] = "String";
        model_internal::propertyTypeMap["nick"] = "String";
        model_internal::propertyTypeMap["created"] = "String";
        model_internal::propertyTypeMap["updated"] = "String";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["owner"] = "String";
        model_internal::propertyTypeMap["secret"] = "String";
        model_internal::propertyTypeMap["org"] = "String";
        model_internal::propertyTypeMap["photo"] = "String";

        model_internal::_instance = value;
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_tagsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTags);
        model_internal::_tagsValidator.required = true;
        model_internal::_tagsValidator.requiredFieldError = "tags is required";
        //model_internal::_tagsValidator.source = model_internal::_instance;
        //model_internal::_tagsValidator.property = "tags";
        model_internal::_bookmarkValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBookmark);
        model_internal::_bookmarkValidator.required = true;
        model_internal::_bookmarkValidator.requiredFieldError = "bookmark is required";
        //model_internal::_bookmarkValidator.source = model_internal::_instance;
        //model_internal::_bookmarkValidator.property = "bookmark";
        model_internal::_nickValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNick);
        model_internal::_nickValidator.required = true;
        model_internal::_nickValidator.requiredFieldError = "nick is required";
        //model_internal::_nickValidator.source = model_internal::_instance;
        //model_internal::_nickValidator.property = "nick";
        model_internal::_createdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCreated);
        model_internal::_createdValidator.required = true;
        model_internal::_createdValidator.requiredFieldError = "created is required";
        //model_internal::_createdValidator.source = model_internal::_instance;
        //model_internal::_createdValidator.property = "created";
        model_internal::_updatedValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated);
        model_internal::_updatedValidator.required = true;
        model_internal::_updatedValidator.requiredFieldError = "updated is required";
        //model_internal::_updatedValidator.source = model_internal::_instance;
        //model_internal::_updatedValidator.property = "updated";
        model_internal::_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForName);
        model_internal::_nameValidator.required = true;
        model_internal::_nameValidator.requiredFieldError = "name is required";
        //model_internal::_nameValidator.source = model_internal::_instance;
        //model_internal::_nameValidator.property = "name";
        model_internal::_ownerValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOwner);
        model_internal::_ownerValidator.required = true;
        model_internal::_ownerValidator.requiredFieldError = "owner is required";
        //model_internal::_ownerValidator.source = model_internal::_instance;
        //model_internal::_ownerValidator.property = "owner";
        model_internal::_secretValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSecret);
        model_internal::_secretValidator.required = true;
        model_internal::_secretValidator.requiredFieldError = "secret is required";
        //model_internal::_secretValidator.source = model_internal::_instance;
        //model_internal::_secretValidator.property = "secret";
        model_internal::_orgValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOrg);
        model_internal::_orgValidator.required = true;
        model_internal::_orgValidator.requiredFieldError = "org is required";
        //model_internal::_orgValidator.source = model_internal::_instance;
        //model_internal::_orgValidator.property = "org";
        model_internal::_photoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPhoto);
        model_internal::_photoValidator.required = true;
        model_internal::_photoValidator.requiredFieldError = "photo is required";
        //model_internal::_photoValidator.source = model_internal::_instance;
        //model_internal::_photoValidator.property = "photo";
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
            throw new Error(propertyName + " is not a data property of entity BuddyData");
            
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
            throw new Error(propertyName + " is not a collection property of entity BuddyData");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of BuddyData");

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
            throw new Error(propertyName + " does not exist for entity BuddyData");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity BuddyData");
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
            throw new Error(propertyName + " does not exist for entity BuddyData");
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
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTagsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBookmarkAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNickAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreatedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdatedAvailable():Boolean
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
    public function get isSecretAvailable():Boolean
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


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnTags():void
    {
        if (model_internal::_tagsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTags = null;
            model_internal::calculateTagsIsValid();
        }
    }
    public function invalidateDependentOnBookmark():void
    {
        if (model_internal::_bookmarkIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBookmark = null;
            model_internal::calculateBookmarkIsValid();
        }
    }
    public function invalidateDependentOnNick():void
    {
        if (model_internal::_nickIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNick = null;
            model_internal::calculateNickIsValid();
        }
    }
    public function invalidateDependentOnCreated():void
    {
        if (model_internal::_createdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCreated = null;
            model_internal::calculateCreatedIsValid();
        }
    }
    public function invalidateDependentOnUpdated():void
    {
        if (model_internal::_updatedIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdated = null;
            model_internal::calculateUpdatedIsValid();
        }
    }
    public function invalidateDependentOnName():void
    {
        if (model_internal::_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfName = null;
            model_internal::calculateNameIsValid();
        }
    }
    public function invalidateDependentOnOwner():void
    {
        if (model_internal::_ownerIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOwner = null;
            model_internal::calculateOwnerIsValid();
        }
    }
    public function invalidateDependentOnSecret():void
    {
        if (model_internal::_secretIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSecret = null;
            model_internal::calculateSecretIsValid();
        }
    }
    public function invalidateDependentOnOrg():void
    {
        if (model_internal::_orgIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOrg = null;
            model_internal::calculateOrgIsValid();
        }
    }
    public function invalidateDependentOnPhoto():void
    {
        if (model_internal::_photoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPhoto = null;
            model_internal::calculatePhotoIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
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
    public function get tagsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tagsValidator() : StyleValidator
    {
        return model_internal::_tagsValidator;
    }

    model_internal function set _tagsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tagsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tagsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tagsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tagsIsValid():Boolean
    {
        if (!model_internal::_tagsIsValidCacheInitialized)
        {
            model_internal::calculateTagsIsValid();
        }

        return model_internal::_tagsIsValid;
    }

    model_internal function calculateTagsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tagsValidator.validate(model_internal::_instance.tags)
        model_internal::_tagsIsValid_der = (valRes.results == null);
        model_internal::_tagsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tagsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tagsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tagsValidationFailureMessages():Array
    {
        if (model_internal::_tagsValidationFailureMessages == null)
            model_internal::calculateTagsIsValid();

        return _tagsValidationFailureMessages;
    }

    model_internal function set tagsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tagsValidationFailureMessages;

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
            model_internal::_tagsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tagsValidationFailureMessages", oldValue, value));
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

    public function get bookmarkValidator() : StyleValidator
    {
        return model_internal::_bookmarkValidator;
    }

    model_internal function set _bookmarkIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_bookmarkIsValid;         
        if (oldValue !== value)
        {
            model_internal::_bookmarkIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bookmarkIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get bookmarkIsValid():Boolean
    {
        if (!model_internal::_bookmarkIsValidCacheInitialized)
        {
            model_internal::calculateBookmarkIsValid();
        }

        return model_internal::_bookmarkIsValid;
    }

    model_internal function calculateBookmarkIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_bookmarkValidator.validate(model_internal::_instance.bookmark)
        model_internal::_bookmarkIsValid_der = (valRes.results == null);
        model_internal::_bookmarkIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::bookmarkValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::bookmarkValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get bookmarkValidationFailureMessages():Array
    {
        if (model_internal::_bookmarkValidationFailureMessages == null)
            model_internal::calculateBookmarkIsValid();

        return _bookmarkValidationFailureMessages;
    }

    model_internal function set bookmarkValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_bookmarkValidationFailureMessages;

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
            model_internal::_bookmarkValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bookmarkValidationFailureMessages", oldValue, value));
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

    public function get nickValidator() : StyleValidator
    {
        return model_internal::_nickValidator;
    }

    model_internal function set _nickIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nickIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nickIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nickIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nickIsValid():Boolean
    {
        if (!model_internal::_nickIsValidCacheInitialized)
        {
            model_internal::calculateNickIsValid();
        }

        return model_internal::_nickIsValid;
    }

    model_internal function calculateNickIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nickValidator.validate(model_internal::_instance.nick)
        model_internal::_nickIsValid_der = (valRes.results == null);
        model_internal::_nickIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nickValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nickValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nickValidationFailureMessages():Array
    {
        if (model_internal::_nickValidationFailureMessages == null)
            model_internal::calculateNickIsValid();

        return _nickValidationFailureMessages;
    }

    model_internal function set nickValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nickValidationFailureMessages;

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
            model_internal::_nickValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nickValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get createdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get createdValidator() : StyleValidator
    {
        return model_internal::_createdValidator;
    }

    model_internal function set _createdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_createdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_createdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "createdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get createdIsValid():Boolean
    {
        if (!model_internal::_createdIsValidCacheInitialized)
        {
            model_internal::calculateCreatedIsValid();
        }

        return model_internal::_createdIsValid;
    }

    model_internal function calculateCreatedIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_createdValidator.validate(model_internal::_instance.created)
        model_internal::_createdIsValid_der = (valRes.results == null);
        model_internal::_createdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::createdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::createdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get createdValidationFailureMessages():Array
    {
        if (model_internal::_createdValidationFailureMessages == null)
            model_internal::calculateCreatedIsValid();

        return _createdValidationFailureMessages;
    }

    model_internal function set createdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_createdValidationFailureMessages;

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
            model_internal::_createdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "createdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get updatedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get updatedValidator() : StyleValidator
    {
        return model_internal::_updatedValidator;
    }

    model_internal function set _updatedIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_updatedIsValid;         
        if (oldValue !== value)
        {
            model_internal::_updatedIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updatedIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get updatedIsValid():Boolean
    {
        if (!model_internal::_updatedIsValidCacheInitialized)
        {
            model_internal::calculateUpdatedIsValid();
        }

        return model_internal::_updatedIsValid;
    }

    model_internal function calculateUpdatedIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_updatedValidator.validate(model_internal::_instance.updated)
        model_internal::_updatedIsValid_der = (valRes.results == null);
        model_internal::_updatedIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::updatedValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::updatedValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get updatedValidationFailureMessages():Array
    {
        if (model_internal::_updatedValidationFailureMessages == null)
            model_internal::calculateUpdatedIsValid();

        return _updatedValidationFailureMessages;
    }

    model_internal function set updatedValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_updatedValidationFailureMessages;

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
            model_internal::_updatedValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updatedValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nameValidator() : StyleValidator
    {
        return model_internal::_nameValidator;
    }

    model_internal function set _nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nameIsValid():Boolean
    {
        if (!model_internal::_nameIsValidCacheInitialized)
        {
            model_internal::calculateNameIsValid();
        }

        return model_internal::_nameIsValid;
    }

    model_internal function calculateNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nameValidator.validate(model_internal::_instance.name)
        model_internal::_nameIsValid_der = (valRes.results == null);
        model_internal::_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nameValidationFailureMessages():Array
    {
        if (model_internal::_nameValidationFailureMessages == null)
            model_internal::calculateNameIsValid();

        return _nameValidationFailureMessages;
    }

    model_internal function set nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nameValidationFailureMessages;

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
            model_internal::_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ownerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ownerValidator() : StyleValidator
    {
        return model_internal::_ownerValidator;
    }

    model_internal function set _ownerIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ownerIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ownerIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ownerIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ownerIsValid():Boolean
    {
        if (!model_internal::_ownerIsValidCacheInitialized)
        {
            model_internal::calculateOwnerIsValid();
        }

        return model_internal::_ownerIsValid;
    }

    model_internal function calculateOwnerIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ownerValidator.validate(model_internal::_instance.owner)
        model_internal::_ownerIsValid_der = (valRes.results == null);
        model_internal::_ownerIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ownerValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ownerValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ownerValidationFailureMessages():Array
    {
        if (model_internal::_ownerValidationFailureMessages == null)
            model_internal::calculateOwnerIsValid();

        return _ownerValidationFailureMessages;
    }

    model_internal function set ownerValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ownerValidationFailureMessages;

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
            model_internal::_ownerValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ownerValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get secretStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get secretValidator() : StyleValidator
    {
        return model_internal::_secretValidator;
    }

    model_internal function set _secretIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_secretIsValid;         
        if (oldValue !== value)
        {
            model_internal::_secretIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "secretIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get secretIsValid():Boolean
    {
        if (!model_internal::_secretIsValidCacheInitialized)
        {
            model_internal::calculateSecretIsValid();
        }

        return model_internal::_secretIsValid;
    }

    model_internal function calculateSecretIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_secretValidator.validate(model_internal::_instance.secret)
        model_internal::_secretIsValid_der = (valRes.results == null);
        model_internal::_secretIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::secretValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::secretValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get secretValidationFailureMessages():Array
    {
        if (model_internal::_secretValidationFailureMessages == null)
            model_internal::calculateSecretIsValid();

        return _secretValidationFailureMessages;
    }

    model_internal function set secretValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_secretValidationFailureMessages;

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
            model_internal::_secretValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "secretValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get orgStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get orgValidator() : StyleValidator
    {
        return model_internal::_orgValidator;
    }

    model_internal function set _orgIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_orgIsValid;         
        if (oldValue !== value)
        {
            model_internal::_orgIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orgIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get orgIsValid():Boolean
    {
        if (!model_internal::_orgIsValidCacheInitialized)
        {
            model_internal::calculateOrgIsValid();
        }

        return model_internal::_orgIsValid;
    }

    model_internal function calculateOrgIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_orgValidator.validate(model_internal::_instance.org)
        model_internal::_orgIsValid_der = (valRes.results == null);
        model_internal::_orgIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::orgValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::orgValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get orgValidationFailureMessages():Array
    {
        if (model_internal::_orgValidationFailureMessages == null)
            model_internal::calculateOrgIsValid();

        return _orgValidationFailureMessages;
    }

    model_internal function set orgValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_orgValidationFailureMessages;

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
            model_internal::_orgValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orgValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get photoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get photoValidator() : StyleValidator
    {
        return model_internal::_photoValidator;
    }

    model_internal function set _photoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_photoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_photoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get photoIsValid():Boolean
    {
        if (!model_internal::_photoIsValidCacheInitialized)
        {
            model_internal::calculatePhotoIsValid();
        }

        return model_internal::_photoIsValid;
    }

    model_internal function calculatePhotoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_photoValidator.validate(model_internal::_instance.photo)
        model_internal::_photoIsValid_der = (valRes.results == null);
        model_internal::_photoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::photoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::photoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get photoValidationFailureMessages():Array
    {
        if (model_internal::_photoValidationFailureMessages == null)
            model_internal::calculatePhotoIsValid();

        return _photoValidationFailureMessages;
    }

    model_internal function set photoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_photoValidationFailureMessages;

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
            model_internal::_photoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photoValidationFailureMessages", oldValue, value));
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
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("tags"):
            {
                return tagsValidationFailureMessages;
            }
            case("bookmark"):
            {
                return bookmarkValidationFailureMessages;
            }
            case("nick"):
            {
                return nickValidationFailureMessages;
            }
            case("created"):
            {
                return createdValidationFailureMessages;
            }
            case("updated"):
            {
                return updatedValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("owner"):
            {
                return ownerValidationFailureMessages;
            }
            case("secret"):
            {
                return secretValidationFailureMessages;
            }
            case("org"):
            {
                return orgValidationFailureMessages;
            }
            case("photo"):
            {
                return photoValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
