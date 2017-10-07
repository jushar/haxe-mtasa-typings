package mtasa.shared;

abstract Vector2(Vector2Base) from Vector2Base to Vector2Base {
  public function new(x: Float, y: Float) {
    return Vector2Base.__internalCreate(x, y);
  }

  @:op(A + B)
  public function __add(rhs: Vector2): Vector2 {
    var __add = untyped getmetatable(this).__add;
    return __add(this, rhs);
  }

  @:op(A - B)
  public function __sub(rhs: Vector2): Vector2 {
    var __sub = untyped getmetatable(this).__sub;
    return __sub(this, rhs);
  }

  @:op(A * B)
  public function __mul(rhs: haxe.extern.EitherType<Vector2,Float>): Vector2 {
    var __mul = untyped getmetatable(this).__mul;
    return __mul(this, rhs);
  }

  @:op(A / B)
  public function __div(rhs: haxe.extern.EitherType<Vector2,Float>): Vector2 {
    var __div = untyped getmetatable(this).__div;
    return __div(this, rhs);
  }

  @:op(-A)
  public function __unm(): Vector2 {
    var __unm = untyped getmetatable(this).__unm;
    return __unm(this);
  }
}

/**
The vector2 class representsa two-dimensional vector.

@see https://wiki.multitheftauto.com/wiki/Vector/Vector2
**/
@:native("Vector2")
extern class Vector2Base {
  public var x: Float;
  public var y: Float;

  @:native("create")
  public static function __internalCreate(x: Float, y: Float): Vector2;

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

