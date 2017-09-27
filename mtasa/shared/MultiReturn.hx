package mtasa.shared;

import mtasa.client.GuiFont;

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

@:multiReturn extern class Anything{  // mayby haxe.extern.Rest<Dynamic> could be better then arg1,arg2,... TODO
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

@:multiReturn extern class HeatHaze{
  var intensity: Int;
  var randomShift: Int;
  var speedMin: Int;
  var speedMax: Int;
  var scanSizeX: Int;
  var scanSizeY: Int;
  var renderSizeX: Int;
  var renderSizeY: Int;
  var bShowInside: Bool;
}

@:multiReturn extern class SkyGradient{
  var r1: Int;
  var g1: Int;
  var b1: Int;
  var r2: Int;
  var g2: Int;
  var b2: Int;
}

@:multiReturn extern class GameTime{
  var hours: Int;
  var minutes: Int;
}

@:multiReturn extern class VehicleLodDistance{
  var other: Int;
  var trainsPlanes: Int;
}

@:multiReturn extern class Weather{
  var weather: Int;
  var blend: Int;
}

@:multiReturn extern class SunColor{
  var aRed: Int;
  var aGreen: Int;
  var aBlue: Int;
  var bRed: Int;
  var bGreen: Int;
  var bBlue: Int;
}

@:multiReturn extern class BoundingBoxGarage{
  var westernX: Float;
  var easternX: Float;
  var southernY: Float;
  var northernY: Float;
}

@:multiReturn extern class Position3d{
  var x: Float;
  var y: Float;
  var z: Float;
}

@:multiReturn extern class Position2d{
  var x: Float;
  var y: Float;
}
@:multiReturn extern class ScreenSize{
  var x: Int;
  var y: Int;
}

@:multiReturn extern class ProcessLine{
  var hit: Bool;
  var hitX: Float;
  var hitY: Float;
  var hitZ: Float;
  var hitElement: Element;
  var normalX: Float;
  var normalY: Float;
  var normalZ: Float;
  var material: Int;
  var lighting: Float;
  var piece: Int;
  var worldModelID: Int;
  var worldModelPositionX: Float;
  var worldModelPositionY: Float;
  var worldModelPositionZ: Float;
  var worldModelRotationX: Float;
  var worldModelRotationY: Float;
  var worldModelRotationZ: Float;
  var worldLODModelID: Int;
}

@:multiReturn extern class DatabaseResult{
  var result: lua.Table<Int,Dynamic>;
  var num_affected_rows: Int;
  var last_insert_id: Int;
}

@:multiReturn extern class Animation{
  var block: String;
  var name: String;
}

@:multiReturn extern class PedTask{
  var task1: String;
  var task2: String;
  var task3: String;
  var task4: String;
}

@:multiReturn extern class PedVoice{
  var type: String;
  var name: String;
}

@:multiReturn extern class MaterialSize{
  var width: Int;
  var height: Int;
  var depth: Int;
}

@:multiReturn extern class FontNameContainer{
  var name: String;
  var font: GuiFont;
}
