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
}
