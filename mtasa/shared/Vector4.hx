package mtasa.shared;

/**
The vector4 class representsa four-dimensional vector.

@see https://wiki.multitheftauto.com/wiki/Vector/Vector4
**/
@:native("Vector4")
extern class Vector4 {
  public var x: Float;
  public var y: Float;
  public var z: Float;
  public var w: Float;

  public static function create(x: Float, y: Float, z: Float, w: Float): Vector4;
  public function normalize(): Bool;

  /**
    These functions allow you get y coordinate.
  **/
  public function getX(): Float;

  /**
    These functions allow you get y coordinate.
  **/
  public function getY(): Float;

  /**
    These functions allow you get z coordinate.
  **/
  public function getZ(): Float;

  /**
    These functions allow you get w coordinate.
  **/
  public function getW(): Float;

  /**
    These functions allow you set y coordinate.
  **/
  public function setX(x: Float): Float;

  /**
    These functions allow you set y coordinate.
  **/
  public function setY(y: Float): Float;

  /**
    These functions allow you set z coordinate.
  **/
  public function setZ(z: Float): Float;

  /**
    These functions allow you set w coordinate.
  **/
  public function setW(w: Float): Float;

  public function getNormalized(): Vector4;
  public function getSquaredLength(): Float;

  /**
    Return lenght of vector4.
  **/
  public function getLength(): Float;
}
