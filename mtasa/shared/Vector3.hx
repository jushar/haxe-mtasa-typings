package mtasa.shared;

/**
The vector3 class represents a three-dimensional vector.

https://wiki.multitheftauto.com/wiki/Vector/Vector3
**/
@:native("Vector3")
extern class Vector3 {
  public var x: Float;
  public var y: Float;
  public var z: Float;

  /**
    This is default constructor for the Vector3 class and returns a Vector3 object.
  **/
  @:native("create")
  public function new(x: Float, y: Float, z: Float);

  /**
    Return lenght in Float from map center ( 0,0,0 ) to this vector3
  **/
  public function getLength(): Float;

  /**
    TODO
  **/
  public function getSquaredLength(): Float;

  /**
   Returns a normalized vector (of length 1) of the vector it's used on. Differently from the Vector3:normalize method, this one returns a vector3 and doesn't modify the original vector.
  **/
  public function getNormalized(): Vector3;

  /**
    Return Vector X.
  **/
  public function getX(): Float;
  /**
    Return Vector Y.
  **/
  public function getY(): Float;
  /**
    Return Vector Z.
  **/
  public function getZ(): Float;
  /**
    Set Vector Z.
  **/
  public function setX(x: Float): Bool;
  /**
    Set Vector Z.
  **/
  public function setY(y: Float): Bool;
  /**
    Set Vector Z.
  **/
  public function setZ(z: Float): Bool;
  /**
    Converts a vector to a unit vector (a vector of length 1).
  **/
  public function normalize(): Bool;
  /**
    Calculates the (standard) dot/scalar product of two vectors. If we call that vectors A and B, the dot product is written as A · B. This can be used to calculate the angle between them. If the standard scalar product is 0, both vectors are orthogonal.
  **/
  public function dot(vector: Vector3): Float;
  /**
    Calculates the cross product of two vectors, A and B, and is written as A × B. The result is another vector which:
    Is orthogonal to both A and B.
    Its direction is determined by the right-hand rule.
    Its length is equal to the area of the parallelogram that A and B form (which in turn is equal to A's length by B's length by the sine of the minimum angle between A and B).
  **/
  public function cross(vector: Vector3): Vector3;
}
