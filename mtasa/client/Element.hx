package mtasa.client;

import mtasa.shared.MultiReturn;

@:native("Element")
extern class Element extends mtasa.shared.Element
{
  /**
    This function returns the minimum and maximum coordinates of an element's bounding box.

    @see https://wiki.multitheftauto.com/wiki/GetElementBoundingBox
  **/
  public function getBoundingBox(): BoundingBox;

  /**
    This function is used to retrieve the distance between a element's centre of mass to the base of the model. This can be used to calculate the position the element has to be set to, to have it on ground level.

    @see https://wiki.multitheftauto.com/wiki/GetElementDistanceFromCentreOfMassToBaseOfModel
  **/
  public function getDistanceFromCentreOfMassToBaseOfModel(): Float;

  // https://wiki.multitheftauto.com/wiki/SetElementMatrix TODO

  /**
    This function gets the radius of an element. Normally, sphere or circle-shaped elements tend to return a more accurate and expected radius than others with another shapes.

    @see https://wiki.multitheftauto.com/wiki/GetElementRadius
  **/
  public function getRadius(): Float;

  /**
    This function can be used to check whether specified element is collidable with another element.

    @see https://wiki.multitheftauto.com/wiki/IsElementCollidableWith
  **/
  public function isCollidableWith(theElement: Element): Bool;

  /**
    This function checks whether a clientside element is local to the client (doesn't exist in the server) or not.

    @see https://wiki.multitheftauto.com/wiki/IsElementLocal
  **/
  public function isLocal(): Bool;

  /**
    This function will check if an element is on the screen. Elements behind objects but still in the camera view count as being on screen.

    @see https://wiki.multitheftauto.com/wiki/IsElementOnScreen
  **/
  public function isOnScreen(): Bool;

  /**
    This function checks whether an element is streamable as set by setElementStreamable or not.

    @see https://wiki.multitheftauto.com/wiki/IsElementStreamable
  **/
  public function isStreamable(): Bool;

  /**
    This function checks whether an element is synced by the local player or not. Accepted elements are peds and vehicles.

    @see https://wiki.multitheftauto.com/wiki/IsElementSyncer
  **/
  public function isSyncer(): Bool;

  /**
    This function can be used to set an element to collide with another element. An element with collisions disabled does not interact physically with the other element.

    @see https://wiki.multitheftauto.com/wiki/SetElementCollidableWith
  **/
  public function setCollidableWith(theElement: Element, enabled: Bool): Bool;

  /**
    This function can be used to disable streaming for an element.

    @see https://wiki.multitheftauto.com/wiki/SetElementStreamable
  **/
  public function setStreamable(streamable: Bool): Bool;
}
