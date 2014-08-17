
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
internal class _IpInfoResultEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("Ip", "CountryName", "RegionName", "Isdst", "City", "Status", "Dstoffset", "Timezone", "Latitude", "Longitude", "CountryCode", "Gmtoffset", "TimezoneName", "RegionCode", "ZipPostalCode");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("Ip", "CountryName", "RegionName", "Isdst", "City", "Status", "Dstoffset", "Timezone", "Latitude", "Longitude", "CountryCode", "Gmtoffset", "TimezoneName", "RegionCode", "ZipPostalCode");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("Ip", "CountryName", "RegionName", "Isdst", "City", "Status", "Dstoffset", "Timezone", "Latitude", "Longitude", "CountryCode", "Gmtoffset", "TimezoneName", "RegionCode", "ZipPostalCode");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("Ip", "CountryName", "RegionName", "Isdst", "City", "Status", "Dstoffset", "Timezone", "Latitude", "Longitude", "CountryCode", "Gmtoffset", "TimezoneName", "RegionCode", "ZipPostalCode");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("Ip", "CountryName", "RegionName", "Isdst", "City", "Status", "Dstoffset", "Timezone", "Latitude", "Longitude", "CountryCode", "Gmtoffset", "TimezoneName", "RegionCode", "ZipPostalCode");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "IpInfoResult";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _IpIsValid:Boolean;
    model_internal var _IpValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _IpIsValidCacheInitialized:Boolean = false;
    model_internal var _IpValidationFailureMessages:Array;
    
    model_internal var _CountryNameIsValid:Boolean;
    model_internal var _CountryNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _CountryNameIsValidCacheInitialized:Boolean = false;
    model_internal var _CountryNameValidationFailureMessages:Array;
    
    model_internal var _RegionNameIsValid:Boolean;
    model_internal var _RegionNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RegionNameIsValidCacheInitialized:Boolean = false;
    model_internal var _RegionNameValidationFailureMessages:Array;
    
    model_internal var _IsdstIsValid:Boolean;
    model_internal var _IsdstValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _IsdstIsValidCacheInitialized:Boolean = false;
    model_internal var _IsdstValidationFailureMessages:Array;
    
    model_internal var _CityIsValid:Boolean;
    model_internal var _CityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _CityIsValidCacheInitialized:Boolean = false;
    model_internal var _CityValidationFailureMessages:Array;
    
    model_internal var _StatusIsValid:Boolean;
    model_internal var _StatusValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _StatusIsValidCacheInitialized:Boolean = false;
    model_internal var _StatusValidationFailureMessages:Array;
    
    model_internal var _DstoffsetIsValid:Boolean;
    model_internal var _DstoffsetValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _DstoffsetIsValidCacheInitialized:Boolean = false;
    model_internal var _DstoffsetValidationFailureMessages:Array;
    
    model_internal var _TimezoneIsValid:Boolean;
    model_internal var _TimezoneValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TimezoneIsValidCacheInitialized:Boolean = false;
    model_internal var _TimezoneValidationFailureMessages:Array;
    
    model_internal var _LatitudeIsValid:Boolean;
    model_internal var _LatitudeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LatitudeIsValidCacheInitialized:Boolean = false;
    model_internal var _LatitudeValidationFailureMessages:Array;
    
    model_internal var _LongitudeIsValid:Boolean;
    model_internal var _LongitudeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LongitudeIsValidCacheInitialized:Boolean = false;
    model_internal var _LongitudeValidationFailureMessages:Array;
    
    model_internal var _CountryCodeIsValid:Boolean;
    model_internal var _CountryCodeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _CountryCodeIsValidCacheInitialized:Boolean = false;
    model_internal var _CountryCodeValidationFailureMessages:Array;
    
    model_internal var _GmtoffsetIsValid:Boolean;
    model_internal var _GmtoffsetValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _GmtoffsetIsValidCacheInitialized:Boolean = false;
    model_internal var _GmtoffsetValidationFailureMessages:Array;
    
    model_internal var _TimezoneNameIsValid:Boolean;
    model_internal var _TimezoneNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TimezoneNameIsValidCacheInitialized:Boolean = false;
    model_internal var _TimezoneNameValidationFailureMessages:Array;
    
    model_internal var _RegionCodeIsValid:Boolean;
    model_internal var _RegionCodeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RegionCodeIsValidCacheInitialized:Boolean = false;
    model_internal var _RegionCodeValidationFailureMessages:Array;
    
    model_internal var _ZipPostalCodeIsValid:Boolean;
    model_internal var _ZipPostalCodeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ZipPostalCodeIsValidCacheInitialized:Boolean = false;
    model_internal var _ZipPostalCodeValidationFailureMessages:Array;

    model_internal var _instance:_Super_IpInfoResult;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _IpInfoResultEntityMetadata(value : _Super_IpInfoResult)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["Ip"] = new Array();
            model_internal::dependentsOnMap["CountryName"] = new Array();
            model_internal::dependentsOnMap["RegionName"] = new Array();
            model_internal::dependentsOnMap["Isdst"] = new Array();
            model_internal::dependentsOnMap["City"] = new Array();
            model_internal::dependentsOnMap["Status"] = new Array();
            model_internal::dependentsOnMap["Dstoffset"] = new Array();
            model_internal::dependentsOnMap["Timezone"] = new Array();
            model_internal::dependentsOnMap["Latitude"] = new Array();
            model_internal::dependentsOnMap["Longitude"] = new Array();
            model_internal::dependentsOnMap["CountryCode"] = new Array();
            model_internal::dependentsOnMap["Gmtoffset"] = new Array();
            model_internal::dependentsOnMap["TimezoneName"] = new Array();
            model_internal::dependentsOnMap["RegionCode"] = new Array();
            model_internal::dependentsOnMap["ZipPostalCode"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["Ip"] = "String";
        model_internal::propertyTypeMap["CountryName"] = "String";
        model_internal::propertyTypeMap["RegionName"] = "String";
        model_internal::propertyTypeMap["Isdst"] = "String";
        model_internal::propertyTypeMap["City"] = "String";
        model_internal::propertyTypeMap["Status"] = "String";
        model_internal::propertyTypeMap["Dstoffset"] = "String";
        model_internal::propertyTypeMap["Timezone"] = "String";
        model_internal::propertyTypeMap["Latitude"] = "String";
        model_internal::propertyTypeMap["Longitude"] = "String";
        model_internal::propertyTypeMap["CountryCode"] = "String";
        model_internal::propertyTypeMap["Gmtoffset"] = "String";
        model_internal::propertyTypeMap["TimezoneName"] = "String";
        model_internal::propertyTypeMap["RegionCode"] = "String";
        model_internal::propertyTypeMap["ZipPostalCode"] = "String";

        model_internal::_instance = value;
        model_internal::_IpValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIp);
        model_internal::_IpValidator.required = true;
        model_internal::_IpValidator.requiredFieldError = "Ip is required";
        //model_internal::_IpValidator.source = model_internal::_instance;
        //model_internal::_IpValidator.property = "Ip";
        model_internal::_CountryNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCountryName);
        model_internal::_CountryNameValidator.required = true;
        model_internal::_CountryNameValidator.requiredFieldError = "CountryName is required";
        //model_internal::_CountryNameValidator.source = model_internal::_instance;
        //model_internal::_CountryNameValidator.property = "CountryName";
        model_internal::_RegionNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRegionName);
        model_internal::_RegionNameValidator.required = true;
        model_internal::_RegionNameValidator.requiredFieldError = "RegionName is required";
        //model_internal::_RegionNameValidator.source = model_internal::_instance;
        //model_internal::_RegionNameValidator.property = "RegionName";
        model_internal::_IsdstValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForIsdst);
        model_internal::_IsdstValidator.required = true;
        model_internal::_IsdstValidator.requiredFieldError = "Isdst is required";
        //model_internal::_IsdstValidator.source = model_internal::_instance;
        //model_internal::_IsdstValidator.property = "Isdst";
        model_internal::_CityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCity);
        model_internal::_CityValidator.required = true;
        model_internal::_CityValidator.requiredFieldError = "City is required";
        //model_internal::_CityValidator.source = model_internal::_instance;
        //model_internal::_CityValidator.property = "City";
        model_internal::_StatusValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForStatus);
        model_internal::_StatusValidator.required = true;
        model_internal::_StatusValidator.requiredFieldError = "Status is required";
        //model_internal::_StatusValidator.source = model_internal::_instance;
        //model_internal::_StatusValidator.property = "Status";
        model_internal::_DstoffsetValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDstoffset);
        model_internal::_DstoffsetValidator.required = true;
        model_internal::_DstoffsetValidator.requiredFieldError = "Dstoffset is required";
        //model_internal::_DstoffsetValidator.source = model_internal::_instance;
        //model_internal::_DstoffsetValidator.property = "Dstoffset";
        model_internal::_TimezoneValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTimezone);
        model_internal::_TimezoneValidator.required = true;
        model_internal::_TimezoneValidator.requiredFieldError = "Timezone is required";
        //model_internal::_TimezoneValidator.source = model_internal::_instance;
        //model_internal::_TimezoneValidator.property = "Timezone";
        model_internal::_LatitudeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLatitude);
        model_internal::_LatitudeValidator.required = true;
        model_internal::_LatitudeValidator.requiredFieldError = "Latitude is required";
        //model_internal::_LatitudeValidator.source = model_internal::_instance;
        //model_internal::_LatitudeValidator.property = "Latitude";
        model_internal::_LongitudeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLongitude);
        model_internal::_LongitudeValidator.required = true;
        model_internal::_LongitudeValidator.requiredFieldError = "Longitude is required";
        //model_internal::_LongitudeValidator.source = model_internal::_instance;
        //model_internal::_LongitudeValidator.property = "Longitude";
        model_internal::_CountryCodeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCountryCode);
        model_internal::_CountryCodeValidator.required = true;
        model_internal::_CountryCodeValidator.requiredFieldError = "CountryCode is required";
        //model_internal::_CountryCodeValidator.source = model_internal::_instance;
        //model_internal::_CountryCodeValidator.property = "CountryCode";
        model_internal::_GmtoffsetValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForGmtoffset);
        model_internal::_GmtoffsetValidator.required = true;
        model_internal::_GmtoffsetValidator.requiredFieldError = "Gmtoffset is required";
        //model_internal::_GmtoffsetValidator.source = model_internal::_instance;
        //model_internal::_GmtoffsetValidator.property = "Gmtoffset";
        model_internal::_TimezoneNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTimezoneName);
        model_internal::_TimezoneNameValidator.required = true;
        model_internal::_TimezoneNameValidator.requiredFieldError = "TimezoneName is required";
        //model_internal::_TimezoneNameValidator.source = model_internal::_instance;
        //model_internal::_TimezoneNameValidator.property = "TimezoneName";
        model_internal::_RegionCodeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRegionCode);
        model_internal::_RegionCodeValidator.required = true;
        model_internal::_RegionCodeValidator.requiredFieldError = "RegionCode is required";
        //model_internal::_RegionCodeValidator.source = model_internal::_instance;
        //model_internal::_RegionCodeValidator.property = "RegionCode";
        model_internal::_ZipPostalCodeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForZipPostalCode);
        model_internal::_ZipPostalCodeValidator.required = true;
        model_internal::_ZipPostalCodeValidator.requiredFieldError = "ZipPostalCode is required";
        //model_internal::_ZipPostalCodeValidator.source = model_internal::_instance;
        //model_internal::_ZipPostalCodeValidator.property = "ZipPostalCode";
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
            throw new Error(propertyName + " is not a data property of entity IpInfoResult");
            
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
            throw new Error(propertyName + " is not a collection property of entity IpInfoResult");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of IpInfoResult");

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
            throw new Error(propertyName + " does not exist for entity IpInfoResult");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity IpInfoResult");
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
            throw new Error(propertyName + " does not exist for entity IpInfoResult");
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
    public function get isIpAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCountryNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRegionNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIsdstAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDstoffsetAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTimezoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLongitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCountryCodeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGmtoffsetAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTimezoneNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRegionCodeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isZipPostalCodeAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnIp():void
    {
        if (model_internal::_IpIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIp = null;
            model_internal::calculateIpIsValid();
        }
    }
    public function invalidateDependentOnCountryName():void
    {
        if (model_internal::_CountryNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCountryName = null;
            model_internal::calculateCountryNameIsValid();
        }
    }
    public function invalidateDependentOnRegionName():void
    {
        if (model_internal::_RegionNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRegionName = null;
            model_internal::calculateRegionNameIsValid();
        }
    }
    public function invalidateDependentOnIsdst():void
    {
        if (model_internal::_IsdstIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfIsdst = null;
            model_internal::calculateIsdstIsValid();
        }
    }
    public function invalidateDependentOnCity():void
    {
        if (model_internal::_CityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCity = null;
            model_internal::calculateCityIsValid();
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
    public function invalidateDependentOnDstoffset():void
    {
        if (model_internal::_DstoffsetIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDstoffset = null;
            model_internal::calculateDstoffsetIsValid();
        }
    }
    public function invalidateDependentOnTimezone():void
    {
        if (model_internal::_TimezoneIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTimezone = null;
            model_internal::calculateTimezoneIsValid();
        }
    }
    public function invalidateDependentOnLatitude():void
    {
        if (model_internal::_LatitudeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLatitude = null;
            model_internal::calculateLatitudeIsValid();
        }
    }
    public function invalidateDependentOnLongitude():void
    {
        if (model_internal::_LongitudeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLongitude = null;
            model_internal::calculateLongitudeIsValid();
        }
    }
    public function invalidateDependentOnCountryCode():void
    {
        if (model_internal::_CountryCodeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCountryCode = null;
            model_internal::calculateCountryCodeIsValid();
        }
    }
    public function invalidateDependentOnGmtoffset():void
    {
        if (model_internal::_GmtoffsetIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfGmtoffset = null;
            model_internal::calculateGmtoffsetIsValid();
        }
    }
    public function invalidateDependentOnTimezoneName():void
    {
        if (model_internal::_TimezoneNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTimezoneName = null;
            model_internal::calculateTimezoneNameIsValid();
        }
    }
    public function invalidateDependentOnRegionCode():void
    {
        if (model_internal::_RegionCodeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRegionCode = null;
            model_internal::calculateRegionCodeIsValid();
        }
    }
    public function invalidateDependentOnZipPostalCode():void
    {
        if (model_internal::_ZipPostalCodeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfZipPostalCode = null;
            model_internal::calculateZipPostalCodeIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get IpStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get IpValidator() : StyleValidator
    {
        return model_internal::_IpValidator;
    }

    model_internal function set _IpIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_IpIsValid;         
        if (oldValue !== value)
        {
            model_internal::_IpIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IpIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get IpIsValid():Boolean
    {
        if (!model_internal::_IpIsValidCacheInitialized)
        {
            model_internal::calculateIpIsValid();
        }

        return model_internal::_IpIsValid;
    }

    model_internal function calculateIpIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_IpValidator.validate(model_internal::_instance.Ip)
        model_internal::_IpIsValid_der = (valRes.results == null);
        model_internal::_IpIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::IpValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::IpValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get IpValidationFailureMessages():Array
    {
        if (model_internal::_IpValidationFailureMessages == null)
            model_internal::calculateIpIsValid();

        return _IpValidationFailureMessages;
    }

    model_internal function set IpValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_IpValidationFailureMessages;

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
            model_internal::_IpValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IpValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get CountryNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get CountryNameValidator() : StyleValidator
    {
        return model_internal::_CountryNameValidator;
    }

    model_internal function set _CountryNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_CountryNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_CountryNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CountryNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get CountryNameIsValid():Boolean
    {
        if (!model_internal::_CountryNameIsValidCacheInitialized)
        {
            model_internal::calculateCountryNameIsValid();
        }

        return model_internal::_CountryNameIsValid;
    }

    model_internal function calculateCountryNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_CountryNameValidator.validate(model_internal::_instance.CountryName)
        model_internal::_CountryNameIsValid_der = (valRes.results == null);
        model_internal::_CountryNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::CountryNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::CountryNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get CountryNameValidationFailureMessages():Array
    {
        if (model_internal::_CountryNameValidationFailureMessages == null)
            model_internal::calculateCountryNameIsValid();

        return _CountryNameValidationFailureMessages;
    }

    model_internal function set CountryNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_CountryNameValidationFailureMessages;

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
            model_internal::_CountryNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CountryNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get RegionNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get RegionNameValidator() : StyleValidator
    {
        return model_internal::_RegionNameValidator;
    }

    model_internal function set _RegionNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_RegionNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_RegionNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RegionNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get RegionNameIsValid():Boolean
    {
        if (!model_internal::_RegionNameIsValidCacheInitialized)
        {
            model_internal::calculateRegionNameIsValid();
        }

        return model_internal::_RegionNameIsValid;
    }

    model_internal function calculateRegionNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_RegionNameValidator.validate(model_internal::_instance.RegionName)
        model_internal::_RegionNameIsValid_der = (valRes.results == null);
        model_internal::_RegionNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::RegionNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::RegionNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get RegionNameValidationFailureMessages():Array
    {
        if (model_internal::_RegionNameValidationFailureMessages == null)
            model_internal::calculateRegionNameIsValid();

        return _RegionNameValidationFailureMessages;
    }

    model_internal function set RegionNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_RegionNameValidationFailureMessages;

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
            model_internal::_RegionNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RegionNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get IsdstStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get IsdstValidator() : StyleValidator
    {
        return model_internal::_IsdstValidator;
    }

    model_internal function set _IsdstIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_IsdstIsValid;         
        if (oldValue !== value)
        {
            model_internal::_IsdstIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IsdstIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get IsdstIsValid():Boolean
    {
        if (!model_internal::_IsdstIsValidCacheInitialized)
        {
            model_internal::calculateIsdstIsValid();
        }

        return model_internal::_IsdstIsValid;
    }

    model_internal function calculateIsdstIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_IsdstValidator.validate(model_internal::_instance.Isdst)
        model_internal::_IsdstIsValid_der = (valRes.results == null);
        model_internal::_IsdstIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::IsdstValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::IsdstValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get IsdstValidationFailureMessages():Array
    {
        if (model_internal::_IsdstValidationFailureMessages == null)
            model_internal::calculateIsdstIsValid();

        return _IsdstValidationFailureMessages;
    }

    model_internal function set IsdstValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_IsdstValidationFailureMessages;

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
            model_internal::_IsdstValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IsdstValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get CityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get CityValidator() : StyleValidator
    {
        return model_internal::_CityValidator;
    }

    model_internal function set _CityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_CityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_CityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get CityIsValid():Boolean
    {
        if (!model_internal::_CityIsValidCacheInitialized)
        {
            model_internal::calculateCityIsValid();
        }

        return model_internal::_CityIsValid;
    }

    model_internal function calculateCityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_CityValidator.validate(model_internal::_instance.City)
        model_internal::_CityIsValid_der = (valRes.results == null);
        model_internal::_CityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::CityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::CityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get CityValidationFailureMessages():Array
    {
        if (model_internal::_CityValidationFailureMessages == null)
            model_internal::calculateCityIsValid();

        return _CityValidationFailureMessages;
    }

    model_internal function set CityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_CityValidationFailureMessages;

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
            model_internal::_CityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CityValidationFailureMessages", oldValue, value));
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
    public function get DstoffsetStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get DstoffsetValidator() : StyleValidator
    {
        return model_internal::_DstoffsetValidator;
    }

    model_internal function set _DstoffsetIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_DstoffsetIsValid;         
        if (oldValue !== value)
        {
            model_internal::_DstoffsetIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DstoffsetIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get DstoffsetIsValid():Boolean
    {
        if (!model_internal::_DstoffsetIsValidCacheInitialized)
        {
            model_internal::calculateDstoffsetIsValid();
        }

        return model_internal::_DstoffsetIsValid;
    }

    model_internal function calculateDstoffsetIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_DstoffsetValidator.validate(model_internal::_instance.Dstoffset)
        model_internal::_DstoffsetIsValid_der = (valRes.results == null);
        model_internal::_DstoffsetIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::DstoffsetValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::DstoffsetValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get DstoffsetValidationFailureMessages():Array
    {
        if (model_internal::_DstoffsetValidationFailureMessages == null)
            model_internal::calculateDstoffsetIsValid();

        return _DstoffsetValidationFailureMessages;
    }

    model_internal function set DstoffsetValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_DstoffsetValidationFailureMessages;

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
            model_internal::_DstoffsetValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DstoffsetValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TimezoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TimezoneValidator() : StyleValidator
    {
        return model_internal::_TimezoneValidator;
    }

    model_internal function set _TimezoneIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TimezoneIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TimezoneIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TimezoneIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TimezoneIsValid():Boolean
    {
        if (!model_internal::_TimezoneIsValidCacheInitialized)
        {
            model_internal::calculateTimezoneIsValid();
        }

        return model_internal::_TimezoneIsValid;
    }

    model_internal function calculateTimezoneIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TimezoneValidator.validate(model_internal::_instance.Timezone)
        model_internal::_TimezoneIsValid_der = (valRes.results == null);
        model_internal::_TimezoneIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TimezoneValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TimezoneValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TimezoneValidationFailureMessages():Array
    {
        if (model_internal::_TimezoneValidationFailureMessages == null)
            model_internal::calculateTimezoneIsValid();

        return _TimezoneValidationFailureMessages;
    }

    model_internal function set TimezoneValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TimezoneValidationFailureMessages;

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
            model_internal::_TimezoneValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TimezoneValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get LatitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LatitudeValidator() : StyleValidator
    {
        return model_internal::_LatitudeValidator;
    }

    model_internal function set _LatitudeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LatitudeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LatitudeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LatitudeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LatitudeIsValid():Boolean
    {
        if (!model_internal::_LatitudeIsValidCacheInitialized)
        {
            model_internal::calculateLatitudeIsValid();
        }

        return model_internal::_LatitudeIsValid;
    }

    model_internal function calculateLatitudeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LatitudeValidator.validate(model_internal::_instance.Latitude)
        model_internal::_LatitudeIsValid_der = (valRes.results == null);
        model_internal::_LatitudeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LatitudeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LatitudeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LatitudeValidationFailureMessages():Array
    {
        if (model_internal::_LatitudeValidationFailureMessages == null)
            model_internal::calculateLatitudeIsValid();

        return _LatitudeValidationFailureMessages;
    }

    model_internal function set LatitudeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LatitudeValidationFailureMessages;

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
            model_internal::_LatitudeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LatitudeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get LongitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LongitudeValidator() : StyleValidator
    {
        return model_internal::_LongitudeValidator;
    }

    model_internal function set _LongitudeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LongitudeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LongitudeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LongitudeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LongitudeIsValid():Boolean
    {
        if (!model_internal::_LongitudeIsValidCacheInitialized)
        {
            model_internal::calculateLongitudeIsValid();
        }

        return model_internal::_LongitudeIsValid;
    }

    model_internal function calculateLongitudeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LongitudeValidator.validate(model_internal::_instance.Longitude)
        model_internal::_LongitudeIsValid_der = (valRes.results == null);
        model_internal::_LongitudeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LongitudeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LongitudeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LongitudeValidationFailureMessages():Array
    {
        if (model_internal::_LongitudeValidationFailureMessages == null)
            model_internal::calculateLongitudeIsValid();

        return _LongitudeValidationFailureMessages;
    }

    model_internal function set LongitudeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LongitudeValidationFailureMessages;

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
            model_internal::_LongitudeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LongitudeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get CountryCodeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get CountryCodeValidator() : StyleValidator
    {
        return model_internal::_CountryCodeValidator;
    }

    model_internal function set _CountryCodeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_CountryCodeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_CountryCodeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CountryCodeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get CountryCodeIsValid():Boolean
    {
        if (!model_internal::_CountryCodeIsValidCacheInitialized)
        {
            model_internal::calculateCountryCodeIsValid();
        }

        return model_internal::_CountryCodeIsValid;
    }

    model_internal function calculateCountryCodeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_CountryCodeValidator.validate(model_internal::_instance.CountryCode)
        model_internal::_CountryCodeIsValid_der = (valRes.results == null);
        model_internal::_CountryCodeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::CountryCodeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::CountryCodeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get CountryCodeValidationFailureMessages():Array
    {
        if (model_internal::_CountryCodeValidationFailureMessages == null)
            model_internal::calculateCountryCodeIsValid();

        return _CountryCodeValidationFailureMessages;
    }

    model_internal function set CountryCodeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_CountryCodeValidationFailureMessages;

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
            model_internal::_CountryCodeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CountryCodeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get GmtoffsetStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get GmtoffsetValidator() : StyleValidator
    {
        return model_internal::_GmtoffsetValidator;
    }

    model_internal function set _GmtoffsetIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_GmtoffsetIsValid;         
        if (oldValue !== value)
        {
            model_internal::_GmtoffsetIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "GmtoffsetIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get GmtoffsetIsValid():Boolean
    {
        if (!model_internal::_GmtoffsetIsValidCacheInitialized)
        {
            model_internal::calculateGmtoffsetIsValid();
        }

        return model_internal::_GmtoffsetIsValid;
    }

    model_internal function calculateGmtoffsetIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_GmtoffsetValidator.validate(model_internal::_instance.Gmtoffset)
        model_internal::_GmtoffsetIsValid_der = (valRes.results == null);
        model_internal::_GmtoffsetIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::GmtoffsetValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::GmtoffsetValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get GmtoffsetValidationFailureMessages():Array
    {
        if (model_internal::_GmtoffsetValidationFailureMessages == null)
            model_internal::calculateGmtoffsetIsValid();

        return _GmtoffsetValidationFailureMessages;
    }

    model_internal function set GmtoffsetValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_GmtoffsetValidationFailureMessages;

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
            model_internal::_GmtoffsetValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "GmtoffsetValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TimezoneNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TimezoneNameValidator() : StyleValidator
    {
        return model_internal::_TimezoneNameValidator;
    }

    model_internal function set _TimezoneNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TimezoneNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TimezoneNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TimezoneNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TimezoneNameIsValid():Boolean
    {
        if (!model_internal::_TimezoneNameIsValidCacheInitialized)
        {
            model_internal::calculateTimezoneNameIsValid();
        }

        return model_internal::_TimezoneNameIsValid;
    }

    model_internal function calculateTimezoneNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TimezoneNameValidator.validate(model_internal::_instance.TimezoneName)
        model_internal::_TimezoneNameIsValid_der = (valRes.results == null);
        model_internal::_TimezoneNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TimezoneNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TimezoneNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TimezoneNameValidationFailureMessages():Array
    {
        if (model_internal::_TimezoneNameValidationFailureMessages == null)
            model_internal::calculateTimezoneNameIsValid();

        return _TimezoneNameValidationFailureMessages;
    }

    model_internal function set TimezoneNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TimezoneNameValidationFailureMessages;

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
            model_internal::_TimezoneNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TimezoneNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get RegionCodeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get RegionCodeValidator() : StyleValidator
    {
        return model_internal::_RegionCodeValidator;
    }

    model_internal function set _RegionCodeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_RegionCodeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_RegionCodeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RegionCodeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get RegionCodeIsValid():Boolean
    {
        if (!model_internal::_RegionCodeIsValidCacheInitialized)
        {
            model_internal::calculateRegionCodeIsValid();
        }

        return model_internal::_RegionCodeIsValid;
    }

    model_internal function calculateRegionCodeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_RegionCodeValidator.validate(model_internal::_instance.RegionCode)
        model_internal::_RegionCodeIsValid_der = (valRes.results == null);
        model_internal::_RegionCodeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::RegionCodeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::RegionCodeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get RegionCodeValidationFailureMessages():Array
    {
        if (model_internal::_RegionCodeValidationFailureMessages == null)
            model_internal::calculateRegionCodeIsValid();

        return _RegionCodeValidationFailureMessages;
    }

    model_internal function set RegionCodeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_RegionCodeValidationFailureMessages;

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
            model_internal::_RegionCodeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RegionCodeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ZipPostalCodeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ZipPostalCodeValidator() : StyleValidator
    {
        return model_internal::_ZipPostalCodeValidator;
    }

    model_internal function set _ZipPostalCodeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ZipPostalCodeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ZipPostalCodeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ZipPostalCodeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ZipPostalCodeIsValid():Boolean
    {
        if (!model_internal::_ZipPostalCodeIsValidCacheInitialized)
        {
            model_internal::calculateZipPostalCodeIsValid();
        }

        return model_internal::_ZipPostalCodeIsValid;
    }

    model_internal function calculateZipPostalCodeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ZipPostalCodeValidator.validate(model_internal::_instance.ZipPostalCode)
        model_internal::_ZipPostalCodeIsValid_der = (valRes.results == null);
        model_internal::_ZipPostalCodeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ZipPostalCodeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ZipPostalCodeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ZipPostalCodeValidationFailureMessages():Array
    {
        if (model_internal::_ZipPostalCodeValidationFailureMessages == null)
            model_internal::calculateZipPostalCodeIsValid();

        return _ZipPostalCodeValidationFailureMessages;
    }

    model_internal function set ZipPostalCodeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ZipPostalCodeValidationFailureMessages;

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
            model_internal::_ZipPostalCodeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ZipPostalCodeValidationFailureMessages", oldValue, value));
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
            case("Ip"):
            {
                return IpValidationFailureMessages;
            }
            case("CountryName"):
            {
                return CountryNameValidationFailureMessages;
            }
            case("RegionName"):
            {
                return RegionNameValidationFailureMessages;
            }
            case("Isdst"):
            {
                return IsdstValidationFailureMessages;
            }
            case("City"):
            {
                return CityValidationFailureMessages;
            }
            case("Status"):
            {
                return StatusValidationFailureMessages;
            }
            case("Dstoffset"):
            {
                return DstoffsetValidationFailureMessages;
            }
            case("Timezone"):
            {
                return TimezoneValidationFailureMessages;
            }
            case("Latitude"):
            {
                return LatitudeValidationFailureMessages;
            }
            case("Longitude"):
            {
                return LongitudeValidationFailureMessages;
            }
            case("CountryCode"):
            {
                return CountryCodeValidationFailureMessages;
            }
            case("Gmtoffset"):
            {
                return GmtoffsetValidationFailureMessages;
            }
            case("TimezoneName"):
            {
                return TimezoneNameValidationFailureMessages;
            }
            case("RegionCode"):
            {
                return RegionCodeValidationFailureMessages;
            }
            case("ZipPostalCode"):
            {
                return ZipPostalCodeValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
