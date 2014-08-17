/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Data.as.
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
public class _Super_Data extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _DataEntityMetadata;
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
    private var _internal_Description : String;
    private var _internal_Age : int;
    private var _internal_bookmark : String;
    private var _internal_Location : String;
    private var _internal_org : String;
    private var _internal_LastName : String;
    private var _internal_Photo : String;
    private var _internal_id : String;
    private var _internal_PrimaryPhone : String;
    private var _internal_Status : String;
    private var _internal_updated : String;
    private var _internal_created : String;
    private var _internal_name : String;
    private var _internal_Gender : String;
    private var _internal_owner : String;
    private var _internal_EmailAddress : String;
    private var _internal_FirstName : String;
    private var _internal_Interests : String;
    private var _internal_Nick : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Data()
    {
        _model = new _DataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Description", model_internal::setterListenerDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "bookmark", model_internal::setterListenerBookmark));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Location", model_internal::setterListenerLocation));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "org", model_internal::setterListenerOrg));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "LastName", model_internal::setterListenerLastName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Photo", model_internal::setterListenerPhoto));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "PrimaryPhone", model_internal::setterListenerPrimaryPhone));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Status", model_internal::setterListenerStatus));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated", model_internal::setterListenerUpdated));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "created", model_internal::setterListenerCreated));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Gender", model_internal::setterListenerGender));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "owner", model_internal::setterListenerOwner));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "EmailAddress", model_internal::setterListenerEmailAddress));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "FirstName", model_internal::setterListenerFirstName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Interests", model_internal::setterListenerInterests));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Nick", model_internal::setterListenerNick));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get Description() : String
    {
        return _internal_Description;
    }

    [Bindable(event="propertyChange")]
    public function get Age() : int
    {
        return _internal_Age;
    }

    [Bindable(event="propertyChange")]
    public function get bookmark() : String
    {
        return _internal_bookmark;
    }

    [Bindable(event="propertyChange")]
    public function get Location() : String
    {
        return _internal_Location;
    }

    [Bindable(event="propertyChange")]
    public function get org() : String
    {
        return _internal_org;
    }

    [Bindable(event="propertyChange")]
    public function get LastName() : String
    {
        return _internal_LastName;
    }

    [Bindable(event="propertyChange")]
    public function get Photo() : String
    {
        return _internal_Photo;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get PrimaryPhone() : String
    {
        return _internal_PrimaryPhone;
    }

    [Bindable(event="propertyChange")]
    public function get Status() : String
    {
        return _internal_Status;
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
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get Gender() : String
    {
        return _internal_Gender;
    }

    [Bindable(event="propertyChange")]
    public function get owner() : String
    {
        return _internal_owner;
    }

    [Bindable(event="propertyChange")]
    public function get EmailAddress() : String
    {
        return _internal_EmailAddress;
    }

    [Bindable(event="propertyChange")]
    public function get FirstName() : String
    {
        return _internal_FirstName;
    }

    [Bindable(event="propertyChange")]
    public function get Interests() : String
    {
        return _internal_Interests;
    }

    [Bindable(event="propertyChange")]
    public function get Nick() : String
    {
        return _internal_Nick;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set Description(value:String) : void
    {
        var oldValue:String = _internal_Description;
        if (oldValue !== value)
        {
            _internal_Description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Description", oldValue, _internal_Description));
        }
    }

    public function set Age(value:int) : void
    {
        var oldValue:int = _internal_Age;
        if (oldValue !== value)
        {
            _internal_Age = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Age", oldValue, _internal_Age));
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

    public function set Location(value:String) : void
    {
        var oldValue:String = _internal_Location;
        if (oldValue !== value)
        {
            _internal_Location = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Location", oldValue, _internal_Location));
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

    public function set LastName(value:String) : void
    {
        var oldValue:String = _internal_LastName;
        if (oldValue !== value)
        {
            _internal_LastName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LastName", oldValue, _internal_LastName));
        }
    }

    public function set Photo(value:String) : void
    {
        var oldValue:String = _internal_Photo;
        if (oldValue !== value)
        {
            _internal_Photo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Photo", oldValue, _internal_Photo));
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

    public function set PrimaryPhone(value:String) : void
    {
        var oldValue:String = _internal_PrimaryPhone;
        if (oldValue !== value)
        {
            _internal_PrimaryPhone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PrimaryPhone", oldValue, _internal_PrimaryPhone));
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

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set Gender(value:String) : void
    {
        var oldValue:String = _internal_Gender;
        if (oldValue !== value)
        {
            _internal_Gender = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Gender", oldValue, _internal_Gender));
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

    public function set EmailAddress(value:String) : void
    {
        var oldValue:String = _internal_EmailAddress;
        if (oldValue !== value)
        {
            _internal_EmailAddress = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "EmailAddress", oldValue, _internal_EmailAddress));
        }
    }

    public function set FirstName(value:String) : void
    {
        var oldValue:String = _internal_FirstName;
        if (oldValue !== value)
        {
            _internal_FirstName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "FirstName", oldValue, _internal_FirstName));
        }
    }

    public function set Interests(value:String) : void
    {
        var oldValue:String = _internal_Interests;
        if (oldValue !== value)
        {
            _internal_Interests = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Interests", oldValue, _internal_Interests));
        }
    }

    public function set Nick(value:String) : void
    {
        var oldValue:String = _internal_Nick;
        if (oldValue !== value)
        {
            _internal_Nick = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Nick", oldValue, _internal_Nick));
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

    model_internal function setterListenerDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescription();
    }

    model_internal function setterListenerBookmark(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBookmark();
    }

    model_internal function setterListenerLocation(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLocation();
    }

    model_internal function setterListenerOrg(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOrg();
    }

    model_internal function setterListenerLastName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLastName();
    }

    model_internal function setterListenerPhoto(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPhoto();
    }

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerPrimaryPhone(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPrimaryPhone();
    }

    model_internal function setterListenerStatus(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStatus();
    }

    model_internal function setterListenerUpdated(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated();
    }

    model_internal function setterListenerCreated(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCreated();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerGender(value:flash.events.Event):void
    {
        _model.invalidateDependentOnGender();
    }

    model_internal function setterListenerOwner(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOwner();
    }

    model_internal function setterListenerEmailAddress(value:flash.events.Event):void
    {
        _model.invalidateDependentOnEmailAddress();
    }

    model_internal function setterListenerFirstName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFirstName();
    }

    model_internal function setterListenerInterests(value:flash.events.Event):void
    {
        _model.invalidateDependentOnInterests();
    }

    model_internal function setterListenerNick(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNick();
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
        if (!_model.DescriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_DescriptionValidationFailureMessages);
        }
        if (!_model.bookmarkIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_bookmarkValidationFailureMessages);
        }
        if (!_model.LocationIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LocationValidationFailureMessages);
        }
        if (!_model.orgIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_orgValidationFailureMessages);
        }
        if (!_model.LastNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LastNameValidationFailureMessages);
        }
        if (!_model.PhotoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_PhotoValidationFailureMessages);
        }
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.PrimaryPhoneIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_PrimaryPhoneValidationFailureMessages);
        }
        if (!_model.StatusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_StatusValidationFailureMessages);
        }
        if (!_model.updatedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updatedValidationFailureMessages);
        }
        if (!_model.createdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_createdValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.GenderIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_GenderValidationFailureMessages);
        }
        if (!_model.ownerIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ownerValidationFailureMessages);
        }
        if (!_model.EmailAddressIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_EmailAddressValidationFailureMessages);
        }
        if (!_model.FirstNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_FirstNameValidationFailureMessages);
        }
        if (!_model.InterestsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_InterestsValidationFailureMessages);
        }
        if (!_model.NickIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_NickValidationFailureMessages);
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
    public function get _model() : _DataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _DataEntityMetadata) : void
    {
        var oldValue : _DataEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfDescription : Array = null;
    model_internal var _doValidationLastValOfDescription : String;

    model_internal function _doValidationForDescription(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescription != null && model_internal::_doValidationLastValOfDescription == value)
           return model_internal::_doValidationCacheOfDescription ;

        _model.model_internal::_DescriptionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescriptionAvailable && _internal_Description == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Description is required"));
        }

        model_internal::_doValidationCacheOfDescription = validationFailures;
        model_internal::_doValidationLastValOfDescription = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBookmark : Array = null;
    model_internal var _doValidationLastValOfBookmark : String;

    model_internal function _doValidationForBookmark(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfBookmark != null && model_internal::_doValidationLastValOfBookmark == value)
           return model_internal::_doValidationCacheOfBookmark ;

        _model.model_internal::_bookmarkIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBookmarkAvailable && _internal_bookmark == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "bookmark is required"));
        }

        model_internal::_doValidationCacheOfBookmark = validationFailures;
        model_internal::_doValidationLastValOfBookmark = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLocation : Array = null;
    model_internal var _doValidationLastValOfLocation : String;

    model_internal function _doValidationForLocation(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLocation != null && model_internal::_doValidationLastValOfLocation == value)
           return model_internal::_doValidationCacheOfLocation ;

        _model.model_internal::_LocationIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLocationAvailable && _internal_Location == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Location is required"));
        }

        model_internal::_doValidationCacheOfLocation = validationFailures;
        model_internal::_doValidationLastValOfLocation = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOrg : Array = null;
    model_internal var _doValidationLastValOfOrg : String;

    model_internal function _doValidationForOrg(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOrg != null && model_internal::_doValidationLastValOfOrg == value)
           return model_internal::_doValidationCacheOfOrg ;

        _model.model_internal::_orgIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOrgAvailable && _internal_org == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "org is required"));
        }

        model_internal::_doValidationCacheOfOrg = validationFailures;
        model_internal::_doValidationLastValOfOrg = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLastName : Array = null;
    model_internal var _doValidationLastValOfLastName : String;

    model_internal function _doValidationForLastName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLastName != null && model_internal::_doValidationLastValOfLastName == value)
           return model_internal::_doValidationCacheOfLastName ;

        _model.model_internal::_LastNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLastNameAvailable && _internal_LastName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "LastName is required"));
        }

        model_internal::_doValidationCacheOfLastName = validationFailures;
        model_internal::_doValidationLastValOfLastName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPhoto : Array = null;
    model_internal var _doValidationLastValOfPhoto : String;

    model_internal function _doValidationForPhoto(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPhoto != null && model_internal::_doValidationLastValOfPhoto == value)
           return model_internal::_doValidationCacheOfPhoto ;

        _model.model_internal::_PhotoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPhotoAvailable && _internal_Photo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Photo is required"));
        }

        model_internal::_doValidationCacheOfPhoto = validationFailures;
        model_internal::_doValidationLastValOfPhoto = value;

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
    
    model_internal var _doValidationCacheOfPrimaryPhone : Array = null;
    model_internal var _doValidationLastValOfPrimaryPhone : String;

    model_internal function _doValidationForPrimaryPhone(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPrimaryPhone != null && model_internal::_doValidationLastValOfPrimaryPhone == value)
           return model_internal::_doValidationCacheOfPrimaryPhone ;

        _model.model_internal::_PrimaryPhoneIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPrimaryPhoneAvailable && _internal_PrimaryPhone == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "PrimaryPhone is required"));
        }

        model_internal::_doValidationCacheOfPrimaryPhone = validationFailures;
        model_internal::_doValidationLastValOfPrimaryPhone = value;

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
    
    model_internal var _doValidationCacheOfCreated : Array = null;
    model_internal var _doValidationLastValOfCreated : String;

    model_internal function _doValidationForCreated(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCreated != null && model_internal::_doValidationLastValOfCreated == value)
           return model_internal::_doValidationCacheOfCreated ;

        _model.model_internal::_createdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCreatedAvailable && _internal_created == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "created is required"));
        }

        model_internal::_doValidationCacheOfCreated = validationFailures;
        model_internal::_doValidationLastValOfCreated = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGender : Array = null;
    model_internal var _doValidationLastValOfGender : String;

    model_internal function _doValidationForGender(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfGender != null && model_internal::_doValidationLastValOfGender == value)
           return model_internal::_doValidationCacheOfGender ;

        _model.model_internal::_GenderIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGenderAvailable && _internal_Gender == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Gender is required"));
        }

        model_internal::_doValidationCacheOfGender = validationFailures;
        model_internal::_doValidationLastValOfGender = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOwner : Array = null;
    model_internal var _doValidationLastValOfOwner : String;

    model_internal function _doValidationForOwner(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOwner != null && model_internal::_doValidationLastValOfOwner == value)
           return model_internal::_doValidationCacheOfOwner ;

        _model.model_internal::_ownerIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOwnerAvailable && _internal_owner == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "owner is required"));
        }

        model_internal::_doValidationCacheOfOwner = validationFailures;
        model_internal::_doValidationLastValOfOwner = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfEmailAddress : Array = null;
    model_internal var _doValidationLastValOfEmailAddress : String;

    model_internal function _doValidationForEmailAddress(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfEmailAddress != null && model_internal::_doValidationLastValOfEmailAddress == value)
           return model_internal::_doValidationCacheOfEmailAddress ;

        _model.model_internal::_EmailAddressIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isEmailAddressAvailable && _internal_EmailAddress == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "EmailAddress is required"));
        }

        model_internal::_doValidationCacheOfEmailAddress = validationFailures;
        model_internal::_doValidationLastValOfEmailAddress = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFirstName : Array = null;
    model_internal var _doValidationLastValOfFirstName : String;

    model_internal function _doValidationForFirstName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFirstName != null && model_internal::_doValidationLastValOfFirstName == value)
           return model_internal::_doValidationCacheOfFirstName ;

        _model.model_internal::_FirstNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFirstNameAvailable && _internal_FirstName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "FirstName is required"));
        }

        model_internal::_doValidationCacheOfFirstName = validationFailures;
        model_internal::_doValidationLastValOfFirstName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfInterests : Array = null;
    model_internal var _doValidationLastValOfInterests : String;

    model_internal function _doValidationForInterests(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfInterests != null && model_internal::_doValidationLastValOfInterests == value)
           return model_internal::_doValidationCacheOfInterests ;

        _model.model_internal::_InterestsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isInterestsAvailable && _internal_Interests == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Interests is required"));
        }

        model_internal::_doValidationCacheOfInterests = validationFailures;
        model_internal::_doValidationLastValOfInterests = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNick : Array = null;
    model_internal var _doValidationLastValOfNick : String;

    model_internal function _doValidationForNick(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNick != null && model_internal::_doValidationLastValOfNick == value)
           return model_internal::_doValidationCacheOfNick ;

        _model.model_internal::_NickIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNickAvailable && _internal_Nick == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Nick is required"));
        }

        model_internal::_doValidationCacheOfNick = validationFailures;
        model_internal::_doValidationLastValOfNick = value;

        return validationFailures;
    }
    

}

}
