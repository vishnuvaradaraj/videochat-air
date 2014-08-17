/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - BuddyData.as.
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
public class _Super_BuddyData extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _BuddyDataEntityMetadata;
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
    private var _internal_id : String;
    private var _internal_tags : String;
    private var _internal_bookmark : String;
    private var _internal_nick : String;
    private var _internal_created : String;
    private var _internal_updated : String;
    private var _internal_name : String;
    private var _internal_owner : String;
    private var _internal_secret : String;
    private var _internal_org : String;
    private var _internal_photo : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_BuddyData()
    {
        _model = new _BuddyDataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tags", model_internal::setterListenerTags));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "bookmark", model_internal::setterListenerBookmark));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nick", model_internal::setterListenerNick));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "created", model_internal::setterListenerCreated));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updated", model_internal::setterListenerUpdated));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "owner", model_internal::setterListenerOwner));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "secret", model_internal::setterListenerSecret));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "org", model_internal::setterListenerOrg));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "photo", model_internal::setterListenerPhoto));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get tags() : String
    {
        return _internal_tags;
    }

    [Bindable(event="propertyChange")]
    public function get bookmark() : String
    {
        return _internal_bookmark;
    }

    [Bindable(event="propertyChange")]
    public function get nick() : String
    {
        return _internal_nick;
    }

    [Bindable(event="propertyChange")]
    public function get created() : String
    {
        return _internal_created;
    }

    [Bindable(event="propertyChange")]
    public function get updated() : String
    {
        return _internal_updated;
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
    public function get secret() : String
    {
        return _internal_secret;
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

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set tags(value:String) : void
    {
        var oldValue:String = _internal_tags;
        if (oldValue !== value)
        {
            _internal_tags = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tags", oldValue, _internal_tags));
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

    public function set nick(value:String) : void
    {
        var oldValue:String = _internal_nick;
        if (oldValue !== value)
        {
            _internal_nick = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nick", oldValue, _internal_nick));
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

    public function set updated(value:String) : void
    {
        var oldValue:String = _internal_updated;
        if (oldValue !== value)
        {
            _internal_updated = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updated", oldValue, _internal_updated));
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

    public function set secret(value:String) : void
    {
        var oldValue:String = _internal_secret;
        if (oldValue !== value)
        {
            _internal_secret = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "secret", oldValue, _internal_secret));
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

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerTags(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTags();
    }

    model_internal function setterListenerBookmark(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBookmark();
    }

    model_internal function setterListenerNick(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNick();
    }

    model_internal function setterListenerCreated(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCreated();
    }

    model_internal function setterListenerUpdated(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdated();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerOwner(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOwner();
    }

    model_internal function setterListenerSecret(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSecret();
    }

    model_internal function setterListenerOrg(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOrg();
    }

    model_internal function setterListenerPhoto(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPhoto();
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
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.tagsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tagsValidationFailureMessages);
        }
        if (!_model.bookmarkIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_bookmarkValidationFailureMessages);
        }
        if (!_model.nickIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nickValidationFailureMessages);
        }
        if (!_model.createdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_createdValidationFailureMessages);
        }
        if (!_model.updatedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updatedValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.ownerIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ownerValidationFailureMessages);
        }
        if (!_model.secretIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_secretValidationFailureMessages);
        }
        if (!_model.orgIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_orgValidationFailureMessages);
        }
        if (!_model.photoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_photoValidationFailureMessages);
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
    public function get _model() : _BuddyDataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _BuddyDataEntityMetadata) : void
    {
        var oldValue : _BuddyDataEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfTags : Array = null;
    model_internal var _doValidationLastValOfTags : String;

    model_internal function _doValidationForTags(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTags != null && model_internal::_doValidationLastValOfTags == value)
           return model_internal::_doValidationCacheOfTags ;

        _model.model_internal::_tagsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTagsAvailable && _internal_tags == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tags is required"));
        }

        model_internal::_doValidationCacheOfTags = validationFailures;
        model_internal::_doValidationLastValOfTags = value;

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
    
    model_internal var _doValidationCacheOfNick : Array = null;
    model_internal var _doValidationLastValOfNick : String;

    model_internal function _doValidationForNick(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNick != null && model_internal::_doValidationLastValOfNick == value)
           return model_internal::_doValidationCacheOfNick ;

        _model.model_internal::_nickIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNickAvailable && _internal_nick == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nick is required"));
        }

        model_internal::_doValidationCacheOfNick = validationFailures;
        model_internal::_doValidationLastValOfNick = value;

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
    
    model_internal var _doValidationCacheOfSecret : Array = null;
    model_internal var _doValidationLastValOfSecret : String;

    model_internal function _doValidationForSecret(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSecret != null && model_internal::_doValidationLastValOfSecret == value)
           return model_internal::_doValidationCacheOfSecret ;

        _model.model_internal::_secretIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSecretAvailable && _internal_secret == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "secret is required"));
        }

        model_internal::_doValidationCacheOfSecret = validationFailures;
        model_internal::_doValidationLastValOfSecret = value;

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
    
    model_internal var _doValidationCacheOfPhoto : Array = null;
    model_internal var _doValidationLastValOfPhoto : String;

    model_internal function _doValidationForPhoto(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPhoto != null && model_internal::_doValidationLastValOfPhoto == value)
           return model_internal::_doValidationCacheOfPhoto ;

        _model.model_internal::_photoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPhotoAvailable && _internal_photo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "photo is required"));
        }

        model_internal::_doValidationCacheOfPhoto = validationFailures;
        model_internal::_doValidationLastValOfPhoto = value;

        return validationFailures;
    }
    

}

}
