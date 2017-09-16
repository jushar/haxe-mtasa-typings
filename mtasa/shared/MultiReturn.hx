package mtasa.shared;
@:multiReturn extern class RGB{
  var r: Int;
  var g: Int;
  var b: Int;
}
@:multiReturn extern class Color {
  var r: Int;
  var g: Int;
  var b: Int;
  var a: Int;
}

@:multiReturn extern class Color4 {
  var r1: Int;
  var g1: Int;
  var b1: Int;
  var a1: Int;
  var r2: Int;
  var g2: Int;
  var b2: Int;
  var a2: Int;
  var r3: Int;
  var g3: Int;
  var b3: Int;
  var a3: Int;
  var r4: Int;
  var g4: Int;
  var b4: Int;
  var a4: Int;
}

@:multiReturn extern class TimerDetails {
  var timeLeft: Int;
  var leftExecutes: Int;
  var ExecutesTimes: Int;
}

@:multiReturn extern class WaterVertextPosition{
  var x: Int;
  var y: Int;
  var z: Float;
}

@:multiReturn extern class Anything{  // mayby haxe.extern.Rest<Dynamic> could be better then arg1,arg2,...
  var arg1: Dynamic;
  var arg2: Dynamic;
  var arg3: Dynamic;
  var arg4: Dynamic;
  var arg5: Dynamic;
}

@:multiReturn extern class CameraMatrix{
  var position: Vector3;
  var lookAt: Vector3;
  var roll: Float;
  var fov: Float;
}

@:multiReturn extern class CameraClip{
  var object: Bool;
  var vehicles: Bool;
}

@:multiReturn extern class Cursor3DPosition{
  var cursorX: Float;
  var cursorY: Float;
  var worldX: Float;
  var worldY: Float;
  var worldZ: Float;
}

@:multiReturn extern class Clothes{
  var texture: String;
  var model: String;
}

@:multiReturn extern class ClothesModel{
  var type: Int;
  var index: Int;
}

@:multiReturn extern class PerformanceStats{  // TODO
  var one: lua.Table<Dynamic,Dynamic>;
  var two: lua.Table<Dynamic,Dynamic>;
}

@:multiReturn extern class AttachOffset{
  var px: Float;
  var py: Float;
  var pz: Float;
  var rx: Float;
  var ry: Float;
  var rz: Float;
}

@:multiReturn extern class BoundingBox{
  var p1x: Float;
  var p1y: Float;
  var p1z: Float;
  var p2x: Float;
  var p2y: Float;
  var p2z: Float;
}

@:multiReturn extern class Variants{
  var a: Int;
  var b: Int;
}

@:multiReturn extern class WheelsState{
  var frontLeft: Int;
  var rearLeft: Int;
  var frontRight: Int;
  var rearRight: Int;
}
