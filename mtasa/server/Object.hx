package mtasa.server;

import mtasa.shared.Vector3;

@:native("Object")
extern class Object extends Element {

  public static function create(model: UInt, position: Vector3, ?rotation: Vector3, ?isLowLOD: Bool): Object;

  /**
  This method will smoothly move an object from its current position to a specified rotation and position.
  **/
  public function move(time:Int, targetx:Float, targety:Float, targetz:Float, ?moverx:Float, ?movery:Float, ?moverz:Float, ?strEasingType:String, ?fEasingPeriod:Float, ?fEasingAmplitude:Float, ?fEasingOvershoot:Float): Bool;

  /**
  This will allow you to stop an object that is currently moving.
  **/
  public function stop(): Bool;

  /**
  This method returns the visible size of an object.
  **/
  public function getScale(): Float;

  /**
  This variable returns the visible size of an object.
  **/
  public var scale: Float;

  /**
  This function changes the visible size of an object.
  **/
  public function setScale(scale:Float, ?scaleY:Float, ?scaleZ:Float): Bool;
}
