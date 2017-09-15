package mtasa.shared;

@:multiReturn extern class Color {
  var r: Int;
  var g: Int;
  var b: Int;
  var a: Int;
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
