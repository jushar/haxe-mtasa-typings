package mtasa.server;

import mtasa.shared.Vector3;
import mtasa.shared.MultiReturn;
import mtasa.shared.Vehicle;

@:native("Ped")
extern class Ped extends Player {

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
    This function is used to give a ped a jetpack, it won't work if the ped is in a vehicle.

    @see https://wiki.multitheftauto.com/wiki/GivePedJetPack
  **/
  public function giveJetPack(): Bool;

  /**
    This function makes a pedestrian reload their weapon.

    @see https://wiki.multitheftauto.com/wiki/ReloadPedWeapon
  **/
  public function reloadWeapon(): Bool;

  /**
    This function is used to remove a ped's jetpack.

    @see https://wiki.multitheftauto.com/wiki/RemovePedJetPack
  **/
  public function removeJetPack(): Bool;

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
    This function allows you to set the value of a specific statistic for a ped.

    @see https://wiki.multitheftauto.com/wiki/SetPedStat
  **/
  public function setStat(stat: Int, value: Float): Bool;

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
