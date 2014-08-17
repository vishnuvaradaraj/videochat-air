
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
internal class _GroupDataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("groupId", "nick", "description", "tags", "sourcePhoto", "bookmark", "location", "itemType", "targetUser", "org", "id", "updated", "created", "isPrivate", "name", "owner", "secret", "comments");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("groupId", "nick", "description", "tags", "sourcePhoto", "location", "itemType", "targetUser", "isPrivate", "comments");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("groupId", "nick", "description", "tags", "sourcePhoto", "bookmark", "location", "itemType", "targetUser", "org", "id", "updated", "created", "isPrivate", "name", "owner", "secret", "comments");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("groupId", "nick", "description", "tags", "sourcePhoto", "bookmark", "location", "itemType", "targetUser", "org", "id", "updated", "created", "isPrivate", "name", "owner", "secret", "comments");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("groupId", "nick", "description", "tags", "sourcePhoto", "bookmark", "location", "itemType", "targetUser", "org", "id", "updated", "created", "isPrivate", "name", "owner", "secret", "comments");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "GroupData";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _groupIdIsValid:Boolean;
    model_internal var _groupIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _groupIdIsValidCacheInitialized:Boolean = false;
    model_internal var _groupIdValidationFailureMessages:Array;
    
    model_internal var _nickIsValid:Boolean;
    model_internal var _nickValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nickIsValidCacheInitialized:Boolean = false;
    model_internal var _nickValidationFailureMessages:Array;
    
    model_internal var _descriptionIsValid:Boolean;
    model_internal var _descriptionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descriptionIsValidCacheInitialized:Boolean = false;
    model_internal var _descriptionValidationFailureMessages:Array;
    
    model_internal var _tagsIsValid:Boolean;
    model_internal var _tagsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tagsIsValidCacheInitialized:Boolean = false;
    model_internal var _tagsValidationFailureMessages:Array;
    
    model_internal var _sourcePhotoIsValid:Boolean;
    model_internal var _sourcePhotoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sourcePhotoIsValidCacheInitialized:Boolean = false;
    model_internal var _sourcePhotoValidationFailureMessages:Array;
    
    model_internal var _locationIsValid:Boolean;
    model_internal var _locationValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _locationIsValidCacheInitialized:Boolean = false;
    model_internal var _locationValidationFailureMessages:Array;
    
    model_internal var _itemTypeIsValid:Boolean;
    model_internal var _itemTypeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _itemTypeIsValidCacheInitialized:Boolean = false;
    model_internal var _itemTypeValidationFailureMessages:Array;
    
    model_internal var _targetUserIsValid:Boolean;
    model_internal var _targetUserValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _targetUserIsValidCacheInitialized:Boolean = false;
    model_internal var _targetUserValidationFailureMessages:Array;
    
    model_internal var _isPrivateIsValid:Boolean;
    model_internal var _isPrivateValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _isPrivateIsValidCacheInitialized:Boolean = false;
    model_internal var _isPrivateValidationFailureMessages:Array;
    
    model_internal var _commentsIsValid:Boolean;
    model_internal var _commentsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _commentsIsValidCacheInitialized:Boolean = false;
    model_internal var _commentsValidationFailureMessages:Array;

    model_internal var _instance:_Super_GroupData;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _GroupDataEntityMetadata(value : _Super_GroupData)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["groupId"] = new Array();
            model_internal::dependentsOnMap["nick"] = new Array();
            model_internal::dependentsOnMap["description"] = new Array();
            model_internal::dependentsOnMap["tags"] = new Array();
            model_internal::dependentsOnMap["sourcePhoto"] = new Array();
            model_internal::dependentsOnMap["bookmark"] = new Array();
            model_internal::dependentsOnMap["location"] = new Array();
            model_internal::dependentsOnMap["itemType"] = new Array();
            model_internal::dependentsOnMap["targetUser"] = new Array();
            model_internal::dependentsOnMap["org"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["updated"] = new Array();
            model_internal::dependentsOnMap["created"] = new Array();
            model_internal::dependentsOnMap["isPrivate"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["owner"] = new Array();
            model_internal::dependentsOnMap["secret"] = new Array();
            model_internal::dependentsOnMap["comments"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["groupId"] = "String";
        model_internal::propertyTypeMap["nick"] = "String";
        model_internal::propertyTypeMap["description"] = "String";
        model_internal::propertyTypeMap["tags"] = "String";
        model_internal::propertyTypeMap["sourcePhoto"] = "String";
        model_internal::propertyTypeMap["bookmark"] = "String";
        model_internal::propertyTypeMap["location"] = "String";
        model_internal::propertyTypeMap["itemType"] = "String";
        model_internal::propertyTypeMap["targetUser"] = "String";
        model_internal::propertyTypeMap["org"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["updated"] = "String";
        model_internal::propertyTypeMap["created"] = "String";
        model_internal::propertyTypeMap["isPrivate"] = "String";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["owner"] = "String";
        model_internal::propertyTypeMap["secret"] = "String";
        model_internal::propertyTypeMap["comments"] = "String";

        model_internal::_instance = value;
        model_internal::_groupIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGroupId);
        model_internal::_groupIdValidator.required = true;
        model_internal::_groupIdValidator.requiredFieldError = "groupId is required";
        //model_internal::_groupIdValidator.source = model_internal::_instance;
        //model_internal::_groupIdValidator.property = "groupId";
        model_internal::_nickValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNick);
        model_internal::_nickValidator.required = true;
        model_internal::_nickValidator.requiredFieldError = "nick is required";
        //model_internal::_nickValidator.source = model_internal::_instance;
        //model_internal::_nickValidator.property = "nick";
        model_internal::_descriptionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescription);
        model_internal::_descriptionValidator.required = true;
        model_internal::_descriptionValidator.requiredFieldError = "description is required";
        //model_internal::_descriptionValidator.source = model_internal::_instance;
        //model_internal::_descriptionValidator.property = "description";
        model_internal::_tagsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTags);
        model_internal::_tagsValidator.required = true;
        model_internal::_tagsValidator.requiredFieldError = "tags is required";
        //model_internal::_tagsValidator.source = model_internal::_instance;
        //model_internal::_tagsValidator.property = "tags";
        model_internal::_sourcePhotoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSourcePhoto);
        model_internal::_sourcePhotoValidator.required = true;
        model_internal::_sourcePhotoValidator.requiredFieldError = "sourcePhoto is required";
        //model_internal::_sourcePhotoValidator.source = model_internal::_instance;
        //model_internal::_sourcePhotoValidator.property = "sourcePhoto";
        model_internal::_locationValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLocation);
        model_internal::_locationValidator.required = true;
        model_internal::_locationValidator.requiredFieldError = "location is required";
        //model_internal::_locationValidator.source = model_internal::_instance;
        //model_internal::_locationValidator.property = "location";
        model_internal::_itemTypeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForItemType);
        model_internal::_itemTypeValidator.required = true;
        model_internal::_itemTypeValidator.requiredFieldError = "itemType is required";
        //model_internal::_itemTypeValidator.source = model_internal::_instance;
        //model_internal::_itemTypeValidator.property = "itemType";
        model_internal::_targetUserValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTargetUser);
        model_internal::_targetUserValidator.required = true;
        model_internal::_targetUserValidator.requiredFieldError = "targetUser is required";
        //model_internal::_targetUserValidator.source = model_internal::_instance;
        //model_internal::_targetUserValidator.property = "targetUser";
        model_internal::_isPrivateValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIsPrivate);
        model_internal::_isPrivateValidator.required = true;
        model_internal::_isPrivateValidator.requiredFieldError = "isPrivate is required";
        //model_internal::_isPrivateValidator.source = model_internal::_instance;
        //model_internal::_isPrivateValidator.property = "isPrivate";
        model_internal::_commentsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForComments);
        model_internal::_commentsValidator.required = true;
        model_internal::_commentsValidator.requiredFieldError = "comments is required";
        //model_internal::_commentsValidator.source = model_internal::_instance;
        //model_internal::_commentsValidator.property = "comments";
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
            throw new Error(propertyName + " is not a data property of entity GroupData");
            
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
            throw new Error(propertyName + " is not a collection property of entity GroupData");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of GroupData");

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
            throw new Error(propertyName + " does not exist for entity GroupData");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity GroupData");
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
            throw new Error(propertyName + " does not exist for entity GroupData");
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
    public function get isGroupIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNickAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescriptionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTagsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSourcePhotoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBookmarkAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLocationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isItemTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTargetUserAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOrgAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
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
    public function get isIsPrivateAvailable():Boolean
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
    public function get isCommentsAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnGroupId():void
    {
        if (model_internal::_groupIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGroupId = null;
            model_internal::calculateGroupIdIsValid();
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
    public function invalidateDependentOnDescription():void
    {
        if (model_internal::_descriptionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescription = null;
            model_internal::calculateDescriptionIsValid();
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
    public function invalidateDependentOnSourcePhoto():void
    {
        if (model_internal::_sourcePhotoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSourcePhoto = null;
            model_internal::calculateSourcePhotoIsValid();
        }
    }
    public function invalidateDependentOnLocation():void
    {
        if (model_internal::_locationIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLocation = null;
            model_internal::calculateLocationIsValid();
        }
    }
    public function invalidateDependentOnItemType():void
    {
        if (model_internal::_itemTypeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfItemType = null;
            model_internal::calculateItemTypeIsValid();
        }
    }
    public function invalidateDependentOnTargetUser():void
    {
        if (model_internal::_targetUserIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTargetUser = null;
            model_internal::calculateTargetUserIsValid();
        }
    }
    public function invalidateDependentOnIsPrivate():void
    {
        if (model_internal::_isPrivateIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIsPrivate = null;
            model_internal::calculateIsPrivateIsValid();
        }
    }
    public function invalidateDependentOnComments():void
    {
        if (model_internal::_commentsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfComments = null;
            model_internal::calculateCommentsIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get groupIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get groupIdValidator() : StyleValidator
    {
        return model_internal::_groupIdValidator;
    }

    model_internal function set _groupIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_groupIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_groupIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "groupIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get groupIdIsValid():Boolean
    {
        if (!model_internal::_groupIdIsValidCacheInitialized)
        {
            model_internal::calculateGroupIdIsValid();
        }

        return model_internal::_groupIdIsValid;
    }

    model_internal function calculateGroupIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_groupIdValidator.validate(model_internal::_instance.groupId)
        model_internal::_groupIdIsValid_der = (valRes.results == null);
        model_internal::_groupIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::groupIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::groupIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get groupIdValidationFailureMessages():Array
    {
        if (model_internal::_groupIdValidationFailureMessages == null)
            model_internal::calculateGroupIdIsValid();

        return _groupIdValidationFailureMessages;
    }

    model_internal function set groupIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_groupIdValidationFailureMessages;

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
            model_internal::_groupIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "groupIdValidationFailureMessages", oldValue, value));
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
    public function get descriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descriptionValidator() : StyleValidator
    {
        return model_internal::_descriptionValidator;
    }

    model_internal function set _descriptionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descriptionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descriptionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descriptionIsValid():Boolean
    {
        if (!model_internal::_descriptionIsValidCacheInitialized)
        {
            model_internal::calculateDescriptionIsValid();
        }

        return model_internal::_descriptionIsValid;
    }

    model_internal function calculateDescriptionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descriptionValidator.validate(model_internal::_instance.description)
        model_internal::_descriptionIsValid_der = (valRes.results == null);
        model_internal::_descriptionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descriptionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descriptionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descriptionValidationFailureMessages():Array
    {
        if (model_internal::_descriptionValidationFailureMessages == null)
            model_internal::calculateDescriptionIsValid();

        return _descriptionValidationFailureMessages;
    }

    model_internal function set descriptionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descriptionValidationFailureMessages;

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
            model_internal::_descriptionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionValidationFailureMessages", oldValue, value));
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
    public function get sourcePhotoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sourcePhotoValidator() : StyleValidator
    {
        return model_internal::_sourcePhotoValidator;
    }

    model_internal function set _sourcePhotoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sourcePhotoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sourcePhotoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourcePhotoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sourcePhotoIsValid():Boolean
    {
        if (!model_internal::_sourcePhotoIsValidCacheInitialized)
        {
            model_internal::calculateSourcePhotoIsValid();
        }

        return model_internal::_sourcePhotoIsValid;
    }

    model_internal function calculateSourcePhotoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sourcePhotoValidator.validate(model_internal::_instance.sourcePhoto)
        model_internal::_sourcePhotoIsValid_der = (valRes.results == null);
        model_internal::_sourcePhotoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sourcePhotoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sourcePhotoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sourcePhotoValidationFailureMessages():Array
    {
        if (model_internal::_sourcePhotoValidationFailureMessages == null)
            model_internal::calculateSourcePhotoIsValid();

        return _sourcePhotoValidationFailureMessages;
    }

    model_internal function set sourcePhotoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sourcePhotoValidationFailureMessages;

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
            model_internal::_sourcePhotoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourcePhotoValidationFailureMessages", oldValue, value));
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
    public function get locationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get locationValidator() : StyleValidator
    {
        return model_internal::_locationValidator;
    }

    model_internal function set _locationIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_locationIsValid;         
        if (oldValue !== value)
        {
            model_internal::_locationIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "locationIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get locationIsValid():Boolean
    {
        if (!model_internal::_locationIsValidCacheInitialized)
        {
            model_internal::calculateLocationIsValid();
        }

        return model_internal::_locationIsValid;
    }

    model_internal function calculateLocationIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_locationValidator.validate(model_internal::_instance.location)
        model_internal::_locationIsValid_der = (valRes.results == null);
        model_internal::_locationIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::locationValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::locationValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get locationValidationFailureMessages():Array
    {
        if (model_internal::_locationValidationFailureMessages == null)
            model_internal::calculateLocationIsValid();

        return _locationValidationFailureMessages;
    }

    model_internal function set locationValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_locationValidationFailureMessages;

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
            model_internal::_locationValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "locationValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get itemTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get itemTypeValidator() : StyleValidator
    {
        return model_internal::_itemTypeValidator;
    }

    model_internal function set _itemTypeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_itemTypeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_itemTypeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "itemTypeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get itemTypeIsValid():Boolean
    {
        if (!model_internal::_itemTypeIsValidCacheInitialized)
        {
            model_internal::calculateItemTypeIsValid();
        }

        return model_internal::_itemTypeIsValid;
    }

    model_internal function calculateItemTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_itemTypeValidator.validate(model_internal::_instance.itemType)
        model_internal::_itemTypeIsValid_der = (valRes.results == null);
        model_internal::_itemTypeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::itemTypeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::itemTypeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get itemTypeValidationFailureMessages():Array
    {
        if (model_internal::_itemTypeValidationFailureMessages == null)
            model_internal::calculateItemTypeIsValid();

        return _itemTypeValidationFailureMessages;
    }

    model_internal function set itemTypeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_itemTypeValidationFailureMessages;

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
            model_internal::_itemTypeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "itemTypeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get targetUserStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get targetUserValidator() : StyleValidator
    {
        return model_internal::_targetUserValidator;
    }

    model_internal function set _targetUserIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_targetUserIsValid;         
        if (oldValue !== value)
        {
            model_internal::_targetUserIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "targetUserIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get targetUserIsValid():Boolean
    {
        if (!model_internal::_targetUserIsValidCacheInitialized)
        {
            model_internal::calculateTargetUserIsValid();
        }

        return model_internal::_targetUserIsValid;
    }

    model_internal function calculateTargetUserIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_targetUserValidator.validate(model_internal::_instance.targetUser)
        model_internal::_targetUserIsValid_der = (valRes.results == null);
        model_internal::_targetUserIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::targetUserValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::targetUserValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get targetUserValidationFailureMessages():Array
    {
        if (model_internal::_targetUserValidationFailureMessages == null)
            model_internal::calculateTargetUserIsValid();

        return _targetUserValidationFailureMessages;
    }

    model_internal function set targetUserValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_targetUserValidationFailureMessages;

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
            model_internal::_targetUserValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "targetUserValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
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
    public function get isPrivateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get isPrivateValidator() : StyleValidator
    {
        return model_internal::_isPrivateValidator;
    }

    model_internal function set _isPrivateIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_isPrivateIsValid;         
        if (oldValue !== value)
        {
            model_internal::_isPrivateIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isPrivateIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get isPrivateIsValid():Boolean
    {
        if (!model_internal::_isPrivateIsValidCacheInitialized)
        {
            model_internal::calculateIsPrivateIsValid();
        }

        return model_internal::_isPrivateIsValid;
    }

    model_internal function calculateIsPrivateIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_isPrivateValidator.validate(model_internal::_instance.isPrivate)
        model_internal::_isPrivateIsValid_der = (valRes.results == null);
        model_internal::_isPrivateIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::isPrivateValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::isPrivateValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isPrivateValidationFailureMessages():Array
    {
        if (model_internal::_isPrivateValidationFailureMessages == null)
            model_internal::calculateIsPrivateIsValid();

        return _isPrivateValidationFailureMessages;
    }

    model_internal function set isPrivateValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_isPrivateValidationFailureMessages;

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
            model_internal::_isPrivateValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isPrivateValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get ownerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get secretStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get commentsValidator() : StyleValidator
    {
        return model_internal::_commentsValidator;
    }

    model_internal function set _commentsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_commentsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_commentsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "commentsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get commentsIsValid():Boolean
    {
        if (!model_internal::_commentsIsValidCacheInitialized)
        {
            model_internal::calculateCommentsIsValid();
        }

        return model_internal::_commentsIsValid;
    }

    model_internal function calculateCommentsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_commentsValidator.validate(model_internal::_instance.comments)
        model_internal::_commentsIsValid_der = (valRes.results == null);
        model_internal::_commentsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::commentsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::commentsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get commentsValidationFailureMessages():Array
    {
        if (model_internal::_commentsValidationFailureMessages == null)
            model_internal::calculateCommentsIsValid();

        return _commentsValidationFailureMessages;
    }

    model_internal function set commentsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_commentsValidationFailureMessages;

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
            model_internal::_commentsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "commentsValidationFailureMessages", oldValue, value));
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
            case("groupId"):
            {
                return groupIdValidationFailureMessages;
            }
            case("nick"):
            {
                return nickValidationFailureMessages;
            }
            case("description"):
            {
                return descriptionValidationFailureMessages;
            }
            case("tags"):
            {
                return tagsValidationFailureMessages;
            }
            case("sourcePhoto"):
            {
                return sourcePhotoValidationFailureMessages;
            }
            case("location"):
            {
                return locationValidationFailureMessages;
            }
            case("itemType"):
            {
                return itemTypeValidationFailureMessages;
            }
            case("targetUser"):
            {
                return targetUserValidationFailureMessages;
            }
            case("isPrivate"):
            {
                return isPrivateValidationFailureMessages;
            }
            case("comments"):
            {
                return commentsValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
