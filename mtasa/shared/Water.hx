package mtasa.shared;

import mtasa.shared.MultiReturn;
import mtasa.shared.Vector3;
/**
  In San Andreas, the water in the game world (rivers, lakes, seas) is defined through a large number of water polygons, which can be quadrilateral or triangular. A water element represents one such polygon. You can create water elements with createWater or through a <water/> map element.

  @see https://wiki.multitheftauto.com/wiki/Element/Water
**/
@:native("Water")
extern class Water
{
  /**
    Creates an area of water.
    The largest possible size of a water area is 5996×5996.

    @see https://wiki.multitheftauto.com/wiki/CreateWater
  **/
  public static function create(bottom_left: Vector3, bottom_right: Vector3, top_left: Vector3, ?top_right: Vector3, ?bShallow: Bool): Water;

  /**
    This function returns the water color of the GTA world.

    @see https://wiki.multitheftauto.com/wiki/GetWaterColor
  **/
  public function getColor(): Color;

  /**
    Gets the world position of a vertex (i.e. corner) of a water area. Each water area is either a triangle or quad (rectangle) so each has 3 or 4 corners.

    @see https://wiki.multitheftauto.com/wiki/GetWaterVertexPosition
  **/
  public function getVertexPosition(vertexIndex: Int): WaterVertextPosition;

  /**
    This function returns the current wave height.

    @see https://wiki.multitheftauto.com/wiki/GetWaveHeight
  **/
  public static function getWaveHeight(): Int;

  /**
    This function reset the water color of the GTA world to default.

    @see https://wiki.multitheftauto.com/wiki/ResetWaterColor
  **/
  public static function resetColor(): Bool;

  /**
    This function resets the water of the GTA world back to its default level. Water elements are not affected.

    @see https://wiki.multitheftauto.com/wiki/ResetWaterLevel
  **/
  public static function resetLevel(): Bool;

  /**
    This function changes the water color of the GTA world.

    @see https://wiki.multitheftauto.com/wiki/SetWaterColor
  **/
  public static function setColor(red: Int, green: Int, blue: Int, ?alpha: Int): Bool;

  /**
    Sets the height of some or all the water in the game world.

    @see https://wiki.multitheftauto.com/wiki/SetWaterLevel
  **/
  @:overload(function(theWater: Water, level: Float): Bool {})
  @:overload(function(level: Float, includeWaterFeatures: Bool, includeWaterElements: Bool): Bool {})
  public static function setLevel(level: Float): Bool;

  /**
    Sets the world position of a corner point of a water area.

    @see https://wiki.multitheftauto.com/wiki/SetWaterVertexPosition
  **/
  public function setVertexPosition(vertexIndex: Int, position: Vector3): Bool;

  /**
    This function sets the wave height to the desired value, the default is 0.

    @see https://wiki.multitheftauto.com/wiki/SetWaveHeight
  **/
  public static function setWaveHeight(height: Float): Bool;
}
