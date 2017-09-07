package mtasa.shared;

@:native("Vector3")
extern class Vector3 {
  public var x: Float;
  public var y: Float;
  public var z: Float;

  public static function create(x: Float, y: Float, z: Float): Vector3;
}
