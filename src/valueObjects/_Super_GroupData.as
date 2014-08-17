/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - GroupData.as.
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
public class _Super_GroupData extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _GroupDataEntityMetadata;
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
    private var _internal_groupId : String;
    private var _internal_nick : String;
    private var _internal_description : String;
    private var _internal_tags : String;
    private var _internal_sourcePhoto : String;
    private var _internal_bookmark : String;
    private var _internal_location : String;
    private var _internal_itemType : String;
    private var _internal_targetUser : String;
    private var _internal_org : String;
    private var _internal_id : String;
    private var _internal_updated : String;
    private var _internal_created : String;
    private var _internal_isPrivate : String;
    private var _internal_name : String;
    private var _internal_owner : String;
    private var _internal_secret : String;
    private var _internal_comments : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_GroupData()
    {
        _model = new _GroupDataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "groupId", model_internal::setterListenerGroupId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nick", model_internal::setterListenerNick));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "description", model_internal::setterListenerDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tags", model_internal::setterListenerTags));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sourcePhoto", model_internal::setterListenerSourcePhoto));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "location", model_internal::setterListenerLocation));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "itemType", model_internal::setterListenerItemType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "targetUser", model_internal::setterListenerTargetUser));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "isPrivate", model_internal::setterListenerIsPrivate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "comments", model_internal::setterListenerComments));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get groupId() : String
    {
        return _internal_groupId;
    }

    [Bindable(event="propertyChange")]
    public function get nick() : String
    {
        return _internal_nick;
    }

    [Bindable(event="propertyChange")]
    public function get description() : String
    {
        return _internal_description;
    }

    [Bindable(event="propertyChange")]
    public function get tags() : String
    {
        return _internal_tags;
    }

    [Bindable(event="propertyChange")]
    public function get sourcePhoto() : String
    {
        return _internal_sourcePhoto;
    }

    [Bindable(event="propertyChange")]
    public function get bookmark() : String
    {
        return _internal_bookmark;
    }

    [Bindable(event="propertyChange")]
    public function get location() : String
    {
        return _internal_location;
    }

    [Bindable(event="propertyChange")]
    public function get itemType() : String
    {
        return _internal_itemType;
    }

    [Bindable(event="propertyChange")]
    public function get targetUser() : String
    {
        return _internal_targetUser;
    }

    [Bindable(event="propertyChange")]
    public function get org() : String
    {
        return _internal_org;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
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
    public function get isPrivate() : String
    {
        return _internal_isPrivate;
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
    public function get comments() : String
    {
        return _internal_comments;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set groupId(value:String) : void
    {
        var oldValue:String = _internal_groupId;
        if (oldValue !== value)
        {
            _internal_groupId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "groupId", oldValue, _internal_groupId));
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

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
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

    public function set sourcePhoto(value:String) : void
    {
        var oldValue:String = _internal_sourcePhoto;
        if (oldValue !== value)
        {
            _internal_sourcePhoto = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourcePhoto", oldValue, _internal_sourcePhoto));
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

    public function set location(value:String) : void
    {
        var oldValue:String = _internal_location;
        if (oldValue !== value)
        {
            _internal_location = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "location", oldValue, _internal_location));
        }
    }

    public function set itemType(value:String) : void
    {
        var oldValue:String = _internal_itemType;
        if (oldValue !== value)
        {
            _internal_itemType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "itemType", oldValue, _internal_itemType));
        }
    }

    public function set targetUser(value:String) : void
    {
        var oldValue:String = _internal_targetUser;
        if (oldValue !== value)
        {
            _internal_targetUser = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "targetUser", oldValue, _internal_targetUser));
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

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
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

    public function set isPrivate(value:String) : void
    {
        var oldValue:String = _internal_isPrivate;
        if (oldValue !== value)
        {
            _internal_isPrivate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isPrivate", oldValue, _internal_isPrivate));
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

    public function set comments(value:String) : void
    {
        var oldValue:String = _internal_comments;
        if (oldValue !== value)
        {
            _internal_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comments", oldValue, _internal_comments));
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

    model_internal function setterListenerGroupId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnGroupId();
    }

    model_internal function setterListenerNick(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNick();
    }

    model_internal function setterListenerDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescription();
    }

    model_internal function setterListenerTags(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTags();
    }

    model_internal function setterListenerSourcePhoto(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSourcePhoto();
    }

    model_internal function setterListenerLocation(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLocation();
    }

    model_internal function setterListenerItemType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnItemType();
    }

    model_internal function setterListenerTargetUser(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTargetUser();
    }

    model_internal function setterListenerIsPrivate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIsPrivate();
    }

    model_internal function setterListenerComments(value:flash.events.Event):void
    {
        _model.invalidateDependentOnComments();
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
        if (!_model.groupIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_groupIdValidationFailureMessages);
        }
        if (!_model.nickIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nickValidationFailureMessages);
        }
        if (!_model.descriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descriptionValidationFailureMessages);
        }
        if (!_model.tagsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tagsValidationFailureMessages);
        }
        if (!_model.sourcePhotoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sourcePhotoValidationFailureMessages);
        }
        if (!_model.locationIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_locationValidationFailureMessages);
        }
        if (!_model.itemTypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_itemTypeValidationFailureMessages);
        }
        if (!_model.targetUserIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_targetUserValidationFailureMessages);
        }
        if (!_model.isPrivateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_isPrivateValidationFailureMessages);
        }
        if (!_model.commentsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_commentsValidationFailureMessages);
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
    public function get _model() : _GroupDataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _GroupDataEntityMetadata) : void
    {
        var oldValue : _GroupDataEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfGroupId : Array = null;
    model_internal var _doValidationLastValOfGroupId : String;

    model_internal function _doValidationForGroupId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfGroupId != null && model_internal::_doValidationLastValOfGroupId == value)
           return model_internal::_doValidationCacheOfGroupId ;

        _model.model_internal::_groupIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGroupIdAvailable && _internal_groupId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "groupId is required"));
        }

        model_internal::_doValidationCacheOfGroupId = validationFailures;
        model_internal::_doValidationLastValOfGroupId = value;

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
    
    model_internal var _doValidationCacheOfDescription : Array = null;
    model_internal var _doValidationLastValOfDescription : String;

    model_internal function _doValidationForDescription(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescription != null && model_internal::_doValidationLastValOfDescription == value)
           return model_internal::_doValidationCacheOfDescription ;

        _model.model_internal::_descriptionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescriptionAvailable && _internal_description == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "description is required"));
        }

        model_internal::_doValidationCacheOfDescription = validationFailures;
        model_internal::_doValidationLastValOfDescription = value;

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
    
    model_internal var _doValidationCacheOfSourcePhoto : Array = null;
    model_internal var _doValidationLastValOfSourcePhoto : String;

    model_internal function _doValidationForSourcePhoto(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSourcePhoto != null && model_internal::_doValidationLastValOfSourcePhoto == value)
           return model_internal::_doValidationCacheOfSourcePhoto ;

        _model.model_internal::_sourcePhotoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSourcePhotoAvailable && _internal_sourcePhoto == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sourcePhoto is required"));
        }

        model_internal::_doValidationCacheOfSourcePhoto = validationFailures;
        model_internal::_doValidationLastValOfSourcePhoto = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLocation : Array = null;
    model_internal var _doValidationLastValOfLocation : String;

    model_internal function _doValidationForLocation(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLocation != null && model_internal::_doValidationLastValOfLocation == value)
           return model_internal::_doValidationCacheOfLocation ;

        _model.model_internal::_locationIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLocationAvailable && _internal_location == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "location is required"));
        }

        model_internal::_doValidationCacheOfLocation = validationFailures;
        model_internal::_doValidationLastValOfLocation = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfItemType : Array = null;
    model_internal var _doValidationLastValOfItemType : String;

    model_internal function _doValidationForItemType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfItemType != null && model_internal::_doValidationLastValOfItemType == value)
           return model_internal::_doValidationCacheOfItemType ;

        _model.model_internal::_itemTypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isItemTypeAvailable && _internal_itemType == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "itemType is required"));
        }

        model_internal::_doValidationCacheOfItemType = validationFailures;
        model_internal::_doValidationLastValOfItemType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTargetUser : Array = null;
    model_internal var _doValidationLastValOfTargetUser : String;

    model_internal function _doValidationForTargetUser(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTargetUser != null && model_internal::_doValidationLastValOfTargetUser == value)
           return model_internal::_doValidationCacheOfTargetUser ;

        _model.model_internal::_targetUserIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTargetUserAvailable && _internal_targetUser == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "targetUser is required"));
        }

        model_internal::_doValidationCacheOfTargetUser = validationFailures;
        model_internal::_doValidationLastValOfTargetUser = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIsPrivate : Array = null;
    model_internal var _doValidationLastValOfIsPrivate : String;

    model_internal function _doValidationForIsPrivate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIsPrivate != null && model_internal::_doValidationLastValOfIsPrivate == value)
           return model_internal::_doValidationCacheOfIsPrivate ;

        _model.model_internal::_isPrivateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIsPrivateAvailable && _internal_isPrivate == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "isPrivate is required"));
        }

        model_internal::_doValidationCacheOfIsPrivate = validationFailures;
        model_internal::_doValidationLastValOfIsPrivate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfComments : Array = null;
    model_internal var _doValidationLastValOfComments : String;

    model_internal function _doValidationForComments(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfComments != null && model_internal::_doValidationLastValOfComments == value)
           return model_internal::_doValidationCacheOfComments ;

        _model.model_internal::_commentsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCommentsAvailable && _internal_comments == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "comments is required"));
        }

        model_internal::_doValidationCacheOfComments = validationFailures;
        model_internal::_doValidationLastValOfComments = value;

        return validationFailures;
    }
    

}

}
