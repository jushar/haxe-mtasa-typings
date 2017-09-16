package mtasa.shared;

import mtasa.shared.MultiReturn;
import mtasa.shared.ColShape;
import mtasa.shared.Marker;

@:native("Element")
extern class Element{
  /**
    The method allows you to retrieve the position coordinates of an element.

    @see https://wiki.multitheftauto.com/wiki/GetElementPosition
  **/
  public function getPosition(): Vector3;

  /**
    This method indicates if a specific element is set to have collisions disabled. An element without collisions does not interact with the physical environment and remains static.

    @see https://wiki.multitheftauto.com/wiki/GetElementCollisionsEnabled
  **/
  public function areCollisionsEnabled(): Bool;

  /**
    This method attaches one element to another, so that the first one follows the second whenever it moves.

    @see https://wiki.multitheftauto.com/wiki/AttachElements
  **/
  public function attach(theAttachToElement: Element, ?xyzPosOffset: Vector3, ?xyzRotOffset: Vector3): Bool;

  /**
    Creates a dummy element of type `elementType` with
    the element ID `elementId`.

    @see https://wiki.multitheftauto.com/wiki/CreateElement
  **/
  public static function create(elementType: String, ?elementId: String): Element;

  /**
    Destroys an element.

    @see https://wiki.multitheftauto.com/wiki/DestroyElement
  **/
  public function destroy(): Bool;

  /**
    This function detaches attached elements from one another.

    @see https://wiki.multitheftauto.com/wiki/DetachElements
  **/
  public function detach(?theAttachToElement: Element): Bool;


  /**
    This function is used to retrieve a list of all elements of the specified type. This can be useful, as it disregards where in the element tree it is. It can be used with either the built in types (listed below) or with any custom type used in a .map file. For example, if there is an element of type "flag" (e.g. <flag />) in the .map file, the using "flag" as the type argument would find it.
    @param streamedIn Client side only!
    @see https://wiki.multitheftauto.com/wiki/GetElementsByType
  **/
  public static function getAllByType(theType: String, ?startat: Element, ?streamedIn: Bool): lua.Table<Int,Element>;

  /**
    This function returns the alpha (transparency) value for the specified element. This can be a player, ped, object, vehicle or weapon.

    @see https://wiki.multitheftauto.com/wiki/GetElementAlpha
  **/
  public function getAlpha(): Int;

  /**
    This function returns a table of all the elements attached to the specified element.

    @see https://wiki.multitheftauto.com/wiki/GetAttachedElements
  **/
  public function getAttachedElements(): lua.TableTools;

  /**
    This function returns an element from the specified ID. If more than one element with the same ID exists, only the first one in the order it appears in the XML tree will be returned by this function.

    @see https://wiki.multitheftauto.com/wiki/GetElementByID
  **/
  public static function getByID(id: String, ?index: Int): Element;

  /**
    This function returns the offsets of an element that has been attached to another element using attachElements.

    @see https://wiki.multitheftauto.com/wiki/GetElementAttachedOffsets
  **/
  public function getAttachedOffsets(): AttachOffset;

  /**
    This function determines the element that the specified element is attached to.

    @see https://wiki.multitheftauto.com/wiki/GetElementAttachedTo
  **/
  public function getAttachedTo(): Element;

  /**
    This function returns one of the child elements of a given parent element. The child element is selected by its index (0 for the first child, 1 for the second and so on).

    @see https://wiki.multitheftauto.com/wiki/GetElementChild
  **/
  public function getChild(index: Int): Element;

  /**
    This function is used to retrieve a list of the child elements of a given parent element. Note that it will only return direct children and not elements that are further down the element tree.

    @see https://wiki.multitheftauto.com/wiki/GetElementChildren
  **/
  public function getChildren(?theType: String): lua.Table<Int,Element>;

  /**
    This function returns the number of children an element has. Note that only the direct children are counted and not elements that are further down the element tree.

    @see https://wiki.multitheftauto.com/wiki/GetElementChildrenCount
  **/
  public function getChildrenCount(): Int;

  /**
    This function is used to get element's colshape.

    @see https://wiki.multitheftauto.com/wiki/GetElementColShape
  **/
  public function getColShape(): ColShape;

  /**
    This function retrieves element data attached to an element under a certain key.

    @see https://wiki.multitheftauto.com/wiki/GetElementData
  **/
  public function getData(key: String, ?inherit: Bool): Dynamic;

  /**
    This function allows you to retrieve the dimension of any element. The dimension determines what/who the element is visible to.

    @see https://wiki.multitheftauto.com/wiki/GetElementDimension
  **/
  public function getDimension(): Int;

  /**
    This function returns the current health for the specified element. This can be a player, a ped, a vehicle, or an object.

    @see https://wiki.multitheftauto.com/wiki/GetElementHealth
  **/
  public function getHealth(): Float;

  /**
    This function gets the ID of an element. This is the "id" attribute of the element and is a string, NOT a number like a model ID, weapons ID or similar.

    @see https://wiki.multitheftauto.com/wiki/GetElementID
  **/
  public function getID(): String;

  /**
    Returns the model ID of a given element. This can be a player/ped skin, a pickup model, an object model or a vehicle model.

    @see https://wiki.multitheftauto.com/wiki/GetElementModel
  **/
  public function getModel(): Int;

  /**
    This function return the low LOD element that an element is associated with.

    @see https://wiki.multitheftauto.com/wiki/GetLowLODElement
  **/
  public function getLowLOD(): Element;

  /**
    This function allows you to retrieve the interior of any element. An interior is the current loaded place, 0 being outside.

    @see https://wiki.multitheftauto.com/wiki/GetElementInterior
  **/
  public function getInterior(): Int;

  /**
    This function is used to determine the parent of an element.

    @see https://wiki.multitheftauto.com/wiki/GetElementParent
  **/
  public function getParent(): Element;

  /**
    Retrieve the rotation of elements.

    @see https://wiki.multitheftauto.com/wiki/GetElementRotation
  **/
  public function getRotation(?rotOrder: String): Vector3;

  /**
    This function is used to retrieve the type of an element.

    @see https://wiki.multitheftauto.com/wiki/GetElementType
  **/
  public function getType(): String;

  /**
    This function returns three floats containing the velocity (movement speeds) along the X, Y, and Z axis respectively. This means that velocity values can be positive and negative for each axis.

    @see https://wiki.multitheftauto.com/wiki/GetElementVelocity
  **/
  public function getVelocity(): Vector3;

  /**
    This functions checks whether or not an element is attached to another element.

    @see https://wiki.multitheftauto.com/wiki/IsElementAttached
  **/
  public function isAttached(): Bool;

  /**
    This functions checks if certain element has call propagation enabled.

    @see https://wiki.multitheftauto.com/wiki/IsElementCallPropagationEnabled
  **/
  public function isCallPropagationEnabled(): Bool;

  /**
    This function checks if element has been frozen.

    @see https://wiki.multitheftauto.com/wiki/IsElementFrozen
  **/
  public function isFrozen(): Bool;

  /**
    This function checks whether an element is double-sided as set by setElementDoubleSided or not.

    @see https://wiki.multitheftauto.com/wiki/IsElementDoubleSided
  **/
  public function isDoubleSided(): Bool;

  /**
    This function checks whether an element is submerged in water.

    @see https://wiki.multitheftauto.com/wiki/IsElementInWater
  **/
  public function isInWater(): Bool;

  /**
    This function reveals if an element is low LOD.

    @see https://wiki.multitheftauto.com/wiki/IsElementLowLOD
  **/
  public function isLowLOD(): Bool;

  /**
    This function is used to determine if an element is within a collision shape. Please note that for legacy reasons, a colshape created on the client does not collide with elements already existing at that location until they first move. Please also note that before 1.0.3, this did not function correctly when moving a colshape.

    @see https://wiki.multitheftauto.com/wiki/IsElementWithinColShape
  **/
  public function isWithinColShape(theShape: ColShape): Bool;

  /**
    This function is used to determine if an element is within a marker.

    @see https://wiki.multitheftauto.com/wiki/IsElementWithinMarker
  **/
  public function isWithinMarker(theMarker: Marker): Bool;

  /**
    This function sets the alpha (transparency) value for the specified element. This can be a player, ped, object, vehicle or weapon.

    @see https://wiki.multitheftauto.com/wiki/SetElementAlpha
  **/
  public function setAlpha(alpha: Int): Bool;

  /**
    This function updates the offsets of an element that has been attached to another element using attachElements.

    @see https://wiki.multitheftauto.com/wiki/SetElementAttachedOffsets
  **/
  public function setAttachedOffsets(xyzPosOffset: Vector3, xyzRotOffset: Vector3): Bool;

  /**
    This function enables/disables call propagation on a certain element. Look at the example for a practical application.

    @see https://wiki.multitheftauto.com/wiki/SetElementCallPropagationEnabled
  **/
  public function setCallPropagationEnabled(setCallPropagationEnabled: Bool): Bool;

  /**
    This function stores element data under a certain key, attached to an element.
    SetData has low performance! Please use TriggerServer/ClientEvent if you can!
    @see https://wiki.multitheftauto.com/wiki/SetElementData
  **/
  public function setData(key: String, value: Dynamic, ?synchronize: Bool): Bool;

  /**
    This function can disable or enable an element's collisions. An element without collisions does not interact with the physical environment and remains static.

    @see https://wiki.multitheftauto.com/wiki/SetElementCollisionsEnabled
  **/
  public function setCollisionsEnabled(enabled: Bool): Bool;

  /**
    This function allows you to set the dimension of any element. The dimension determines what/who the element is visible to.

    @see https://wiki.multitheftauto.com/wiki/SetElementDimension
  **/
  public function setDimension(dimension: Int): Bool;

  /**
    This function freezes an element (stops it in its position and disables movement) or unfreezes it.
    @param freezeStatus freeze=true, unfreeze=false
    @see https://wiki.multitheftauto.com/wiki/SetElementFrozen
  **/
  public function setFrozen(freezeStatus: Bool): Bool;

  /**
    This function allows you to set the interior of any element. An interior is the current loaded place, 0 being outside.

    @see https://wiki.multitheftauto.com/wiki/SetElementInterior
  **/
  public function setInterior(theElement: Element, interior: Int, ?x: Float, ?y: Float, ?z: Float): Bool;

  /**
    Sets the model of a given element. This allows you to change the model of a player (or ped), a vehicle or an object.

    @see https://wiki.multitheftauto.com/wiki/SetElementModel
  **/
  public function setModel(model: UInt): Bool;

  /**
    This function sets the velocity (movement speeds) along each axis.

    @see https://wiki.multitheftauto.com/wiki/SetElementVelocity
  **/
  public function setVelocity(speed: Vector3): Bool;

  /**
    This function sets the position of an element to the specified coordinates.

    @see https://wiki.multitheftauto.com/wiki/SetElementPosition
  **/
  public function setPosition(position: Vector3, ?warp: Bool): Bool;

  /**
    Sets the rotation of elements according to the world (does not work with players that are on the ground).

    @see https://wiki.multitheftauto.com/wiki/SetElementRotation
  **/
  public function setRotation(rotation: Vector3, ?rotOrder: String, ?conformPedRotation: Bool): Bool;

  /**
    This function is used for setting an element as the parent of another element.

    @see https://wiki.multitheftauto.com/wiki/SetElementParent
  **/
  public function setParent(parent: Element): Bool;

  /**
    This function sets the health for the specified element. This can be a ped, object or a vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetElementHealth
  **/
  public function setHealth(newHealth: Float): Bool;

  /**
    This function sets the ID of an element to a string. This can be anything from an identifying number, to a name. You can only change the ID of an element clientside if that element has been created clientside as well.

    @see https://wiki.multitheftauto.com/wiki/SetElementID
  **/
  public function setID(name: String): Bool;

  /**
    This function assigns a low LOD element to an element. The low LOD element is displayed when its associated element is not fully visible. If a low LOD element is assigned to several elements, it will be displayed when any of these elements are not fully visible.

    @see https://wiki.multitheftauto.com/wiki/SetLowLODElement
  **/
  public function setLowLOD(lowLODElement: Element): Bool;
}
