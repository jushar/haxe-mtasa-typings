package mtasa.client;

import mtasa.shared.Vector3;

/**
  The Effect class represents custom effect elements in the game world such as smoke, sparks, fire etc.

  @see https://wiki.multitheftauto.com/wiki/Element/Effect
**/
@:native("Effect")
extern class Effect extends Element
{
  /**
    Creates an effect on specified position.

    @see https://wiki.multitheftauto.com/wiki/CreateEffect
  **/
  public static function create(name: String, position: Vector3, ?rotation: Vector3, ?drawDistance: Float): Effect;

  /**
    Creates a blood splatter particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddBlood
  **/
  public static function addBlood(position: Vector3, dir: Vector3, ?count: Int, ?brightness: Float): Bool;

  /**
    Creates a bullet impact particle effect, consisting of a small smoke cloud and a number of sparks.

    @see https://wiki.multitheftauto.com/wiki/FxAddBulletImpact
  **/
  public static function addBulletImpact(position: Vector3, dir: Vector3, ?smokeSize: Int, ?sparkCount: Int, ?smokeIntensity: Float): Bool;

  /**
    This function creates a bullet splash particle effect, normally created when shooting into water.

    @see https://wiki.multitheftauto.com/wiki/FxAddBulletSplash
  **/
  public static function addBulletSplash(position: Vector3): Bool;

  /**
    Creates a debris particle effect (e.g. bits that fly off a car when ramming a wall).

    @see https://wiki.multitheftauto.com/wiki/FxAddDebris
  **/
  public static function addDebris(position: Vector3, ?red: Int, ?green: Int, ?blue: Int, ?alpha: Int, ?scale: Int, ?count: Int): Bool;

  /**
    This function creates a foot splash particle effect, normally created when walking into water.

    @see https://wiki.multitheftauto.com/wiki/FxAddFootSplash
  **/
  public static function addFootSplash(position: Vector3): Bool;

  /**
    This function creates a glass particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddGlass
  **/
  public static function addGlass(position: Vector3, ?red: Int, ?green: Int, ?blue: Int, ?alpha: Int, ?scale: Int, ?count: Int): Bool;

  /**
    This function creates a gunshot particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddGunshot
  **/
  public static function addGunshot(position: Vector3, dir: Vector3, ?includeSparks: Bool): Bool;

  /**
    Creates a punch impact particle effect (a small dust cloud).

    @see https://wiki.multitheftauto.com/wiki/FxAddPunchImpact
  **/
  public static function addPunchImpact(position: Vector3, dir: Vector3): Bool;

  /**
    Creates a number of sparks originating from a point or along a line.

    @see https://wiki.multitheftauto.com/wiki/FxAddSparks
  **/
  public static function addSparks(position: Vector3, dir: Vector3, ?force: Float, ?count: Int, ?acrossLineX: Float, ?acrossLineY: Float, ?acrossLineZ: Float, ?blur: Bool, ?spread: Float, ?life: Float): Bool;

  /**
    This function creates a tank firing particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddTankFire
  **/
  public static function addTankFire(position: Vector3, dir: Vector3): Bool;

  /**
    Creates a tyre burst particle effect (a small white smoke puff).

    @see https://wiki.multitheftauto.com/wiki/FxAddTyreBurst
  **/
  public static function addTyreBurst(position: Vector3, dir: Vector3): Bool;

  /**
    This function creates a water hydrant particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddWaterHydrant
  **/
  public static function addWaterHydrant(position: Vector3): Bool;

  /**
    This function creates a water splash particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddWaterSplash
  **/
  public static function addWaterSplash(position: Vector3): Bool;

  /**
    Creates a wood splinter particle effect.

    @see https://wiki.multitheftauto.com/wiki/FxAddWood
  **/
  public function addWood(position: Vector3, dir: Vector3, ?count: Int, ?brightness: Float): Bool;

  /**
    This function gets the density of certain effect.

    @see https://wiki.multitheftauto.com/wiki/GetEffectDensity
  **/
  public function getDensity(): Float;

  /**
    This function gets the speed of a specified effect.

    @see https://wiki.multitheftauto.com/wiki/GetEffectSpeed
  **/
  public function getSpeed(): Float;

  /**
    This function sets the density of a specified effect.

    @see https://wiki.multitheftauto.com/wiki/SetEffectDensity
  **/
  public function setDensity(density: Float): Bool;

  /**
    This function sets the speed of a specified effect.

    @see https://wiki.multitheftauto.com/wiki/SetEffectSpeed
  **/
  public function setSpeed(speed: Float): Bool;
}



