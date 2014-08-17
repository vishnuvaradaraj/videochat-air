/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FriendList.as.
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
public class _Super_FriendList extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FriendListEntityMetadata;
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
    private var _internal_primaryPhone : String;
    private var _internal_realName : String;
    private var _internal_bookmark : String;
    private var _internal_peerId : String;
    private var _internal_location : String;
    private var _internal_emailAddress : String;
    private var _internal_org : String;
    private var _internal_photo : String;
    private var _internal_id : String;
    private var _internal_lastLogin : String;
    private var _internal_nick : String;
    private var _internal_updated : String;
    private var _internal_created : String;
    private var _internal_description : String;
    private var _internal_age : int;
    private var _internal_name : String;
    private var _internal_owner : String;
    private var _internal_gender : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FriendList()
    {
        _model = new _FriendListEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "primaryPhone", model_internal::setterListenerPrimaryPhone));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "realName", model_internal::setterListenerRealName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "peerId", model_internal::setterListenerPeerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "lastLogin", model_internal::setterListenerLastLogin));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get primaryPhone() : String
    {
        return _internal_primaryPhone;
    }

    [Bindable(event="propertyChange")]
    public function get realName() : String
    {
        return _internal_realName;
    }

    [Bindable(event="propertyChange")]
    public function get bookmark() : String
    {
        return _internal_bookmark;
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
    public function get emailAddress() : String
    {
        return _internal_emailAddress;
    }

    [Bindable(event="propertyChange")]
    public function get org() : String
    {
        return _internal_org;
    }

    [Bindable(event="propertyChange")]
    public function get photo() : String
    {
        return _internal_photo;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get lastLogin() : String
    {
        return _internal_lastLogin;
    }

    [Bindable(event="propertyChange")]
    public function get nick() : String
    {
        return _internal_nick;
    }

    [Bindable(event="propertyChange")]
    public function get updated() : String
    {
        return _internal_updated;
    }

    [Bindable(event="propertyChange")]
    public function get created() : String
    {
        return _internal_created;
    }

    [Bindable(event="propertyChange")]
    public function get description() : String
    {
        return _internal_description;
    }

    [Bindable(event="propertyChange")]
    public function get age() : int
    {
        return _internal_age;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get owner() : String
    {
        return _internal_owner;
    }

    [Bindable(event="propertyChange")]
    public function get gender() : String
    {
        return _internal_gender;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set primaryPhone(value:String) : void
    {
        var oldValue:String = _internal_primaryPhone;
        if (oldValue !== value)
        {
            _internal_primaryPhone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "primaryPhone", oldValue, _internal_primaryPhone));
        }
    }

    public function set realName(value:String) : void
    {
        var oldValue:String = _internal_realName;
        if (oldValue !== value)
        {
            _internal_realName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "realName", oldValue, _internal_realName));
        }
    }

    public function set bookmark(value:String) : void
    {
        var oldValue:String = _internal_bookmark;
        if (oldValue !== value)
        {
            _internal_bookmark = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bookmark", oldValue, _internal_bookmark));
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

    public function set emailAddress(value:String) : void
    {
        var oldValue:String = _internal_emailAddress;
        if (oldValue !== value)
        {
            _internal_emailAddress = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "emailAddress", oldValue, _internal_emailAddress));
        }
    }

    public function set org(value:String) : void
    {
        var oldValue:String = _internal_org;
        if (oldValue !== value)
        {
            _internal_org = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "org", oldValue, _internal_org));
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

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set lastLogin(value:String) : void
    {
        var oldValue:String = _internal_lastLogin;
        if (oldValue !== value)
        {
            _internal_lastLogin = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastLogin", oldValue, _internal_lastLogin));
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

    public function set updated(value:String) : void
    {
        var oldValue:String = _internal_updated;
        if (oldValue !== value)
        {
            _internal_updated = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated", oldValue, _internal_updated));
        }
    }

    public function set created(value:String) : void
    {
        var oldValue:String = _internal_created;
        if (oldValue !== value)
        {
            _internal_created = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created", oldValue, _internal_created));
        }
    }

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
        }
    }

    public function set age(value:int) : void
    {
        var oldValue:int = _internal_age;
        if (oldValue !== value)
        {
            _internal_age = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "age", oldValue, _internal_age));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set owner(value:String) : void
    {
        var oldValue:String = _internal_owner;
        if (oldValue !== value)
        {
            _internal_owner = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "owner", oldValue, _internal_owner));
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

    model_internal function setterListenerPrimaryPhone(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPrimaryPhone();
    }

    model_internal function setterListenerRealName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRealName();
    }

    model_internal function setterListenerPeerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPeerId();
    }

    model_internal function setterListenerLastLogin(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLastLogin();
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
        if (!_model.primaryPhoneIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_primaryPhoneValidationFailureMessages);
        }
        if (!_model.realNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_realNameValidationFailureMessages);
        }
        if (!_model.peerIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_peerIdValidationFailureMessages);
        }
        if (!_model.lastLoginIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_lastLoginValidationFailureMessages);
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
    public function get _model() : _FriendListEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FriendListEntityMetadata) : void
    {
        var oldValue : _FriendListEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfPrimaryPhone : Array = null;
    model_internal var _doValidationLastValOfPrimaryPhone : String;

    model_internal function _doValidationForPrimaryPhone(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPrimaryPhone != null && model_internal::_doValidationLastValOfPrimaryPhone == value)
           return model_internal::_doValidationCacheOfPrimaryPhone ;

        _model.model_internal::_primaryPhoneIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPrimaryPhoneAvailable && _internal_primaryPhone == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "primaryPhone is required"));
        }

        model_internal::_doValidationCacheOfPrimaryPhone = validationFailures;
        model_internal::_doValidationLastValOfPrimaryPhone = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRealName : Array = null;
    model_internal var _doValidationLastValOfRealName : String;

    model_internal function _doValidationForRealName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRealName != null && model_internal::_doValidationLastValOfRealName == value)
           return model_internal::_doValidationCacheOfRealName ;

        _model.model_internal::_realNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRealNameAvailable && _internal_realName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "realName is required"));
        }

        model_internal::_doValidationCacheOfRealName = validationFailures;
        model_internal::_doValidationLastValOfRealName = value;

        return validationFailures;
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
    
    model_internal var _doValidationCacheOfLastLogin : Array = null;
    model_internal var _doValidationLastValOfLastLogin : String;

    model_internal function _doValidationForLastLogin(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLastLogin != null && model_internal::_doValidationLastValOfLastLogin == value)
           return model_internal::_doValidationCacheOfLastLogin ;

        _model.model_internal::_lastLoginIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLastLoginAvailable && _internal_lastLogin == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "lastLogin is required"));
        }

        model_internal::_doValidationCacheOfLastLogin = validationFailures;
        model_internal::_doValidationLastValOfLastLogin = value;

        return validationFailures;
    }
    

}

}
