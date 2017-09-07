package mtasa.server;

import mtasa.shared.Vector3;

@:native("Object")
extern class Object extends Element {
  
  public static function create(model: UInt, position: Vector3, ?rotation: Vector3, ?isLowLOD: Bool): Object;

}
