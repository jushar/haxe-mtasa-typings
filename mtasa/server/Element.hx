package mtasa.server;

import mtasa.shared.Vector3;

@:native("Element")
extern class Element
{
  /**
    Clears the visibility of the element
  **/
  public function clearVisibility(): Bool;
  
  /**
    Clones (creates an exact copy of) an element
    `element` is the element to clone
    `position` is the position to clone it at
    `cloneChildren` whether or not children should also be cloned
    Returns the cloned element
  **/
  public function clone(element: Element, ?position: Vector3, ?cloneChildren: Bool): Element;

  /**
    Creates a dummy element of type `elementType` with
    the element ID `elementId`
  **/
  public static function create(elementType: String, ?elementId: String): Element;

  /**
    Destroys an element
  **/
  public function destroy(): Bool;

  /**
    Returns all element data
  **/
  public function getAllData():lua.Table<String, Dynamic>;

  /**
    Sets the position to `position`
  **/
  public function setPosition(position: Vector3): Bool;
  
  /**
    Returns the position
  **/
  public function getPosition(): Vector3;

  /**
    Freezes or unfreezes an element
  **/
  public function setFrozen(frozen: Bool): Bool;

  /**
    Returns whether or not an element is frozen
  **/
  public function isFrozen(): Bool;
}
