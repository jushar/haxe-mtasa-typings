package mtasa.client;

@:native("Ped")
extern class Ped extends mtasa.shared.Player
{
  /**
    Sets an analog state of a specified ped's control, as if they pressed or released it.

    @see https://wiki.multitheftauto.com/wiki/SetPedAnalogControlState
  **/
  public function setAnalogControlState(control: String, state: Float): Bool;

  /**
    This function checks if the given ped can fall off bikes.

    @see https://wiki.multitheftauto.com/wiki/CanPedBeKnockedOffBike
  **/
  public function canBeKnockedOffBike(): Bool;

  /**
    Gets the animation of a player or ped that was set using setPedAnimation.

    @see https://wiki.multitheftauto.com/wiki/GetPedAnimation
  **/
  public function getAnimation(): Animation;

  /**
    Returns the 3D world coordinates of a specific bone of a given ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedBonePosition
  **/
  public function getBonePosition(bone: Int): Vector3;

  /**
    This function gets the current camera rotation of a ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedCameraRotation
  **/
  public function getCameraRotation(): Float;

  /**
    Checks whether a ped has a certain control pressed.

    @see https://wiki.multitheftauto.com/wiki/GetPedControlState
  **/
  public function getControlState(control: String): Bool;

  /**
    This function returns the current move state for the specified ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedMoveState
  **/
  public function getMoveState(): Bool;

  /**
    This function returns the current oxygen level of the specified ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedOxygenLevel
  **/
  public function getOxygenLevel(): Float;

  /**
    This function gives the specified weapon to the specified ped. This function can't be used on players, use giveWeapon for that.

    @see https://wiki.multitheftauto.com/wiki/GivePedWeapon
  **/
  public function giveWeapon(weapon: Int, ?ammo: Int, ?setAsCurrent): Bool;

  /**
    This function allows retrieval of where a ped's target is blocked. It will only be blocked if there is an obstacle within a ped's target range.

    @see https://wiki.multitheftauto.com/wiki/GetPedTargetCollision
  **/
  public function getTargetCollision(): Vector3;

  /**
    This function allows retrieval of the position where a ped's target range ends, when he is aiming with a weapon.

    @see https://wiki.multitheftauto.com/wiki/GetPedTargetEnd
  **/
  public function getTargetEnd(): Vector3;

  /**
    This function allows retrieval of the position a ped's target range begins, when he is aiming with a weapon.

    @see https://wiki.multitheftauto.com/wiki/GetPedTargetStart
  **/
  public function getTargetStart(): Vector3;

  /**
    This function is used to get the name of a specified ped's current simplest task.

    @see https://wiki.multitheftauto.com/wiki/GetPedSimplestTask
  **/
  public function getSimplestTask(): String;

  /**
    This function is used to get any simple or complex task of a certain type for a ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedTask
  **/
  public function getTask(priority: String, taskType: Int): PedTask;

  /**
    Gets the current voice of a ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedVoice
  **/
  public function getVoice(): PedVoice;

  /**
    Returns the world position of the muzzle of the weapon that a ped is currently carrying.

    @see https://wiki.multitheftauto.com/wiki/GetPedWeaponMuzzlePosition
  **/
  public function getWeaponMuzzlePosition(): Vector3;

  /**
    This function checks if the specified ped is carrying out a certain task.

    @see https://wiki.multitheftauto.com/wiki/IsPedDoingTask
  **/
  public function isDoingTask(taskName: String): Bool;

  /**
    This function checks whether health target markers are drawn as set by setPedTargetingMarkerEnabled or not.

    @see https://wiki.multitheftauto.com/wiki/IsPedTargetingMarkerEnabled
  **/
  public function isTargetingMarkerEnabled(): Bool; // todo check

  /**
    This function allows you to set a ped's aim target to a specific point. If a ped is within a certain range defined by getPedTargetStart and getPedTargetEnd he will be targeted and shot.

    @see https://wiki.multitheftauto.com/wiki/SetPedAimTarget
  **/
  public function setAimTarget(position: Vector3): Bool;

  /**
    This function sets the camera rotation of a ped, e.g. where its camera will look at.

    @see https://wiki.multitheftauto.com/wiki/SetPedCameraRotation
  **/
  public function setCameraRotation(cameraRotation: Float): Bool;

  /**
    This function controls if a ped can fall of his bike by accident - namely by banging into a wall.

    @see https://wiki.multitheftauto.com/wiki/SetPedCanBeKnockedOffBike
  **/
  public function setCanBeKnockedOffBike(canBeKnockedOffBike: Bool): Bool;

  /**
    This function makes a ped press or release a certain control. It doesn't work with the local player, so use setControlState instead.

    @see https://wiki.multitheftauto.com/wiki/SetPedControlState
  **/
  public function setControlState(control: String, state: String): Bool;

  /**
    This function makes a players foot prints bloody.

    @see https://wiki.multitheftauto.com/wiki/SetPedFootBloodEnabled
  **/
  public function setFootBloodEnabled(enabled: Bool): Bool;

  /**
    Makes a ped turn his head and look at a specific world position or element.

    @see https://wiki.multitheftauto.com/wiki/SetPedLookAt
  **/
  public function setLookAt(position: Vector3, ?time: Int, ?blend: Int, ?target: Element): Bool;

  /**
    This function allows you to set the oxygen level of a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedOxygenLevel
  **/
  public function setOxygenLevel(level: Float): Bool;

  /**
    This function is used to toggle the health target marker on top of all pedestrians.

    @see https://wiki.multitheftauto.com/wiki/SetPedTargetingMarkerEnabled
  **/
  // TODO, mayby is not for ped class

  /**
    Changes the voice of a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedVoice
  **/
  public function setVoice(type: String, name: String): Bool;
}
