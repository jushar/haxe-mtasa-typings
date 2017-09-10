package mtasa.shared;

@:native("Vector3")
extern class Vector3 {
  public var x: Float;
  public var y: Float;
  public var z: Float;

  public static function create(x: Float, y: Float, z: Float): Vector3;
  
  public function getLength(): Float;
  public function getSquaredLength(): Float;
  public function getNormalized(): Vector3;
  public function getX(): Float { return this.x; };
  public function getY(): Float { return this.y; };
  public function getZ(): Float { return this.z; };
  public function setX(x: Float): Bool;
  public function setY(y: Float): Bool;
  public function setZ(z: Float): Bool;
  public function normalize(): Bool;
  public function dot(vector: Vector3): Float;
  public function cross(vector: Vector3): Vector3;

  //@:op(A + B) -- i dont know how this works :/
  public function add(vector:Vector3):Vector3 {
      return new Vector3(this.x+vector.x,this.y+vector.y,this.z+vector.z);
  }
  public function distance(vector:Vector3):Float {
      // todo
  }
}
