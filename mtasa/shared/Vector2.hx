package mtasa.shared;

abstract Vector2Abstract(Vector2) from Vector2 to Vector2 {
  @:op(A + B)
  public function __add(rhs: Vector2): Vector2Abstract {
    var __add = untyped getmetatable(this);
    return __add(this, rhs);
  }
}

/**
The vector2 class representsa two-dimensional vector.

@see https://wiki.multitheftauto.com/wiki/Vector/Vector2
**/
@:native("Vector2")
extern class Vector2 {
  public var x: Float;
  public var y: Float;

  public static function create(x: Float, y: Float): Vector2Abstract;

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
  public function getNormalized(): Vector2Abstract;
  public function getSquaredLength(): Float;

  /**
    Return lenght of vector2.
  **/
  public function getLength(): Float;
}

