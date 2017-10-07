package mtasa.shared;

import mtasa.shared.MultiReturn;

@:native("RadarArea")
extern class RadarArea extends Element
{
  /**
    This function can be used to create custom radar areas on the radar.

    @see https://wiki.multitheftauto.com/wiki/CreateRadarArea
  **/
  @:native("create")
  public function new(leftBottom: Vector2, size: Vector2, ?red: Int, ?green: Int, ?blue: Int, ?alpha: Int, ?visibleTo: Element);

  /**
    This function can be used to retrieve the current color of a radar area.

    @see https://wiki.multitheftauto.com/wiki/GetRadarAreaColor
  **/
  public function getColor(): Color;

  /**
    This function is used for getting the X and Y size of an existing radar area.

    @see https://wiki.multitheftauto.com/wiki/GetRadarAreaSize
  **/
  public function getSize(): Vector2;

  /**
    This function checks if a 2D position is inside a radar area or not.

    @see https://wiki.multitheftauto.com/wiki/IsInsideRadarArea
  **/
  public function isInside(position: Vector2): Bool;

  /**
    This function allows detection of whether a radar area is flashing or not.

    @see https://wiki.multitheftauto.com/wiki/IsRadarAreaFlashing
  **/
  public function isFlashing(): Bool;

  /**
    Sets the color of an existing radar area.

    @see https://wiki.multitheftauto.com/wiki/SetRadarAreaColor
  **/
  public function setColor(red: Int, green: Int, blue: Int, alpha: Int): Bool;

  /**
    This function makes an existing radar area flash in transparency.

    @see https://wiki.multitheftauto.com/wiki/SetRadarAreaFlashing
  **/
  public function setFlashing(flash: Bool): Bool;

  /**
    This function changes the size of an existing radar area.

    @see https://wiki.multitheftauto.com/wiki/SetRadarAreaSize
  **/
  public static function setSize(size: Vector2): Bool;
}

