/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - IpInfoResult.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_IpInfoResult extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _IpInfoResultEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_Ip : String;
    private var _internal_CountryName : String;
    private var _internal_RegionName : String;
    private var _internal_Isdst : String;
    private var _internal_City : String;
    private var _internal_Status : String;
    private var _internal_Dstoffset : String;
    private var _internal_Timezone : String;
    private var _internal_Latitude : String;
    private var _internal_Longitude : String;
    private var _internal_CountryCode : String;
    private var _internal_Gmtoffset : String;
    private var _internal_TimezoneName : String;
    private var _internal_RegionCode : String;
    private var _internal_ZipPostalCode : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_IpInfoResult()
    {
        _model = new _IpInfoResultEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Ip", model_internal::setterListenerIp));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "CountryName", model_internal::setterListenerCountryName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RegionName", model_internal::setterListenerRegionName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Isdst", model_internal::setterListenerIsdst));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "City", model_internal::setterListenerCity));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Status", model_internal::setterListenerStatus));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Dstoffset", model_internal::setterListenerDstoffset));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Timezone", model_internal::setterListenerTimezone));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Latitude", model_internal::setterListenerLatitude));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Longitude", model_internal::setterListenerLongitude));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "CountryCode", model_internal::setterListenerCountryCode));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Gmtoffset", model_internal::setterListenerGmtoffset));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TimezoneName", model_internal::setterListenerTimezoneName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RegionCode", model_internal::setterListenerRegionCode));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ZipPostalCode", model_internal::setterListenerZipPostalCode));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get Ip() : String
    {
        return _internal_Ip;
    }

    [Bindable(event="propertyChange")]
    public function get CountryName() : String
    {
        return _internal_CountryName;
    }

    [Bindable(event="propertyChange")]
    public function get RegionName() : String
    {
        return _internal_RegionName;
    }

    [Bindable(event="propertyChange")]
    public function get Isdst() : String
    {
        return _internal_Isdst;
    }

    [Bindable(event="propertyChange")]
    public function get City() : String
    {
        return _internal_City;
    }

    [Bindable(event="propertyChange")]
    public function get Status() : String
    {
        return _internal_Status;
    }

    [Bindable(event="propertyChange")]
    public function get Dstoffset() : String
    {
        return _internal_Dstoffset;
    }

    [Bindable(event="propertyChange")]
    public function get Timezone() : String
    {
        return _internal_Timezone;
    }

    [Bindable(event="propertyChange")]
    public function get Latitude() : String
    {
        return _internal_Latitude;
    }

    [Bindable(event="propertyChange")]
    public function get Longitude() : String
    {
        return _internal_Longitude;
    }

    [Bindable(event="propertyChange")]
    public function get CountryCode() : String
    {
        return _internal_CountryCode;
    }

    [Bindable(event="propertyChange")]
    public function get Gmtoffset() : String
    {
        return _internal_Gmtoffset;
    }

    [Bindable(event="propertyChange")]
    public function get TimezoneName() : String
    {
        return _internal_TimezoneName;
    }

    [Bindable(event="propertyChange")]
    public function get RegionCode() : String
    {
        return _internal_RegionCode;
    }

    [Bindable(event="propertyChange")]
    public function get ZipPostalCode() : String
    {
        return _internal_ZipPostalCode;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set Ip(value:String) : void
    {
        var oldValue:String = _internal_Ip;
        if (oldValue !== value)
        {
            _internal_Ip = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Ip", oldValue, _internal_Ip));
        }
    }

    public function set CountryName(value:String) : void
    {
        var oldValue:String = _internal_CountryName;
        if (oldValue !== value)
        {
            _internal_CountryName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CountryName", oldValue, _internal_CountryName));
        }
    }

    public function set RegionName(value:String) : void
    {
        var oldValue:String = _internal_RegionName;
        if (oldValue !== value)
        {
            _internal_RegionName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RegionName", oldValue, _internal_RegionName));
        }
    }

    public function set Isdst(value:String) : void
    {
        var oldValue:String = _internal_Isdst;
        if (oldValue !== value)
        {
            _internal_Isdst = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Isdst", oldValue, _internal_Isdst));
        }
    }

    public function set City(value:String) : void
    {
        var oldValue:String = _internal_City;
        if (oldValue !== value)
        {
            _internal_City = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "City", oldValue, _internal_City));
        }
    }

    public function set Status(value:String) : void
    {
        var oldValue:String = _internal_Status;
        if (oldValue !== value)
        {
            _internal_Status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Status", oldValue, _internal_Status));
        }
    }

    public function set Dstoffset(value:String) : void
    {
        var oldValue:String = _internal_Dstoffset;
        if (oldValue !== value)
        {
            _internal_Dstoffset = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Dstoffset", oldValue, _internal_Dstoffset));
        }
    }

    public function set Timezone(value:String) : void
    {
        var oldValue:String = _internal_Timezone;
        if (oldValue !== value)
        {
            _internal_Timezone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Timezone", oldValue, _internal_Timezone));
        }
    }

    public function set Latitude(value:String) : void
    {
        var oldValue:String = _internal_Latitude;
        if (oldValue !== value)
        {
            _internal_Latitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Latitude", oldValue, _internal_Latitude));
        }
    }

    public function set Longitude(value:String) : void
    {
        var oldValue:String = _internal_Longitude;
        if (oldValue !== value)
        {
            _internal_Longitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Longitude", oldValue, _internal_Longitude));
        }
    }

    public function set CountryCode(value:String) : void
    {
        var oldValue:String = _internal_CountryCode;
        if (oldValue !== value)
        {
            _internal_CountryCode = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CountryCode", oldValue, _internal_CountryCode));
        }
    }

    public function set Gmtoffset(value:String) : void
    {
        var oldValue:String = _internal_Gmtoffset;
        if (oldValue !== value)
        {
            _internal_Gmtoffset = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Gmtoffset", oldValue, _internal_Gmtoffset));
        }
    }

    public function set TimezoneName(value:String) : void
    {
        var oldValue:String = _internal_TimezoneName;
        if (oldValue !== value)
        {
            _internal_TimezoneName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TimezoneName", oldValue, _internal_TimezoneName));
        }
    }

    public function set RegionCode(value:String) : void
    {
        var oldValue:String = _internal_RegionCode;
        if (oldValue !== value)
        {
            _internal_RegionCode = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RegionCode", oldValue, _internal_RegionCode));
        }
    }

    public function set ZipPostalCode(value:String) : void
    {
        var oldValue:String = _internal_ZipPostalCode;
        if (oldValue !== value)
        {
            _internal_ZipPostalCode = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ZipPostalCode", oldValue, _internal_ZipPostalCode));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerIp(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIp();
    }

    model_internal function setterListenerCountryName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCountryName();
    }

    model_internal function setterListenerRegionName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRegionName();
    }

    model_internal function setterListenerIsdst(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIsdst();
    }

    model_internal function setterListenerCity(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCity();
    }

    model_internal function setterListenerStatus(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStatus();
    }

    model_internal function setterListenerDstoffset(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDstoffset();
    }

    model_internal function setterListenerTimezone(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTimezone();
    }

    model_internal function setterListenerLatitude(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLatitude();
    }

    model_internal function setterListenerLongitude(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLongitude();
    }

    model_internal function setterListenerCountryCode(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCountryCode();
    }

    model_internal function setterListenerGmtoffset(value:flash.events.Event):void
    {
        _model.invalidateDependentOnGmtoffset();
    }

    model_internal function setterListenerTimezoneName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTimezoneName();
    }

    model_internal function setterListenerRegionCode(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRegionCode();
    }

    model_internal function setterListenerZipPostalCode(value:flash.events.Event):void
    {
        _model.invalidateDependentOnZipPostalCode();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.IpIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_IpValidationFailureMessages);
        }
        if (!_model.CountryNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_CountryNameValidationFailureMessages);
        }
        if (!_model.RegionNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_RegionNameValidationFailureMessages);
        }
        if (!_model.IsdstIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_IsdstValidationFailureMessages);
        }
        if (!_model.CityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_CityValidationFailureMessages);
        }
        if (!_model.StatusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_StatusValidationFailureMessages);
        }
        if (!_model.DstoffsetIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_DstoffsetValidationFailureMessages);
        }
        if (!_model.TimezoneIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TimezoneValidationFailureMessages);
        }
        if (!_model.LatitudeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LatitudeValidationFailureMessages);
        }
        if (!_model.LongitudeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LongitudeValidationFailureMessages);
        }
        if (!_model.CountryCodeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_CountryCodeValidationFailureMessages);
        }
        if (!_model.GmtoffsetIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_GmtoffsetValidationFailureMessages);
        }
        if (!_model.TimezoneNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TimezoneNameValidationFailureMessages);
        }
        if (!_model.RegionCodeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_RegionCodeValidationFailureMessages);
        }
        if (!_model.ZipPostalCodeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ZipPostalCodeValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _IpInfoResultEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _IpInfoResultEntityMetadata) : void
    {
        var oldValue : _IpInfoResultEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfIp : Array = null;
    model_internal var _doValidationLastValOfIp : String;

    model_internal function _doValidationForIp(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIp != null && model_internal::_doValidationLastValOfIp == value)
           return model_internal::_doValidationCacheOfIp ;

        _model.model_internal::_IpIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIpAvailable && _internal_Ip == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Ip is required"));
        }

        model_internal::_doValidationCacheOfIp = validationFailures;
        model_internal::_doValidationLastValOfIp = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCountryName : Array = null;
    model_internal var _doValidationLastValOfCountryName : String;

    model_internal function _doValidationForCountryName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCountryName != null && model_internal::_doValidationLastValOfCountryName == value)
           return model_internal::_doValidationCacheOfCountryName ;

        _model.model_internal::_CountryNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCountryNameAvailable && _internal_CountryName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "CountryName is required"));
        }

        model_internal::_doValidationCacheOfCountryName = validationFailures;
        model_internal::_doValidationLastValOfCountryName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRegionName : Array = null;
    model_internal var _doValidationLastValOfRegionName : String;

    model_internal function _doValidationForRegionName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRegionName != null && model_internal::_doValidationLastValOfRegionName == value)
           return model_internal::_doValidationCacheOfRegionName ;

        _model.model_internal::_RegionNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRegionNameAvailable && _internal_RegionName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "RegionName is required"));
        }

        model_internal::_doValidationCacheOfRegionName = validationFailures;
        model_internal::_doValidationLastValOfRegionName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIsdst : Array = null;
    model_internal var _doValidationLastValOfIsdst : String;

    model_internal function _doValidationForIsdst(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIsdst != null && model_internal::_doValidationLastValOfIsdst == value)
           return model_internal::_doValidationCacheOfIsdst ;

        _model.model_internal::_IsdstIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIsdstAvailable && _internal_Isdst == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Isdst is required"));
        }

        model_internal::_doValidationCacheOfIsdst = validationFailures;
        model_internal::_doValidationLastValOfIsdst = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCity : Array = null;
    model_internal var _doValidationLastValOfCity : String;

    model_internal function _doValidationForCity(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCity != null && model_internal::_doValidationLastValOfCity == value)
           return model_internal::_doValidationCacheOfCity ;

        _model.model_internal::_CityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCityAvailable && _internal_City == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "City is required"));
        }

        model_internal::_doValidationCacheOfCity = validationFailures;
        model_internal::_doValidationLastValOfCity = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStatus : Array = null;
    model_internal var _doValidationLastValOfStatus : String;

    model_internal function _doValidationForStatus(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfStatus != null && model_internal::_doValidationLastValOfStatus == value)
           return model_internal::_doValidationCacheOfStatus ;

        _model.model_internal::_StatusIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStatusAvailable && _internal_Status == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Status is required"));
        }

        model_internal::_doValidationCacheOfStatus = validationFailures;
        model_internal::_doValidationLastValOfStatus = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDstoffset : Array = null;
    model_internal var _doValidationLastValOfDstoffset : String;

    model_internal function _doValidationForDstoffset(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDstoffset != null && model_internal::_doValidationLastValOfDstoffset == value)
           return model_internal::_doValidationCacheOfDstoffset ;

        _model.model_internal::_DstoffsetIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDstoffsetAvailable && _internal_Dstoffset == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Dstoffset is required"));
        }

        model_internal::_doValidationCacheOfDstoffset = validationFailures;
        model_internal::_doValidationLastValOfDstoffset = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTimezone : Array = null;
    model_internal var _doValidationLastValOfTimezone : String;

    model_internal function _doValidationForTimezone(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTimezone != null && model_internal::_doValidationLastValOfTimezone == value)
           return model_internal::_doValidationCacheOfTimezone ;

        _model.model_internal::_TimezoneIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTimezoneAvailable && _internal_Timezone == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Timezone is required"));
        }

        model_internal::_doValidationCacheOfTimezone = validationFailures;
        model_internal::_doValidationLastValOfTimezone = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLatitude : Array = null;
    model_internal var _doValidationLastValOfLatitude : String;

    model_internal function _doValidationForLatitude(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLatitude != null && model_internal::_doValidationLastValOfLatitude == value)
           return model_internal::_doValidationCacheOfLatitude ;

        _model.model_internal::_LatitudeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLatitudeAvailable && _internal_Latitude == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Latitude is required"));
        }

        model_internal::_doValidationCacheOfLatitude = validationFailures;
        model_internal::_doValidationLastValOfLatitude = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLongitude : Array = null;
    model_internal var _doValidationLastValOfLongitude : String;

    model_internal function _doValidationForLongitude(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLongitude != null && model_internal::_doValidationLastValOfLongitude == value)
           return model_internal::_doValidationCacheOfLongitude ;

        _model.model_internal::_LongitudeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLongitudeAvailable && _internal_Longitude == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Longitude is required"));
        }

        model_internal::_doValidationCacheOfLongitude = validationFailures;
        model_internal::_doValidationLastValOfLongitude = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCountryCode : Array = null;
    model_internal var _doValidationLastValOfCountryCode : String;

    model_internal function _doValidationForCountryCode(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCountryCode != null && model_internal::_doValidationLastValOfCountryCode == value)
           return model_internal::_doValidationCacheOfCountryCode ;

        _model.model_internal::_CountryCodeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCountryCodeAvailable && _internal_CountryCode == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "CountryCode is required"));
        }

        model_internal::_doValidationCacheOfCountryCode = validationFailures;
        model_internal::_doValidationLastValOfCountryCode = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGmtoffset : Array = null;
    model_internal var _doValidationLastValOfGmtoffset : String;

    model_internal function _doValidationForGmtoffset(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfGmtoffset != null && model_internal::_doValidationLastValOfGmtoffset == value)
           return model_internal::_doValidationCacheOfGmtoffset ;

        _model.model_internal::_GmtoffsetIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGmtoffsetAvailable && _internal_Gmtoffset == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Gmtoffset is required"));
        }

        model_internal::_doValidationCacheOfGmtoffset = validationFailures;
        model_internal::_doValidationLastValOfGmtoffset = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTimezoneName : Array = null;
    model_internal var _doValidationLastValOfTimezoneName : String;

    model_internal function _doValidationForTimezoneName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTimezoneName != null && model_internal::_doValidationLastValOfTimezoneName == value)
           return model_internal::_doValidationCacheOfTimezoneName ;

        _model.model_internal::_TimezoneNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTimezoneNameAvailable && _internal_TimezoneName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TimezoneName is required"));
        }

        model_internal::_doValidationCacheOfTimezoneName = validationFailures;
        model_internal::_doValidationLastValOfTimezoneName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRegionCode : Array = null;
    model_internal var _doValidationLastValOfRegionCode : String;

    model_internal function _doValidationForRegionCode(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRegionCode != null && model_internal::_doValidationLastValOfRegionCode == value)
           return model_internal::_doValidationCacheOfRegionCode ;

        _model.model_internal::_RegionCodeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRegionCodeAvailable && _internal_RegionCode == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "RegionCode is required"));
        }

        model_internal::_doValidationCacheOfRegionCode = validationFailures;
        model_internal::_doValidationLastValOfRegionCode = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfZipPostalCode : Array = null;
    model_internal var _doValidationLastValOfZipPostalCode : String;

    model_internal function _doValidationForZipPostalCode(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfZipPostalCode != null && model_internal::_doValidationLastValOfZipPostalCode == value)
           return model_internal::_doValidationCacheOfZipPostalCode ;

        _model.model_internal::_ZipPostalCodeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isZipPostalCodeAvailable && _internal_ZipPostalCode == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ZipPostalCode is required"));
        }

        model_internal::_doValidationCacheOfZipPostalCode = validationFailures;
        model_internal::_doValidationLastValOfZipPostalCode = value;

        return validationFailures;
    }
    

}

}
