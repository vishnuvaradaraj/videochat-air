/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - InitUploadResult.as.
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
public class _Super_InitUploadResult extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _InitUploadResultEntityMetadata;
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
    private var _internal_url : String;
    private var _internal_uploadUrl : String;
    private var _internal_id : String;
    private var _internal_status : int;
    private var _internal_fileUrl : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_InitUploadResult()
    {
        _model = new _InitUploadResultEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "url", model_internal::setterListenerUrl));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "uploadUrl", model_internal::setterListenerUploadUrl));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "fileUrl", model_internal::setterListenerFileUrl));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get url() : String
    {
        return _internal_url;
    }

    [Bindable(event="propertyChange")]
    public function get uploadUrl() : String
    {
        return _internal_uploadUrl;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get status() : int
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get fileUrl() : String
    {
        return _internal_fileUrl;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set url(value:String) : void
    {
        var oldValue:String = _internal_url;
        if (oldValue !== value)
        {
            _internal_url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "url", oldValue, _internal_url));
        }
    }

    public function set uploadUrl(value:String) : void
    {
        var oldValue:String = _internal_uploadUrl;
        if (oldValue !== value)
        {
            _internal_uploadUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uploadUrl", oldValue, _internal_uploadUrl));
        }
    }

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set status(value:int) : void
    {
        var oldValue:int = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set fileUrl(value:String) : void
    {
        var oldValue:String = _internal_fileUrl;
        if (oldValue !== value)
        {
            _internal_fileUrl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fileUrl", oldValue, _internal_fileUrl));
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

    model_internal function setterListenerUrl(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUrl();
    }

    model_internal function setterListenerUploadUrl(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUploadUrl();
    }

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerFileUrl(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFileUrl();
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
        if (!_model.urlIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_urlValidationFailureMessages);
        }
        if (!_model.uploadUrlIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_uploadUrlValidationFailureMessages);
        }
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.fileUrlIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fileUrlValidationFailureMessages);
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
    public function get _model() : _InitUploadResultEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _InitUploadResultEntityMetadata) : void
    {
        var oldValue : _InitUploadResultEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfUrl : Array = null;
    model_internal var _doValidationLastValOfUrl : String;

    model_internal function _doValidationForUrl(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUrl != null && model_internal::_doValidationLastValOfUrl == value)
           return model_internal::_doValidationCacheOfUrl ;

        _model.model_internal::_urlIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUrlAvailable && _internal_url == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "url is required"));
        }

        model_internal::_doValidationCacheOfUrl = validationFailures;
        model_internal::_doValidationLastValOfUrl = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUploadUrl : Array = null;
    model_internal var _doValidationLastValOfUploadUrl : String;

    model_internal function _doValidationForUploadUrl(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUploadUrl != null && model_internal::_doValidationLastValOfUploadUrl == value)
           return model_internal::_doValidationCacheOfUploadUrl ;

        _model.model_internal::_uploadUrlIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUploadUrlAvailable && _internal_uploadUrl == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "uploadUrl is required"));
        }

        model_internal::_doValidationCacheOfUploadUrl = validationFailures;
        model_internal::_doValidationLastValOfUploadUrl = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId : Array = null;
    model_internal var _doValidationLastValOfId : String;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId != null && model_internal::_doValidationLastValOfId == value)
           return model_internal::_doValidationCacheOfId ;

        _model.model_internal::_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAvailable && _internal_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id is required"));
        }

        model_internal::_doValidationCacheOfId = validationFailures;
        model_internal::_doValidationLastValOfId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFileUrl : Array = null;
    model_internal var _doValidationLastValOfFileUrl : String;

    model_internal function _doValidationForFileUrl(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFileUrl != null && model_internal::_doValidationLastValOfFileUrl == value)
           return model_internal::_doValidationCacheOfFileUrl ;

        _model.model_internal::_fileUrlIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFileUrlAvailable && _internal_fileUrl == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "fileUrl is required"));
        }

        model_internal::_doValidationCacheOfFileUrl = validationFailures;
        model_internal::_doValidationLastValOfFileUrl = value;

        return validationFailures;
    }
    

}

}
