package mtasa.server;

import mtasa.shared.Vector3;
import mtasa.server.Player;

@:native("Element")
extern class Element extends mtasa.shared.Element
{
  /**
    This method clears any settings added by setElementVisibleTo and restores an element to its default visibility. This does not work with all entities - vehicles, players and objects are exempt. This is because these objects are required for accurate sync (they're physical objects). This function is particularily useful for changing the visibility of markers, radar blips and radar areas.

    @see https://wiki.multitheftauto.com/wiki/ClearElementVisibleTo
  **/
  public function clearVisibility(): Bool;

  /**
    Clones (creates an exact copy of) an element.
    `element` is the element to clone.
    `position` is the position to clone it at.
    `cloneChildren` whether or not children should also be cloned.
    Returns the cloned element.

    @see https://wiki.multitheftauto.com/wiki/CloneElement
  **/
  public function clone(element: Element, ?position: Vector3, ?cloneChildren: Bool): Element;

  /**
    Returns all element data

    @see https://wiki.multitheftauto.com/wiki/GetAllElementData
  **/
  public function getAllData(): lua.Table<String, Dynamic>;

  /**
    This function returns an element of the specified type with the specified index.

    @see https://wiki.multitheftauto.com/wiki/GetElementByIndex
  **/
  public static function getByIndex(theType: String, index: Int): Element;

  /**
    This function gets the syncer of an element. The syncer is the player who is in control of the element.

    @see https://wiki.multitheftauto.com/wiki/GetElementSyncer
  **/
  public function getSyncer(): Element;

  /**
    This function allows you to retrieve the zone name of an element

    @see https://wiki.multitheftauto.com/wiki/GetElementZoneName
  **/
  public function getZoneName(?citiesonly: String): String;

  /**
    This checks if an element is visible to a player. This does not check if the player can literally see the element, just that they are aware that it exists. Some so-called per-player elements are able to be visible only to some players, as such this checks if this is the case for a particular element/player combination.

    @see https://wiki.multitheftauto.com/wiki/IsElementVisibleTo
  **/
  public function isVisibleTo(visibleTo: Element): Bool;

  /**
    This function removes the element data with the given key for that element. The element data removal is synced with all the clients.

    @see https://wiki.multitheftauto.com/wiki/RemoveElementData
  **/
  public function removeData(key: String): Bool;

  /**
    This function can be used to change the syncer (player) of an element. The syncer is the player who is responsible for informing the server about the state of that element - it's position, orientation and other state information. The function can be also used to remove an element's syncer.

    @see https://wiki.multitheftauto.com/wiki/SetElementSyncer
  **/
  public function setSyncer(thePlayer: Player): Bool;
}
