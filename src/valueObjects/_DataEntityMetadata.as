
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
internal class _DataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("Description", "Age", "bookmark", "Location", "org", "LastName", "Photo", "id", "PrimaryPhone", "Status", "updated", "created", "name", "Gender", "owner", "EmailAddress", "FirstName", "Interests", "Nick");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("Description", "Age", "bookmark", "Location", "org", "LastName", "Photo", "id", "PrimaryPhone", "Status", "updated", "created", "name", "Gender", "owner", "EmailAddress", "FirstName", "Interests", "Nick");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("Description", "Age", "bookmark", "Location", "org", "LastName", "Photo", "id", "PrimaryPhone", "Status", "updated", "created", "name", "Gender", "owner", "EmailAddress", "FirstName", "Interests", "Nick");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("Description", "Age", "bookmark", "Location", "org", "LastName", "Photo", "id", "PrimaryPhone", "Status", "updated", "created", "name", "Gender", "owner", "EmailAddress", "FirstName", "Interests", "Nick");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("Description", "Age", "bookmark", "Location", "org", "LastName", "Photo", "id", "PrimaryPhone", "Status", "updated", "created", "name", "Gender", "owner", "EmailAddress", "FirstName", "Interests", "Nick");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Data";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _DescriptionIsValid:Boolean;
    model_internal var _DescriptionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _DescriptionIsValidCacheInitialized:Boolean = false;
    model_internal var _DescriptionValidationFailureMessages:Array;
    
    model_internal var _bookmarkIsValid:Boolean;
    model_internal var _bookmarkValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _bookmarkIsValidCacheInitialized:Boolean = false;
    model_internal var _bookmarkValidationFailureMessages:Array;
    
    model_internal var _LocationIsValid:Boolean;
    model_internal var _LocationValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LocationIsValidCacheInitialized:Boolean = false;
    model_internal var _LocationValidationFailureMessages:Array;
    
    model_internal var _orgIsValid:Boolean;
    model_internal var _orgValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _orgIsValidCacheInitialized:Boolean = false;
    model_internal var _orgValidationFailureMessages:Array;
    
    model_internal var _LastNameIsValid:Boolean;
    model_internal var _LastNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LastNameIsValidCacheInitialized:Boolean = false;
    model_internal var _LastNameValidationFailureMessages:Array;
    
    model_internal var _PhotoIsValid:Boolean;
    model_internal var _PhotoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _PhotoIsValidCacheInitialized:Boolean = false;
    model_internal var _PhotoValidationFailureMessages:Array;
    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _PrimaryPhoneIsValid:Boolean;
    model_internal var _PrimaryPhoneValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _PrimaryPhoneIsValidCacheInitialized:Boolean = false;
    model_internal var _PrimaryPhoneValidationFailureMessages:Array;
    
    model_internal var _StatusIsValid:Boolean;
    model_internal var _StatusValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _StatusIsValidCacheInitialized:Boolean = false;
    model_internal var _StatusValidationFailureMessages:Array;
    
    model_internal var _updatedIsValid:Boolean;
    model_internal var _updatedValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updatedIsValidCacheInitialized:Boolean = false;
    model_internal var _updatedValidationFailureMessages:Array;
    
    model_internal var _createdIsValid:Boolean;
    model_internal var _createdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _createdIsValidCacheInitialized:Boolean = false;
    model_internal var _createdValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _GenderIsValid:Boolean;
    model_internal var _GenderValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _GenderIsValidCacheInitialized:Boolean = false;
    model_internal var _GenderValidationFailureMessages:Array;
    
    model_internal var _ownerIsValid:Boolean;
    model_internal var _ownerValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ownerIsValidCacheInitialized:Boolean = false;
    model_internal var _ownerValidationFailureMessages:Array;
    
    model_internal var _EmailAddressIsValid:Boolean;
    model_internal var _EmailAddressValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _EmailAddressIsValidCacheInitialized:Boolean = false;
    model_internal var _EmailAddressValidationFailureMessages:Array;
    
    model_internal var _FirstNameIsValid:Boolean;
    model_internal var _FirstNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _FirstNameIsValidCacheInitialized:Boolean = false;
    model_internal var _FirstNameValidationFailureMessages:Array;
    
    model_internal var _InterestsIsValid:Boolean;
    model_internal var _InterestsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _InterestsIsValidCacheInitialized:Boolean = false;
    model_internal var _InterestsValidationFailureMessages:Array;
    
    model_internal var _NickIsValid:Boolean;
    model_internal var _NickValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _NickIsValidCacheInitialized:Boolean = false;
    model_internal var _NickValidationFailureMessages:Array;

    model_internal var _instance:_Super_Data;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _DataEntityMetadata(value : _Super_Data)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["Description"] = new Array();
            model_internal::dependentsOnMap["Age"] = new Array();
            model_internal::dependentsOnMap["bookmark"] = new Array();
            model_internal::dependentsOnMap["Location"] = new Array();
            model_internal::dependentsOnMap["org"] = new Array();
            model_internal::dependentsOnMap["LastName"] = new Array();
            model_internal::dependentsOnMap["Photo"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["PrimaryPhone"] = new Array();
            model_internal::dependentsOnMap["Status"] = new Array();
            model_internal::dependentsOnMap["updated"] = new Array();
            model_internal::dependentsOnMap["created"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["Gender"] = new Array();
            model_internal::dependentsOnMap["owner"] = new Array();
            model_internal::dependentsOnMap["EmailAddress"] = new Array();
            model_internal::dependentsOnMap["FirstName"] = new Array();
            model_internal::dependentsOnMap["Interests"] = new Array();
            model_internal::dependentsOnMap["Nick"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["Description"] = "String";
        model_internal::propertyTypeMap["Age"] = "int";
        model_internal::propertyTypeMap["bookmark"] = "String";
        model_internal::propertyTypeMap["Location"] = "String";
        model_internal::propertyTypeMap["org"] = "String";
        model_internal::propertyTypeMap["LastName"] = "String";
        model_internal::propertyTypeMap["Photo"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["PrimaryPhone"] = "String";
        model_internal::propertyTypeMap["Status"] = "String";
        model_internal::propertyTypeMap["updated"] = "String";
        model_internal::propertyTypeMap["created"] = "String";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["Gender"] = "String";
        model_internal::propertyTypeMap["owner"] = "String";
        model_internal::propertyTypeMap["EmailAddress"] = "String";
        model_internal::propertyTypeMap["FirstName"] = "String";
        model_internal::propertyTypeMap["Interests"] = "String";
        model_internal::propertyTypeMap["Nick"] = "String";

        model_internal::_instance = value;
        model_internal::_DescriptionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescription);
        model_internal::_DescriptionValidator.required = true;
        model_internal::_DescriptionValidator.requiredFieldError = "Description is required";
        //model_internal::_DescriptionValidator.source = model_internal::_instance;
        //model_internal::_DescriptionValidator.property = "Description";
        model_internal::_bookmarkValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBookmark);
        model_internal::_bookmarkValidator.required = true;
        model_internal::_bookmarkValidator.requiredFieldError = "bookmark is required";
        //model_internal::_bookmarkValidator.source = model_internal::_instance;
        //model_internal::_bookmarkValidator.property = "bookmark";
        model_internal::_LocationValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLocation);
        model_internal::_LocationValidator.required = true;
        model_internal::_LocationValidator.requiredFieldError = "Location is required";
        //model_internal::_LocationValidator.source = model_internal::_instance;
        //model_internal::_LocationValidator.property = "Location";
        model_internal::_orgValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOrg);
        model_internal::_orgValidator.required = true;
        model_internal::_orgValidator.requiredFieldError = "org is required";
        //model_internal::_orgValidator.source = model_internal::_instance;
        //model_internal::_orgValidator.property = "org";
        model_internal::_LastNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLastName);
        model_internal::_LastNameValidator.required = true;
        model_internal::_LastNameValidator.requiredFieldError = "LastName is required";
        //model_internal::_LastNameValidator.source = model_internal::_instance;
        //model_internal::_LastNameValidator.property = "LastName";
        model_internal::_PhotoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPhoto);
        model_internal::_PhotoValidator.required = true;
        model_internal::_PhotoValidator.requiredFieldError = "Photo is required";
        //model_internal::_PhotoValidator.source = model_internal::_instance;
        //model_internal::_PhotoValidator.property = "Photo";
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_PrimaryPhoneValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPrimaryPhone);
        model_internal::_PrimaryPhoneValidator.required = true;
        model_internal::_PrimaryPhoneValidator.requiredFieldError = "PrimaryPhone is required";
        //model_internal::_PrimaryPhoneValidator.source = model_internal::_instance;
        //model_internal::_PrimaryPhoneValidator.property = "PrimaryPhone";
        model_internal::_StatusValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForStatus);
        model_internal::_StatusValidator.required = true;
        model_internal::_StatusValidator.requiredFieldError = "Status is required";
        //model_internal::_StatusValidator.source = model_internal::_instance;
        //model_internal::_StatusValidator.property = "Status";
        model_internal::_updatedValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated);
        model_internal::_updatedValidator.required = true;
        model_internal::_updatedValidator.requiredFieldError = "updated is required";
        //model_internal::_updatedValidator.source = model_internal::_instance;
        //model_internal::_updatedValidator.property = "updated";
        model_internal::_createdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCreated);
        model_internal::_createdValidator.required = true;
        model_internal::_createdValidator.requiredFieldError = "created is required";
        //model_internal::_createdValidator.source = model_internal::_instance;
        //model_internal::_createdValidator.property = "created";
        model_internal::_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForName);
        model_internal::_nameValidator.required = true;
        model_internal::_nameValidator.requiredFieldError = "name is required";
        //model_internal::_nameValidator.source = model_internal::_instance;
        //model_internal::_nameValidator.property = "name";
        model_internal::_GenderValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGender);
        model_internal::_GenderValidator.required = true;
        model_internal::_GenderValidator.requiredFieldError = "Gender is required";
        //model_internal::_GenderValidator.source = model_internal::_instance;
        //model_internal::_GenderValidator.property = "Gender";
        model_internal::_ownerValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOwner);
        model_internal::_ownerValidator.required = true;
        model_internal::_ownerValidator.requiredFieldError = "owner is required";
        //model_internal::_ownerValidator.source = model_internal::_instance;
        //model_internal::_ownerValidator.property = "owner";
        model_internal::_EmailAddressValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEmailAddress);
        model_internal::_EmailAddressValidator.required = true;
        model_internal::_EmailAddressValidator.requiredFieldError = "EmailAddress is required";
        //model_internal::_EmailAddressValidator.source = model_internal::_instance;
        //model_internal::_EmailAddressValidator.property = "EmailAddress";
        model_internal::_FirstNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForFirstName);
        model_internal::_FirstNameValidator.required = true;
        model_internal::_FirstNameValidator.requiredFieldError = "FirstName is required";
        //model_internal::_FirstNameValidator.source = model_internal::_instance;
        //model_internal::_FirstNameValidator.property = "FirstName";
        model_internal::_InterestsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForInterests);
        model_internal::_InterestsValidator.required = true;
        model_internal::_InterestsValidator.requiredFieldError = "Interests is required";
        //model_internal::_InterestsValidator.source = model_internal::_instance;
        //model_internal::_InterestsValidator.property = "Interests";
        model_internal::_NickValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNick);
        model_internal::_NickValidator.required = true;
        model_internal::_NickValidator.requiredFieldError = "Nick is required";
        //model_internal::_NickValidator.source = model_internal::_instance;
        //model_internal::_NickValidator.property = "Nick";
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
            throw new Error(propertyName + " is not a data property of entity Data");
            
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
            throw new Error(propertyName + " is not a collection property of entity Data");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Data");

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
            throw new Error(propertyName + " does not exist for entity Data");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Data");
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
            throw new Error(propertyName + " does not exist for entity Data");
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
    public function get isOrgAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLastNameAvailable():Boolean
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
    public function get isPrimaryPhoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
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
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGenderAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOwnerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEmailAddressAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFirstNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInterestsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNickAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnDescription():void
    {
        if (model_internal::_DescriptionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescription = null;
            model_internal::calculateDescriptionIsValid();
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
    public function invalidateDependentOnLocation():void
    {
        if (model_internal::_LocationIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLocation = null;
            model_internal::calculateLocationIsValid();
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
    public function invalidateDependentOnLastName():void
    {
        if (model_internal::_LastNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLastName = null;
            model_internal::calculateLastNameIsValid();
        }
    }
    public function invalidateDependentOnPhoto():void
    {
        if (model_internal::_PhotoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPhoto = null;
            model_internal::calculatePhotoIsValid();
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
    public function invalidateDependentOnPrimaryPhone():void
    {
        if (model_internal::_PrimaryPhoneIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPrimaryPhone = null;
            model_internal::calculatePrimaryPhoneIsValid();
        }
    }
    public function invalidateDependentOnStatus():void
    {
        if (model_internal::_StatusIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfStatus = null;
            model_internal::calculateStatusIsValid();
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
    public function invalidateDependentOnCreated():void
    {
        if (model_internal::_createdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCreated = null;
            model_internal::calculateCreatedIsValid();
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
    public function invalidateDependentOnGender():void
    {
        if (model_internal::_GenderIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGender = null;
            model_internal::calculateGenderIsValid();
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
    public function invalidateDependentOnEmailAddress():void
    {
        if (model_internal::_EmailAddressIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEmailAddress = null;
            model_internal::calculateEmailAddressIsValid();
        }
    }
    public function invalidateDependentOnFirstName():void
    {
        if (model_internal::_FirstNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfFirstName = null;
            model_internal::calculateFirstNameIsValid();
        }
    }
    public function invalidateDependentOnInterests():void
    {
        if (model_internal::_InterestsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfInterests = null;
            model_internal::calculateInterestsIsValid();
        }
    }
    public function invalidateDependentOnNick():void
    {
        if (model_internal::_NickIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNick = null;
            model_internal::calculateNickIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get DescriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get DescriptionValidator() : StyleValidator
    {
        return model_internal::_DescriptionValidator;
    }

    model_internal function set _DescriptionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_DescriptionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_DescriptionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DescriptionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get DescriptionIsValid():Boolean
    {
        if (!model_internal::_DescriptionIsValidCacheInitialized)
        {
            model_internal::calculateDescriptionIsValid();
        }

        return model_internal::_DescriptionIsValid;
    }

    model_internal function calculateDescriptionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_DescriptionValidator.validate(model_internal::_instance.Description)
        model_internal::_DescriptionIsValid_der = (valRes.results == null);
        model_internal::_DescriptionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::DescriptionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::DescriptionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get DescriptionValidationFailureMessages():Array
    {
        if (model_internal::_DescriptionValidationFailureMessages == null)
            model_internal::calculateDescriptionIsValid();

        return _DescriptionValidationFailureMessages;
    }

    model_internal function set DescriptionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_DescriptionValidationFailureMessages;

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
            model_internal::_DescriptionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DescriptionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get AgeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
    public function get LocationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LocationValidator() : StyleValidator
    {
        return model_internal::_LocationValidator;
    }

    model_internal function set _LocationIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LocationIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LocationIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LocationIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LocationIsValid():Boolean
    {
        if (!model_internal::_LocationIsValidCacheInitialized)
        {
            model_internal::calculateLocationIsValid();
        }

        return model_internal::_LocationIsValid;
    }

    model_internal function calculateLocationIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LocationValidator.validate(model_internal::_instance.Location)
        model_internal::_LocationIsValid_der = (valRes.results == null);
        model_internal::_LocationIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LocationValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LocationValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LocationValidationFailureMessages():Array
    {
        if (model_internal::_LocationValidationFailureMessages == null)
            model_internal::calculateLocationIsValid();

        return _LocationValidationFailureMessages;
    }

    model_internal function set LocationValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LocationValidationFailureMessages;

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
            model_internal::_LocationValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LocationValidationFailureMessages", oldValue, value));
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
    public function get LastNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LastNameValidator() : StyleValidator
    {
        return model_internal::_LastNameValidator;
    }

    model_internal function set _LastNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LastNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LastNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LastNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LastNameIsValid():Boolean
    {
        if (!model_internal::_LastNameIsValidCacheInitialized)
        {
            model_internal::calculateLastNameIsValid();
        }

        return model_internal::_LastNameIsValid;
    }

    model_internal function calculateLastNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LastNameValidator.validate(model_internal::_instance.LastName)
        model_internal::_LastNameIsValid_der = (valRes.results == null);
        model_internal::_LastNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LastNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LastNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LastNameValidationFailureMessages():Array
    {
        if (model_internal::_LastNameValidationFailureMessages == null)
            model_internal::calculateLastNameIsValid();

        return _LastNameValidationFailureMessages;
    }

    model_internal function set LastNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LastNameValidationFailureMessages;

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
            model_internal::_LastNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LastNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get PhotoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get PhotoValidator() : StyleValidator
    {
        return model_internal::_PhotoValidator;
    }

    model_internal function set _PhotoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_PhotoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_PhotoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PhotoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get PhotoIsValid():Boolean
    {
        if (!model_internal::_PhotoIsValidCacheInitialized)
        {
            model_internal::calculatePhotoIsValid();
        }

        return model_internal::_PhotoIsValid;
    }

    model_internal function calculatePhotoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_PhotoValidator.validate(model_internal::_instance.Photo)
        model_internal::_PhotoIsValid_der = (valRes.results == null);
        model_internal::_PhotoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::PhotoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::PhotoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get PhotoValidationFailureMessages():Array
    {
        if (model_internal::_PhotoValidationFailureMessages == null)
            model_internal::calculatePhotoIsValid();

        return _PhotoValidationFailureMessages;
    }

    model_internal function set PhotoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_PhotoValidationFailureMessages;

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
            model_internal::_PhotoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PhotoValidationFailureMessages", oldValue, value));
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
    public function get PrimaryPhoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get PrimaryPhoneValidator() : StyleValidator
    {
        return model_internal::_PrimaryPhoneValidator;
    }

    model_internal function set _PrimaryPhoneIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_PrimaryPhoneIsValid;         
        if (oldValue !== value)
        {
            model_internal::_PrimaryPhoneIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PrimaryPhoneIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get PrimaryPhoneIsValid():Boolean
    {
        if (!model_internal::_PrimaryPhoneIsValidCacheInitialized)
        {
            model_internal::calculatePrimaryPhoneIsValid();
        }

        return model_internal::_PrimaryPhoneIsValid;
    }

    model_internal function calculatePrimaryPhoneIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_PrimaryPhoneValidator.validate(model_internal::_instance.PrimaryPhone)
        model_internal::_PrimaryPhoneIsValid_der = (valRes.results == null);
        model_internal::_PrimaryPhoneIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::PrimaryPhoneValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::PrimaryPhoneValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get PrimaryPhoneValidationFailureMessages():Array
    {
        if (model_internal::_PrimaryPhoneValidationFailureMessages == null)
            model_internal::calculatePrimaryPhoneIsValid();

        return _PrimaryPhoneValidationFailureMessages;
    }

    model_internal function set PrimaryPhoneValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_PrimaryPhoneValidationFailureMessages;

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
            model_internal::_PrimaryPhoneValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PrimaryPhoneValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get StatusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get StatusValidator() : StyleValidator
    {
        return model_internal::_StatusValidator;
    }

    model_internal function set _StatusIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_StatusIsValid;         
        if (oldValue !== value)
        {
            model_internal::_StatusIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "StatusIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get StatusIsValid():Boolean
    {
        if (!model_internal::_StatusIsValidCacheInitialized)
        {
            model_internal::calculateStatusIsValid();
        }

        return model_internal::_StatusIsValid;
    }

    model_internal function calculateStatusIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_StatusValidator.validate(model_internal::_instance.Status)
        model_internal::_StatusIsValid_der = (valRes.results == null);
        model_internal::_StatusIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::StatusValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::StatusValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get StatusValidationFailureMessages():Array
    {
        if (model_internal::_StatusValidationFailureMessages == null)
            model_internal::calculateStatusIsValid();

        return _StatusValidationFailureMessages;
    }

    model_internal function set StatusValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_StatusValidationFailureMessages;

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
            model_internal::_StatusValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "StatusValidationFailureMessages", oldValue, value));
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
    public function get GenderStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get GenderValidator() : StyleValidator
    {
        return model_internal::_GenderValidator;
    }

    model_internal function set _GenderIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_GenderIsValid;         
        if (oldValue !== value)
        {
            model_internal::_GenderIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "GenderIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get GenderIsValid():Boolean
    {
        if (!model_internal::_GenderIsValidCacheInitialized)
        {
            model_internal::calculateGenderIsValid();
        }

        return model_internal::_GenderIsValid;
    }

    model_internal function calculateGenderIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_GenderValidator.validate(model_internal::_instance.Gender)
        model_internal::_GenderIsValid_der = (valRes.results == null);
        model_internal::_GenderIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::GenderValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::GenderValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get GenderValidationFailureMessages():Array
    {
        if (model_internal::_GenderValidationFailureMessages == null)
            model_internal::calculateGenderIsValid();

        return _GenderValidationFailureMessages;
    }

    model_internal function set GenderValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_GenderValidationFailureMessages;

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
            model_internal::_GenderValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "GenderValidationFailureMessages", oldValue, value));
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
    public function get EmailAddressStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get EmailAddressValidator() : StyleValidator
    {
        return model_internal::_EmailAddressValidator;
    }

    model_internal function set _EmailAddressIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_EmailAddressIsValid;         
        if (oldValue !== value)
        {
            model_internal::_EmailAddressIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "EmailAddressIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get EmailAddressIsValid():Boolean
    {
        if (!model_internal::_EmailAddressIsValidCacheInitialized)
        {
            model_internal::calculateEmailAddressIsValid();
        }

        return model_internal::_EmailAddressIsValid;
    }

    model_internal function calculateEmailAddressIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_EmailAddressValidator.validate(model_internal::_instance.EmailAddress)
        model_internal::_EmailAddressIsValid_der = (valRes.results == null);
        model_internal::_EmailAddressIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::EmailAddressValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::EmailAddressValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get EmailAddressValidationFailureMessages():Array
    {
        if (model_internal::_EmailAddressValidationFailureMessages == null)
            model_internal::calculateEmailAddressIsValid();

        return _EmailAddressValidationFailureMessages;
    }

    model_internal function set EmailAddressValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_EmailAddressValidationFailureMessages;

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
            model_internal::_EmailAddressValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "EmailAddressValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get FirstNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get FirstNameValidator() : StyleValidator
    {
        return model_internal::_FirstNameValidator;
    }

    model_internal function set _FirstNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_FirstNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_FirstNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FirstNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get FirstNameIsValid():Boolean
    {
        if (!model_internal::_FirstNameIsValidCacheInitialized)
        {
            model_internal::calculateFirstNameIsValid();
        }

        return model_internal::_FirstNameIsValid;
    }

    model_internal function calculateFirstNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_FirstNameValidator.validate(model_internal::_instance.FirstName)
        model_internal::_FirstNameIsValid_der = (valRes.results == null);
        model_internal::_FirstNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::FirstNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::FirstNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get FirstNameValidationFailureMessages():Array
    {
        if (model_internal::_FirstNameValidationFailureMessages == null)
            model_internal::calculateFirstNameIsValid();

        return _FirstNameValidationFailureMessages;
    }

    model_internal function set FirstNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_FirstNameValidationFailureMessages;

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
            model_internal::_FirstNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FirstNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get InterestsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get InterestsValidator() : StyleValidator
    {
        return model_internal::_InterestsValidator;
    }

    model_internal function set _InterestsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_InterestsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_InterestsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "InterestsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get InterestsIsValid():Boolean
    {
        if (!model_internal::_InterestsIsValidCacheInitialized)
        {
            model_internal::calculateInterestsIsValid();
        }

        return model_internal::_InterestsIsValid;
    }

    model_internal function calculateInterestsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_InterestsValidator.validate(model_internal::_instance.Interests)
        model_internal::_InterestsIsValid_der = (valRes.results == null);
        model_internal::_InterestsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::InterestsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::InterestsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get InterestsValidationFailureMessages():Array
    {
        if (model_internal::_InterestsValidationFailureMessages == null)
            model_internal::calculateInterestsIsValid();

        return _InterestsValidationFailureMessages;
    }

    model_internal function set InterestsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_InterestsValidationFailureMessages;

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
            model_internal::_InterestsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "InterestsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get NickStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get NickValidator() : StyleValidator
    {
        return model_internal::_NickValidator;
    }

    model_internal function set _NickIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_NickIsValid;         
        if (oldValue !== value)
        {
            model_internal::_NickIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NickIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get NickIsValid():Boolean
    {
        if (!model_internal::_NickIsValidCacheInitialized)
        {
            model_internal::calculateNickIsValid();
        }

        return model_internal::_NickIsValid;
    }

    model_internal function calculateNickIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_NickValidator.validate(model_internal::_instance.Nick)
        model_internal::_NickIsValid_der = (valRes.results == null);
        model_internal::_NickIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::NickValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::NickValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get NickValidationFailureMessages():Array
    {
        if (model_internal::_NickValidationFailureMessages == null)
            model_internal::calculateNickIsValid();

        return _NickValidationFailureMessages;
    }

    model_internal function set NickValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_NickValidationFailureMessages;

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
            model_internal::_NickValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NickValidationFailureMessages", oldValue, value));
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
            case("Description"):
            {
                return DescriptionValidationFailureMessages;
            }
            case("bookmark"):
            {
                return bookmarkValidationFailureMessages;
            }
            case("Location"):
            {
                return LocationValidationFailureMessages;
            }
            case("org"):
            {
                return orgValidationFailureMessages;
            }
            case("LastName"):
            {
                return LastNameValidationFailureMessages;
            }
            case("Photo"):
            {
                return PhotoValidationFailureMessages;
            }
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("PrimaryPhone"):
            {
                return PrimaryPhoneValidationFailureMessages;
            }
            case("Status"):
            {
                return StatusValidationFailureMessages;
            }
            case("updated"):
            {
                return updatedValidationFailureMessages;
            }
            case("created"):
            {
                return createdValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("Gender"):
            {
                return GenderValidationFailureMessages;
            }
            case("owner"):
            {
                return ownerValidationFailureMessages;
            }
            case("EmailAddress"):
            {
                return EmailAddressValidationFailureMessages;
            }
            case("FirstName"):
            {
                return FirstNameValidationFailureMessages;
            }
            case("Interests"):
            {
                return InterestsValidationFailureMessages;
            }
            case("Nick"):
            {
                return NickValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
