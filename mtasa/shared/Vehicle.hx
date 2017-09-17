package mtasa.shared;

import mtasa.shared.MultiReturn;
import mtasa.shared.Player; // todo shared
import mtasa.shared.Vector3;

@:native("Vehicle")
extern class Vehicle extends Element {
  /**
    This function creates a vehicle at the specified location.
    @param numberplate lenght between 0 and 8 chars.
    @see https://wiki.multitheftauto.com/wiki/CreateVehicle
  **/
  public static function create(model: UInt, position: Vector3, ?rotation: Vector3, ?numberplate: String, ?bDirection: Bool, ?variant1: Int, ?variant2: Int): Vehicle;

  /**
    This function returns whether the sirens are turned on for the specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleSirensOn
  **/
  public function areSirensOn(): Bool;

  /**
    This function attaches a trailer type vehicle to a trailer-towing-type vehicle.

    @see https://wiki.multitheftauto.com/wiki/AttachTrailerToVehicle
  **/
  public function attachTrailer(theTrailer: Vehicle): Bool;

  /**
    This function will blow up a vehicle. This will cause an explosion and will kill the driver and any passengers inside it.
    @param explode server side only. if this argument is true then the vehicle will explode, otherwise it will just be blown up silently.
    @see https://wiki.multitheftauto.com/wiki/BlowVehicle
  **/
  public function blow(?explode: Bool): Bool;

  /**
    This function detaches an already attached trailer from a vehicle.

    @see https://wiki.multitheftauto.com/wiki/DetachTrailerFromVehicle
  **/
  public function detachTrailer(?theTrailer: Vehicle): Bool;

  /**
    This function will set a vehicle's health to full and fix its damage model. If you wish to only change the vehicle's health, without affecting its damage model, use setElementHealth.

    @see https://wiki.multitheftauto.com/wiki/FixVehicle
  **/
  public function fix(): Bool;

  /**
    This function returns the color of the specified vehicle. A vehicle can have up to four colors.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleColor
  **/
  @:overload(function(RGB: Bool): Color {})
  public function getColor(): Color4; // NEED TO BE CHECK!!! TODO

  /**
    This function returns a table of all the compatible upgrades (or all for a specified slot, optionally) for a specifed vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleCompatibleUpgrades
  **/
  public function getCompatibleUpgrades(?slot: Int): lua.Table<Int, String>;

  /**
    This function is used to get the player in control of the specified vehicle which includes somebody who is trying to enter the drivers seat.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleController
  **/
  public function getController(): Player;

  /**
    Gets the direction in which a train is driving (clockwise or counterclockwise).

    @see https://wiki.multitheftauto.com/wiki/GetTrainDirection
  **/
  public function getDirection(): Bool;

  /**
    This function tells you how open a door is (the 'open ratio'). Doors include boots/trunks and bonnets on vehicles that have them.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleDoorOpenRatio
  **/
  public function getDoorOpenRatio(door: Int): Float;

  /**
    This function returns the current state of the specifed door on the vehicle.
    @param door 0: Hood, 1: Trunk, 2: Front left, 3: Front right, 4: Rear left, 5: Rear right
    @see https://wiki.multitheftauto.com/wiki/GetVehicleDoorState
  **/
  public function getDoorState(door: Int): Int;

  /**
    This function returns a vehicle's engine state (on or off).

    @see https://wiki.multitheftauto.com/wiki/GetVehicleEngineState
  **/
  public function getEngineState(): Bool;

  /**
    This function returns a table of the current vehicle handling data.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleHandling
  **/
  public function getHandling(): lua.Table<String,Dynamic>;

  /**
    This function will get the headlight color of a vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleHeadLightColor
  **/
  public function getHeadLightColor(): RGB;

  /**
    This function is used to check whether a vehicle's landing gear is down or not. Only planes can be used with this function.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleLandingGearDown
  **/
  public function getLangingGearDown(): Bool;

  /**
    This function returns the current state of the specified light on the vehicle.
    @param light the whole number between 0 and 3
    @see https://wiki.multitheftauto.com/wiki/GetVehicleLightState
  **/
  public function getLightState(light: Int): Bool;

  /**
    This function returns the maximum number of passengers that a specified vehicle can hold. Only passenger seats are counted, the driver seat is excluded.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleMaxPassengers
  **/
  public static function getMaxPassengers(modelID: Int): Int;
  public function getMaxPassengers(): Int;

  /**
    This function retrieves the model ID of a vehicle as an integer value from its name.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleModelFromName
  **/
  public static function getModelFromName(name: String): Int;

  /**
    This function returns a table containing the handling data of the specified vehicle model.

    @see https://wiki.multitheftauto.com/wiki/GetModelHandling
  **/
  public static function getModelHandling(modelID: Int): lua.Table<Int, Dynamic>;

  /**
    This function returns a string containing the name of the vehicle

    @see https://wiki.multitheftauto.com/wiki/GetVehicleName
  **/
  public function getName(): String;

  /**
    Gets the name of a vehicle by its model ID.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleNameFromModel
  **/
  public static function getNameFromModel(model: Int): String;

  /**
    This function gets the player sitting/trying to enter the specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleOccupant
  **/
  public function getOccupant(?seat: Int): Player;

  /**
    This function gets all players sitting in the specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleOccupants
  **/
  public function getOccupants(): lua.Table<Int, Player>;

  /**
    This function returns a table of the original vehicle handling. Use getVehicleHandling if you wish to get the current handling of a vehicle, or getModelHandling for a specific vehicle model.

    @see https://wiki.multitheftauto.com/wiki/GetOriginalHandling
  **/
  public static function getOriginalHandling(modelID: Int): lua.Table<String,Dynamic>;

  /**
    This function is used to find out the current state of the override-lights setting of a vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleOverrideLights
  **/
  public function getOverrideLights(): Int;

  /**
    This function gets the current paintjob on the specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehiclePaintjob
  **/
  public function getPaintjob(): Int;

  /**
    This function returns the current state of a specifed panel on the vehicle. A vehicle can have up to 7 panels.
    @param panel 0: Front-left panel, 1: Front-right panel, 2: Rear-left panel, 3: Rear-right panel, 4: Windscreen, 5: Front bumper, 6: Rear bumper
    @see https://wiki.multitheftauto.com/wiki/GetVehiclePanelState
  **/
  public function getPanelState(panel: Int): Int;

  /**
    This function is used to retrieve the text on the number plate of a specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehiclePlateText
  **/
  public function getPlateText(): String;

  /**
    This function get the parameters of a vehicles siren.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleSirenParams
  **/
  public function getSirenParams(): lua.Table<Dynamic,Dynamic>; // need to be check TODO

  /**
    This function gets the properties of a vehicle's sirens.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleSirens
  **/
  public function getSirens(): lua.Table<Dynamic,Dynamic>; // need to be check TODO

  /**
    Gets the speed at which a train is traveling on the rails.

    @see https://wiki.multitheftauto.com/wiki/GetTrainSpeed
  **/
  public function getSpeed(): Float;

  /**
    This function is used to get the vehicle being towed by another.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleTowedByVehicle
  **/
  public function getTowedByVehicle(): Vehicle;

  /**
    This function is used to get the vehicle that is towing another.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleTowingVehicle
  **/
  public function getTowingVehicle(): Vehicle;

  /**
    This function is used to retrieve a vehicle's turning velocity for each axis.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleTurnVelocity
  **/
  public function getTurnVelocity(): Vector3;

  /**
    This function gets the position of a vehicle's turret, if it has one. Vehicles with turrets include firetrucks and tanks.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleTurretPosition
  **/
  public function getTurretPosition(): Vector2;

  /**
    This function returns the current upgrade id on the specified vehicle's 'upgrade slot' An upgrade slot is a certain type of upgrade (eg: exhaust, spoiler), there are 17 slots (0 to 16).

    @see https://wiki.multitheftauto.com/wiki/GetVehicleUpgradeOnSlot
  **/
  public function getUpgradeOnSlot(slot: Int): Int;

  /**
    This function returns a table of all the upgrades on a specifed vehicle.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleUpgrades
  **/
  public function getUpgrades(): lua.Table<Int,Int>; // need to be check! TODO

  /**
    This function returns the name of an upgrade slot name (e.g. roof, spoiler).

    @see https://wiki.multitheftauto.com/wiki/GetVehicleUpgradeSlotName
  **/
  public static function getUpgradeSlotName(slot_or_upgrade: Int): String;

  /**
    This function gets the variant of a specified vehicle. In GTA SA some vehicles are different for example the labelling on trucks or the contents of a pick-up truck and the varying types of a motor bike

    @see https://wiki.multitheftauto.com/wiki/GetVehicleVariant
  **/
  public function getVariant(): Variants;

  /**
    This function retrieves the type of a vehicle (such as if it is a car or a boat).

    @see https://wiki.multitheftauto.com/wiki/GetVehicleType
  **/
  public static function getVehicleType(modelID: Int): String;
  public function getVehicleType(): String;

  /**
    This function returns the current states of all the wheels on the vehicle.
    No vehicles have more than 4 wheels, if they appear to they will be duplicating other wheels.

    @see https://wiki.multitheftauto.com/wiki/GetVehicleWheelStates
  **/
  public function getWheelStates(): WheelsState;

  /**
    This function allows you to determine whether a vehicle is blown or still intact.

    @see https://wiki.multitheftauto.com/wiki/IsVehicleBlown
  **/
  public function isBlown(): Bool;

  /**
    This function checks if a vehicle is damage proof.

    @see https://wiki.multitheftauto.com/wiki/IsVehicleDamageProof
  **/
  public function isDamageProof(): Bool;

  /**
    This function will check if a train or tram is derailable.

    @see https://wiki.multitheftauto.com/wiki/IsTrainDerailable
  **/
  public function isDerailable(): Bool;

  /**
    This will tell you if a vehicle's petrol tank is explodable.

    @see https://wiki.multitheftauto.com/wiki/IsVehicleFuelTankExplodable
  **/
  public function isFuelTankExplodable(): Bool;

  /**
    This will tell you if a vehicle is locked.

    @see https://wiki.multitheftauto.com/wiki/IsVehicleLocked
  **/
  public function isLocked(): Bool;

  /**
    Checks to see if a vehicle has contact with the ground.

    @see https://wiki.multitheftauto.com/wiki/IsVehicleOnGround
  **/
  public function isOnGround(): Bool;

  /**
    This function will get the taxi light state of a taxi (vehicle IDs 420 and 438)

    @see https://wiki.multitheftauto.com/wiki/IsVehicleTaxiLightOn
  **/
  public function isTaxiLightOn(): Bool;

  /**
    This function removes an already existing upgrade from the specified vehicle, eg: nos, hydraulics. Defined in San Andreas\data\maps\veh_mods\veh_mods.ide.

    @see https://wiki.multitheftauto.com/wiki/RemoveVehicleUpgrade
  **/
  public function removeUpgrade(upgrade: Int): Bool;

  /**
    This function will set the color of a vehicle. Colors are in RGB format, vehicles can have up to 4 colors. Most vehicles have 2 colors only.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleColor
  **/
  public function setColor(r1: Int, g1: Int, b1: Int, ?r2: Int, ?g2: Int, ?b2: Int, ?r3: Int, ?g3: Int, ?b3: Int, ?r4: Int, ?g4: Int, ?b4: Int): Bool;

  /**
    This functions makes a vehicle damage proof, so it won't take damage from bullets, hits, explosions or fire. A damage proof's vehicle health can still be changed via script.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleDamageProof
  **/
  public function setDamageProof(damageProof: Bool): Bool;

  /**
    This function will set a train or tram as derailable. This is, if it can derail when it goes above the maximum speed.

    @see https://wiki.multitheftauto.com/wiki/SetTrainDerailable
  **/
  public function setDerailable(derailable: Bool): Bool;

  /**
    Sets the direction in which a train or tram drives over the rails (clockwise or counterclockwise).

    @see https://wiki.multitheftauto.com/wiki/SetTrainDirection
  **/
  public function setDirection(clockwise: Bool): Bool;

  /**
    This function sets how much a vehicle's door is open. Doors include the boot/trunk and the bonnet of the vehicle.
    @param time The number of milliseconds the door should take to reach the value you have specified. A value of 0 will change the door open ratio instantly.
    @see https://wiki.multitheftauto.com/wiki/SetVehicleDoorOpenRatio
  **/
  public function setDoorOpenRatio(door: Int, ratio: Float, ?time: Int): Bool;

  /**
    This function sets the state of the specified door on a vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleDoorState
  **/
  public function setDoorState(door: Int, state: Int): Bool;

  /**
    This function makes a vehicle's doors undamageable, so they won't fall off when they're hit. Note that the vehicle has to be locked using setVehicleLocked for this setting to have any effect.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleDoorsUndamageable
  **/
  public function setDoorsUndamageable(state: Bool): Bool;

  /**
    This function turns a vehicle's engine on or off. Note that the engine will always be turned on when someone enters the driver seat, unless you override that behaviour with scripts.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleEngineState
  **/
  public function setEngineState(engineState: Bool): Bool;

  /**
    This function changes the 'explodable state' of a vehicle's fuel tank, which toggles the ability to blow the vehicle up by shooting the tank. This function will have no effect on vehicles with tanks that cannot be shot in single player.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleFuelTankExplodable
  **/
  public function setFuelTankExplodable(explodable: Bool): Bool;

  /**
    This function will set the headlight color of a vehicle. valid Red Green and Blue arguments range from 0-255

    @see https://wiki.multitheftauto.com/wiki/SetVehicleHeadLightColor
  **/
  public function setHeadLightColor(red: Int, green: Int, blue: Int): Bool;

  /**
    This function is used to set the landing gear state of certain vehicles.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleLandingGearDown
  **/
  public function setLandingGearDown(gearState: Bool): Bool;

  /**
    This function sets the state of the light on the vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleLightState
  **/
  public function setLightState(light: Int, state: Int): Bool;

  /**
    This function can be used to set a vehicle to be locked or unlocked. Locking a vehicle restricts access to all doors of a vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleLocked
  **/
  public function setLocked(locked: Bool): Bool;

  /**
    This function changes the light overriding setting on a vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleOverrideLights
  **/
  public function setOverrideLights(value: Int): Bool;

  /**
    This function changes the paintjob on the specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehiclePaintjob
  **/
  public function setPaintjob(value: Int): Bool;

  /**
    This function allows you to change the state of one of the six panels vehicle's can have. When executed on the server-side resources, the damage will be synched for all players, whereas the change is only client-side if the function is used in a client resource.

    @see https://wiki.multitheftauto.com/wiki/SetVehiclePanelState
  **/
  public function setPanelState(panelID: Int, state: Int): Bool;

  /**
    This function can be used to set the numberplate text of a car.

    @see https://wiki.multitheftauto.com/wiki/SetVehiclePlateText
  **/
  public function setPlateText(numberplate: String): Bool;

  /**
    This function changes the state of the sirens on the specified vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleSirensOn
  **/
  public function setSirensOn(sirensOn: Bool): Bool;

  /**
    Sets the on-track speed of a train.

    @see https://wiki.multitheftauto.com/wiki/SetTrainSpeed
  **/
  public function setSpeed(speed: Float): Bool;

  /**
    This function will set the taxi light on in a taxi (vehicle ID's 420 and 438)

    @see https://wiki.multitheftauto.com/wiki/SetVehicleTaxiLightOn
  **/
  public function setTaxiLightOn(lightState: Bool): Bool;

  /**
    Sets the angular velocity of a vehicle. Basically applies a spin to it.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleTurnVelocity
  **/
  public function setTurnVelocity(rotation: Vector3): Bool;

  /**
    This function sets the position of a vehicle's turret, if it has one. This can be used to influence the turret's rotation, so it doesn't follow the camera. Vehicles with turrets include firetrucks and tanks.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleTurretPosition
  **/
  public function setTurretPosition(position: Vector2): Bool;

  /**
    This function sets the state of wheels on the vehicle.

    @see https://wiki.multitheftauto.com/wiki/SetVehicleWheelStates
  **/
  public function setWheelStates(frontLeft: Int, ?rearLeft: Int, ?frontRight: Int, ?rearRight: Int): Bool;
}
