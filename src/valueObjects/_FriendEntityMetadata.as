
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
internal class _FriendEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("description", "age", "gender", "approved", "nick", "peerId", "location", "updated", "photo");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("approved", "peerId", "updated");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("description", "age", "gender", "approved", "nick", "peerId", "location", "updated", "photo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("description", "age", "gender", "approved", "nick", "peerId", "location", "updated", "photo");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("description", "age", "gender", "approved", "nick", "peerId", "location", "updated", "photo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Friend";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _peerIdIsValid:Boolean;
    model_internal var _peerIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _peerIdIsValidCacheInitialized:Boolean = false;
    model_internal var _peerIdValidationFailureMessages:Array;
    
    model_internal var _updatedIsValid:Boolean;
    model_internal var _updatedValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updatedIsValidCacheInitialized:Boolean = false;
    model_internal var _updatedValidationFailureMessages:Array;

    model_internal var _instance:_Super_Friend;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FriendEntityMetadata(value : _Super_Friend)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["description"] = new Array();
            model_internal::dependentsOnMap["age"] = new Array();
            model_internal::dependentsOnMap["gender"] = new Array();
            model_internal::dependentsOnMap["approved"] = new Array();
            model_internal::dependentsOnMap["nick"] = new Array();
            model_internal::dependentsOnMap["peerId"] = new Array();
            model_internal::dependentsOnMap["location"] = new Array();
            model_internal::dependentsOnMap["updated"] = new Array();
            model_internal::dependentsOnMap["photo"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["description"] = "String";
        model_internal::propertyTypeMap["age"] = "String";
        model_internal::propertyTypeMap["gender"] = "String";
        model_internal::propertyTypeMap["approved"] = "int";
        model_internal::propertyTypeMap["nick"] = "String";
        model_internal::propertyTypeMap["peerId"] = "String";
        model_internal::propertyTypeMap["location"] = "String";
        model_internal::propertyTypeMap["updated"] = "String";
        model_internal::propertyTypeMap["photo"] = "String";

        model_internal::_instance = value;
        model_internal::_peerIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPeerId);
        model_internal::_peerIdValidator.required = true;
        model_internal::_peerIdValidator.requiredFieldError = "peerId is required";
        //model_internal::_peerIdValidator.source = model_internal::_instance;
        //model_internal::_peerIdValidator.property = "peerId";
        model_internal::_updatedValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdated);
        model_internal::_updatedValidator.required = true;
        model_internal::_updatedValidator.requiredFieldError = "updated is required";
        //model_internal::_updatedValidator.source = model_internal::_instance;
        //model_internal::_updatedValidator.property = "updated";
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
            throw new Error(propertyName + " is not a data property of entity Friend");
            
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
            throw new Error(propertyName + " is not a collection property of entity Friend");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Friend");

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
            throw new Error(propertyName + " does not exist for entity Friend");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Friend");
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
            throw new Error(propertyName + " does not exist for entity Friend");
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
    public function get isGenderAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isApprovedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNickAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPeerIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLocationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdatedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPhotoAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnPeerId():void
    {
        if (model_internal::_peerIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPeerId = null;
            model_internal::calculatePeerIdIsValid();
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

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get descriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get genderStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get approvedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nickStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get peerIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get peerIdValidator() : StyleValidator
    {
        return model_internal::_peerIdValidator;
    }

    model_internal function set _peerIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_peerIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_peerIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peerIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get peerIdIsValid():Boolean
    {
        if (!model_internal::_peerIdIsValidCacheInitialized)
        {
            model_internal::calculatePeerIdIsValid();
        }

        return model_internal::_peerIdIsValid;
    }

    model_internal function calculatePeerIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_peerIdValidator.validate(model_internal::_instance.peerId)
        model_internal::_peerIdIsValid_der = (valRes.results == null);
        model_internal::_peerIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::peerIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::peerIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get peerIdValidationFailureMessages():Array
    {
        if (model_internal::_peerIdValidationFailureMessages == null)
            model_internal::calculatePeerIdIsValid();

        return _peerIdValidationFailureMessages;
    }

    model_internal function set peerIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_peerIdValidationFailureMessages;

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
            model_internal::_peerIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "peerIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get locationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
    public function get photoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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
            case("peerId"):
            {
                return peerIdValidationFailureMessages;
            }
            case("updated"):
            {
                return updatedValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
