package mtasa.shared;

import mtasa.shared.Vector3;
import mtasa.shared.Vector2;
/**
  The object class represents static, 3-D models in the GTA world. Objects can only represent models created by the server, they cannot represent models that are part of the GTA's default landscape. Examples of objects include building models, roads, and terrain.

  @see https://wiki.multitheftauto.com/wiki/Element/Object
**/
@:native("Object")
extern class Object extends mtasa.shared.Element
{
  /**
    Creates an object in the GTA world.
    @param  model     a whole integer specifying the GTASA object model ID.
    @param  position  a vector3 representing the XYZ coordinate on the map.
    @param  rotation  a vector3 representing the rotation about the XYZ axis in degrees.
    @param  isLowLod  a bool value specifying if the object will be low LOD. A low LOD object has no collision and a longer draw distance.
    @see https://wiki.multitheftauto.com/wiki/CreateObject
  **/
  public static function create(model: UInt, position: Vector3, ?rotation: Vector3, ?isLowLOD: Bool): Object;

  /**
    This method will smoothly move an object from its current position to a specified rotation and position.
  **/
  public function move(time:Int, target_position: Vector3, ?rotation: Vector3, ?strEasingType:String, ?fEasingPeriod:Float, ?fEasingAmplitude:Float, ?fEasingOvershoot:Float): Bool;

  /**
    This will allow you to stop an object that is currently moving.
  **/
  public function stop(): Bool;

  /**
    This method returns the visible size of an object.
  **/
  public function getScale(): Float;

  /**
    This function changes the visible size of an object.
  **/
  public function setScale(scale: Float, scale: Vector2): Bool;
}
