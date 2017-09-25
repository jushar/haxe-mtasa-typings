package mtasa.shared;

/**
The vector2 class representsa two-dimensional vector.

@see https://wiki.multitheftauto.com/wiki/Vector/Vector2
**/
@:native("Vector2")
@:op(A+B)
extern class Vector2 {
  public var x: Float;
  public var y: Float;

  public static function create(x: Float, y: Float): Vector2;
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
    These functions allow you set y coordinate.
  **/
  public function setX(x: Float): Float;

  /**
    These functions allow you set y coordinate.
  **/
  public function setY(y: Float): Float;
  public function getNormalized(): Vector2;
  public function getSquaredLength(): Float;

  /**
    Return lenght of vector2.
  **/
  public function getLength(): Float;
}
