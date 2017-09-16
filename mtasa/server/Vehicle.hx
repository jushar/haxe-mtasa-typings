package mtasa.server;

import mtasa.shared.Vector3;

@:native("Vehicle")
extern class Vehicle extends mtasa.shared.Vehicle
{
  /**
    This function adds sirens to a vehicle.

    @see https://wiki.multitheftauto.com/wiki/AddVehicleSirens
  **/
  public function addSirens(sirenCount: Int, sirenType: Int, ?allDirections: Bool, ?checkLosFlag: Bool, ?useRandomiser: Bool, ?silentFlag: Bool): Bool;

  /**
    This function scans through all the current vehicles and returns the ones matching the given model.

    @see https://wiki.multitheftauto.com/wiki/GetVehiclesOfType
  **/
  public static function getAllOfType(model: UInt): lua.Table<Int,Vehicle>;

  /**
    This function removes sirens from a vehicle.

    @see https://wiki.multitheftauto.com/wiki/RemoveVehicleSirens
  **/
  public function removeSirens(): Bool;

  /**
    Resets the vehicle explosion time. This is the point in time at which the vehicle last exploded: at this time plus the vehicle's respawn delay, the vehicle is respawned. You can use this function to prevent the vehicle from respawning.

    @see https://wiki.multitheftauto.com/wiki/ResetVehicleExplosionTime
  **/
  public function resetExplosionTime(): Bool;

  /**
    Resets the vehicle idle time.

    @see https://wiki.multitheftauto.com/wiki/ResetVehicleIdleTime
  **/
  public function resetIdleTime(): Bool;

  /**
    This function respawns a vehicle according to its set respawn position, set by setVehicleRespawnPosition or the position and rotation it was created on. To spawn a vehicle to a specific location just once, spawnVehicle can be used.

    @see https://wiki.multitheftauto.com/wiki/RespawnVehicle
  **/
  public function respawn(): Bool;

  /**
    This function is used to change the handling data of a vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleHandling
  **/
  @:overload(function(propety: Bool, value: Bool, reset: Bool): Bool {})
  @:overload(function(reset: Bool): Bool {})
  public function setHandling(property: String, var: Dynamic): Bool;

  /**
    This function sets the time delay (in milliseconds) the vehicle will remain at its position while empty.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleIdleRespawnDelay
  **/
  public function setIdleRespawnDelay(timeDelay: Int): Bool;

  /**
    This function is used to change the handling data of all vehicles of a specified model.

    @see https://wiki.multitheftauto.com/wiki/SetModelHandling
  **/
  public static function setModelHandling(modelID: Int, property: String, value: Dynamic): Bool;

  /**
    This function sets the time delay (in milliseconds) the vehicle will remain wrecked before respawning.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleRespawnDelay
  **/
  public function setRespawnDelay(timeDelay: Int): Bool;

  /**
    This function sets the position (and rotation) the vehicle will respawn to.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleRespawnPosition
  **/
  public function setRespawnPosition(position: Vector3, ?rotation: Vector3): Bool;

  /**
    This function sets the variant of a specified vehicle. In GTA SA some vehicles are different for example the labelling on trucks or the contents of a pick-up truck and the varying types of a motor bike.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleVariant
  **/
  public function setVariant(variant1: Int, variant2: Int): Bool;

  /**
    Spawns a vehicle at any given position and rotation

    @see https://wiki.multitheftauto.com/wiki/SpawnVehicle
  **/
  public function spawn(position: Vector3, ?rotation: Vector3): Bool;

  /**
    This function toggles whether or not the vehicle will be respawned after blown or idle.

    @see https://wiki.multitheftauto.com/wiki/ToggleVehicleRespawn
  **/
  public function toggleRespawn(respawn: Bool): Bool;
}
