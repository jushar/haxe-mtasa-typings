package mtasa.server;

import mtasa.shared.Vector3;
import mtasa.shared.MultiReturn;
import mtasa.shared.Vehicle;

@:native("Ped")
extern class Ped extends Player {
  /**
    Creates a Ped in the GTA world.

    @see https://wiki.multitheftauto.com/wiki/CreatePed
  **/
  public static function create(modelID: UInt, position: Vector3, ?rot: Float, ?synced: Bool): Ped;

  /**
    This function is used to set the current clothes on a ped.

    @see https://wiki.multitheftauto.com/wiki/AddPedClothes
  **/
  public function addClothes(modelID: UInt, clothesTexture: String, clothesModel: String, clothesType: Int): Bool;

  /**
    Checks whether or not a ped currently has a jetpack.

    @see https://wiki.multitheftauto.com/wiki/DoesPedHaveJetPack
  **/
  public function doesHaveJetpack(): Bool;

  /**
    This function returns an integer that contains the ammo in a specified ped's weapon.

    @see https://wiki.multitheftauto.com/wiki/GetPedAmmoInClip
  **/
  public function getAmmoInClip(?weaponSlot: Int): Int;

  /**
    This function retrieves the analog control state of a ped, as set by setPedAnalogControlState.

    @see https://wiki.multitheftauto.com/wiki/GetPedAnalogControlState
  **/
  public function GetAnalogControlState(controlName: String): Float;

  /**
    This function returns the current armor of the specified ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedArmor
  **/
  public function getArmor(): Float;

  /**
    This function is used to get the current clothes texture and model of a certain type on a ped.
    @param clothestType range 0-17
    @see https://wiki.multitheftauto.com/wiki/GetPedClothes
  **/
  public function getClothes(clothesType: UInt): Clothes;

  /**
    This function detects the element a ped is standing on. This can be a vehicle or an object.

    @see https://wiki.multitheftauto.com/wiki/GetPedContactElement
  **/
  public function getContactElement(): Element;

  /**
    Retrieves the fighting style a player/ped is currently using.

    @see https://wiki.multitheftauto.com/wiki/GetPedFightingStyle
  **/
  public function getFightingStyle(): Int;

  /**
    This function returns the current gravity for the specified ped. The default gravity is 0.008.

    @see https://wiki.multitheftauto.com/wiki/GetPedGravity
  **/
  public function getGravity(): Float;

  /**
    This function gets the vehicle that the ped is currently in or is trying to enter, if any.

    @see https://wiki.multitheftauto.com/wiki/GetPedOccupiedVehicle
  **/
  public function getOccupiedVehicle(): Vehicle;

  /**
    This function is now available client side. This function gets the seat that a specific ped is sitting in in a vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetPedOccupiedVehicleSeat
  **/
  public function getOccupiedVehicleSeat(): Int;

  /**
    This function returns the value of the specified statistic of a specific ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedStat
  **/
  public function getStat(stat: Int): Float;

  /**
    This function is used to get the element a ped is currently targeting.

    @see https://wiki.multitheftauto.com/wiki/GetPedStat
  **/
  public function getTarget(): Element;

  /**
    This function returns the value of the specified statistic of a specific ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedStat
  **/
  public function getTotalAmmo(weaponSlot: Int): Int;

  /**
    Returns the walking style ID of a ped. This ID determines the set of animations that is used for walking, running etc.

    @see https://wiki.multitheftauto.com/wiki/GetPedWalkingStyle
  **/
  public function getWalkingStyle(): Int;

  /**
    This function tells you which weapon type is in a certain weapon slot of a ped.

    @see https://wiki.multitheftauto.com/wiki/GetPedWeapon
  **/
  public function getWeapon(?weaponSlot: Int): Int;

  /**
    This function gets a ped's selected weapon slot.

    @see https://wiki.multitheftauto.com/wiki/GetPedWeaponSlot
  **/
  public function getWeaponSlot(): Int;

  /**
    This function is used to give a ped a jetpack, it won't work if the ped is in a vehicle.

    @see https://wiki.multitheftauto.com/wiki/GivePedJetPack
  **/
  public function giveJetPack(): Bool;

  /**
    This function checks if the specified ped is choking (coughing) or not. This happens as a result of weapons that produce smoke - smoke grenades, fire extinguisher and the spray can.

    @see https://wiki.multitheftauto.com/wiki/IsPedChoking
  **/
  public function isChoking(): Bool;

  /**
    This function checks if the specified ped is dead or not.

    @see https://wiki.multitheftauto.com/wiki/IsPedDead
  **/
  public function isDead(): Bool;

  /**
    This function checks if the ped is in the driveby state.

    @see https://wiki.multitheftauto.com/wiki/IsPedDoingGangDriveby
  **/
  public function isDoingGangDriveby(): Bool;

  /**
    This function checks if the specified ped is ducked (crouched) or not.

    @see https://wiki.multitheftauto.com/wiki/IsPedDucked
  **/
  public function isDucked(): Bool;

  /**
    With this function, you can check if a ped has a head or not.

    @see https://wiki.multitheftauto.com/wiki/IsPedHeadless
  **/
  public function isHeadless(): Bool;

  /**
    Checks whether or not a given ped is currently in a vehicle. This also returns true if they're trying to enter a vehicle.

    @see https://wiki.multitheftauto.com/wiki/IsPedInVehicle
  **/
  public function isInVehicle(): Bool;

  /**
    This function checks if the specified ped is on fire or not.

    @see https://wiki.multitheftauto.com/wiki/IsPedOnFire
  **/
  public function isOnFire(): Bool;

  /**
    This function is used to determine whether or not a ped is on the ground. This is for on-foot usage only.

    @see https://wiki.multitheftauto.com/wiki/IsPedOnGround
  **/
  public function isOnGround(): Bool;

  /**
    This function kills the specified ped.

    @see https://wiki.multitheftauto.com/wiki/KillPed
  **/
  public function kill(?theKiller: Ped, ?weapon: Int, ?bodyPart: Int, ?stealth: Bool): Bool;

  /**
    This function makes a pedestrian reload their weapon.

    @see https://wiki.multitheftauto.com/wiki/ReloadPedWeapon
  **/
  public function reloadWeapon(): Bool;

  /**
    This function is used to remove the current clothes of a certain type on a ped. It will remove them if the clothesTexture and clothesModel aren't specified, or if they match the current clothes on that slot.

    @see https://wiki.multitheftauto.com/wiki/RemovePedClothes
  **/
  public function removeClothes(clothesType: Int, ?clothesTexture: String, ?clothesModel: String): Bool;

  /**
    This function removes a ped from a vehicle immediately.

    @see https://wiki.multitheftauto.com/wiki/RemovePedFromVehicle
  **/
  public function removeFromVehicle(): Bool;

  /**
    This function is used to remove a ped's jetpack.

    @see https://wiki.multitheftauto.com/wiki/RemovePedJetPack
  **/
  public function removeJetPack(): Bool;

  /**
    Sets an analog state of a specified ped's control, as if they pressed or released it.

    @see https://wiki.multitheftauto.com/wiki/SetPedAnalogControlState
  **/
  public function setAnalogControlState(control: String, state: Float): Bool;

  /**
    Sets the current animation of a player or ped. Not specifying the type of animation will automatically cancel the current one.

    @see https://wiki.multitheftauto.com/wiki/SetPedAnimation
  **/
  public function setAnimation(?block: String, ?anim: String, ?time: Int, ?loop: Bool, ?updatePosition: Bool, ?interruptable: Bool, ?freezeLastFrame: Bool, ?blendTime: Int): Bool;

  /**
    Sets the current animation progress of a player or ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedAnimation
  **/
  public function setAnimationProgress(?block: String, ?anim: String, ?progress: Float): Bool;

  /**
    This function allows you to set the armor value of a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedArmor
  **/
  public function setArmor(armor: Float): Bool;

  /**
    This function can be used to force the ped to do the choking (coughing) animation until he respawns or toggled off using this function. The animation can not be cancelled by a player it's applied to, and he will not loose health.

    @see https://wiki.multitheftauto.com/wiki/SetPedChoking
  **/
  public function setChoking(choking: Bool): Bool;

  /**
    This function sets the driveby state of a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedDoingGangDriveby
  **/
  public function setDoingGangDriveBy(state: Bool): Bool;

  /**
    Changes a ped's fighting style. Most styles only change the 'special attack' which is done using the Aim and Enter keys.

    @see https://wiki.multitheftauto.com/wiki/SetPedFightingStyle
  **/
  public function setFightingStyle(style: Int): Bool;

  /**
    This function sets the gravity level of a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedGravity
  **/
  public function setGravity(gravity: Float): Bool;

  /**
    With this function, you can set if a ped has a head or not.

    @see https://wiki.multitheftauto.com/wiki/SetPedHeadless
  **/
  public function setHeadless(headState: Bool): Bool;

  /**
    This function can be used to set a ped on fire or extinguish a fire on it.

    @see https://wiki.multitheftauto.com/wiki/SetPedOnFire
  **/
  public function setOnFire(isOnFire: Bool): Bool;

  /**
    This function allows you to set the value of a specific statistic for a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedStat
  **/
  public function setStat(stat: Int, value: Float): Bool;

  /**
    Sets the walking style of a ped. A walking style consists of a set of animations that are used for walking, running etc.

    @see https://wiki.multitheftauto.com/wiki/SetPedStat
  **/
  public function setWalkingStyle(style: Int): Bool;

  /**
    This function changes the selected weapon slot of a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedWeaponSlot
  **/
  public function setWeaponSlot(weaponSlot: Int): Bool;

  /**
    This function is used to warp or force a ped into a vehicle. There are no animations involved when this happens.

    @see https://wiki.multitheftauto.com/wiki/WarpPedIntoVehicle
  **/
  public function warpIntoVehicle(theVehicle: Vehicle, ?seat: Int): Bool;
}
