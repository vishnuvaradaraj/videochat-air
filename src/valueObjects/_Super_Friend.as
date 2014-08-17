/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Friend.as.
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
public class _Super_Friend extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FriendEntityMetadata;
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
    private var _internal_description : String;
    private var _internal_age : String;
    private var _internal_gender : String;
    private var _internal_approved : int;
    private var _internal_nick : String;
    private var _internal_peerId : String;
    private var _internal_location : String;
    private var _internal_updated : String;
    private var _internal_photo : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Friend()
    {
        _model = new _FriendEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "peerId", model_internal::setterListenerPeerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated", model_internal::setterListenerUpdated));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get description() : String
    {
        return _internal_description;
    }

    [Bindable(event="propertyChange")]
    public function get age() : String
    {
        return _internal_age;
    }

    [Bindable(event="propertyChange")]
    public function get gender() : String
    {
        return _internal_gender;
    }

    [Bindable(event="propertyChange")]
    public function get approved() : int
    {
        return _internal_approved;
    }

    [Bindable(event="propertyChange")]
    public function get nick() : String
    {
        return _internal_nick;
    }

    [Bindable(event="propertyChange")]
    public function get peerId() : String
    {
        return _internal_peerId;
    }

    [Bindable(event="propertyChange")]
    public function get location() : String
    {
        return _internal_location;
    }

    [Bindable(event="propertyChange")]
    public function get updated() : String
    {
        return _internal_updated;
    }

    [Bindable(event="propertyChange")]
    public function get photo() : String
    {
        return _internal_photo;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
        }
    }

    public function set age(value:String) : void
    {
        var oldValue:String = _internal_age;
        if (oldValue !== value)
        {
            _internal_age = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "age", oldValue, _internal_age));
        }
    }

    public function set gender(value:String) : void
    {
        var oldValue:String = _internal_gender;
        if (oldValue !== value)
        {
            _internal_gender = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gender", oldValue, _internal_gender));
        }
    }

    public function set approved(value:int) : void
    {
        var oldValue:int = _internal_approved;
        if (oldValue !== value)
        {
            _internal_approved = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "approved", oldValue, _internal_approved));
        }
    }

    public function set nick(value:String) : void
    {
        var oldValue:String = _internal_nick;
        if (oldValue !== value)
        {
            _internal_nick = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nick", oldValue, _internal_nick));
        }
    }

    public function set peerId(value:String) : void
    {
        var oldValue:String = _internal_peerId;
        if (oldValue !== value)
        {
            _internal_peerId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peerId", oldValue, _internal_peerId));
        }
    }

    public function set location(value:String) : void
    {
        var oldValue:String = _internal_location;
        if (oldValue !== value)
        {
            _internal_location = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "location", oldValue, _internal_location));
        }
    }

    public function set updated(value:String) : void
    {
        var oldValue:String = _internal_updated;
        if (oldValue !== value)
        {
            _internal_updated = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated", oldValue, _internal_updated));
        }
    }

    public function set photo(value:String) : void
    {
        var oldValue:String = _internal_photo;
        if (oldValue !== value)
        {
            _internal_photo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photo", oldValue, _internal_photo));
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

    model_internal function setterListenerPeerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPeerId();
    }

    model_internal function setterListenerUpdated(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated();
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
        if (!_model.peerIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_peerIdValidationFailureMessages);
        }
        if (!_model.updatedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updatedValidationFailureMessages);
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
    public function get _model() : _FriendEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FriendEntityMetadata) : void
    {
        var oldValue : _FriendEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfPeerId : Array = null;
    model_internal var _doValidationLastValOfPeerId : String;

    model_internal function _doValidationForPeerId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPeerId != null && model_internal::_doValidationLastValOfPeerId == value)
           return model_internal::_doValidationCacheOfPeerId ;

        _model.model_internal::_peerIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPeerIdAvailable && _internal_peerId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "peerId is required"));
        }

        model_internal::_doValidationCacheOfPeerId = validationFailures;
        model_internal::_doValidationLastValOfPeerId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdated : Array = null;
    model_internal var _doValidationLastValOfUpdated : String;

    model_internal function _doValidationForUpdated(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUpdated != null && model_internal::_doValidationLastValOfUpdated == value)
           return model_internal::_doValidationCacheOfUpdated ;

        _model.model_internal::_updatedIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUpdatedAvailable && _internal_updated == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "updated is required"));
        }

        model_internal::_doValidationCacheOfUpdated = validationFailures;
        model_internal::_doValidationLastValOfUpdated = value;

        return validationFailures;
    }
    

}

}
