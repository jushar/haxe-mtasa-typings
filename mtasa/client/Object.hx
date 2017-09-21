package mtasa.client;

@:native("Object")
extern class Object extends mtasa.shared.Object
{
  /**
    This function sets an object to be breakable/unbreakable.

    @see https://wiki.multitheftauto.com/wiki/SetObjectBreakable
  **/
  public function setBreakable(breakable: Bool): Bool;

  /**
    This function checks if an object is breakable.

    @see https://wiki.multitheftauto.com/wiki/IsObjectBreakable
  **/
  public function isBreakable(): Bool;

  /**
    This function breaks a specific object.

    @see https://wiki.multitheftauto.com/wiki/BreakObject
  **/
  public function break(): Bool;

  /**
    This function respawns a specific object.

    @see https://wiki.multitheftauto.com/wiki/RespawnObject
  **/
  public function respawn(): Bool;

  /**
    This function is used to toggle if an object should respawn after it got destroyed

    @see https://wiki.multitheftauto.com/wiki/ToggleObjectRespawn
  **/
  public function toggleObjectRespawn(respawn: Bool): Bool;

  /**
    This function sets the mass of a specified object. Changing the mass leads to a different movement behavior for especially dynamic objects.

    @see https://wiki.multitheftauto.com/wiki/SetObjectMass
  **/
  public function setMass(mass: Float): Bool;

  /**
    This function returns the mass of a specified object.

    @see https://wiki.multitheftauto.com/wiki/GetObjectMass
  **/
  public funciton getMass(): Float;
}
