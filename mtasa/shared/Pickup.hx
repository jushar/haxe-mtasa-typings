package mtasa.shared;

import mtasa.shared.Player;

@:native("Pickup")
extern class Pickup extends Element
{
  /**
    This function creates a pickup element, which is placed in the GTA world and can be picked up to retrieve a health, armour or a weapon.
  **/
  public function new(vector: Vector3, theType: Int, amount_weapon_model: Int, ?respawnTime: Int, ?ammo: Int);

  /**
    This method retrieves the amount of ammo in a weapon pickup.
  **/
  public function getAmmo(): Int;

  /**
    This method retrieves the amount of ammo in a weapon pickup.
  **/
  public function getAmount(): Int;

  /**
    This method retrieves the type of a pickup, either a health, armour or weapon pickup.
  **/
  public function getWeapon(): Int;

  /**
    This method allows changing the type of a pickup to a Weapon, Armour or Health pickup, and allows you to set the health points or the weapon and ammo that the pickup will give.
  **/
  public function setType(theType: Int, amount_weapon_model: Int, ?ammo: Int): Bool;

  /**
    Returns the time it takes before a pickup respawns after a player picked it up. The time is specified in milliseconds.
  **/
  public function getRespawnInterval(): Int;

  /**
    This method checks if a pickup is currently spawned (is visible and can be picked up) or not (a player picked it up recently).
  **/
  public function isPickupSpawned(): Bool;

  /**
    This method checks if a pickup is currently spawned (is visible and can be picked up) or not (a player picked it up recently).
  **/
  public function setRespawnInterval(time: Int): Bool;

  /**
    This function is used to simulate the player using a pickup
  **/
  public function use(thePlayer: Player): Bool;
}
