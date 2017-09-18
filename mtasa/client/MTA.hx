package mtasa.client;

import mtasa.shared.MultiReturn;
import mtasa.shared.Vector2;
import mtasa.shared.Vector3;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var guiRoot: Element;
  public static var localPlayer: Player;

  /**
    This function returns an element that corresponds to the game camera.

    @see https://wiki.multitheftauto.com/wiki/GetCamera
  **/
  public static function getCamera(): Element;

  /**
    This function gets the current position of the mouse cursor. Note that for performance reasons, the world position returned is always 300 units away.

    @see https://wiki.multitheftauto.com/wiki/GetCursorPosition
  **/
  public static function getCursorPosition(): Cursor3DPosition;

  /**
    This function is used to determine whether or not a player's cursor is showing.

    @see https://wiki.multitheftauto.com/wiki/IsCursorShowing
  **/
  public static function isCursorShowing(): Bool;

  /**
    This function is used to show or hide a player's cursor.

    @see https://wiki.multitheftauto.com/wiki/ShowCursor
  **/
  public static function showCursor(show: Bool, ?toggleControls: Bool): Bool;

  /**
    This function is used to change alpha (transparency) from the client's cursor.
    @param alpha range 0-255
    @see https://wiki.multitheftauto.com/wiki/setCursorAlpha
  **/
  public static function setCursorAlpha(alpha: Int): Bool;

  /**
    This function is used to get alpha (transparency) from the client's cursor.

    @see https://wiki.multitheftauto.com/wiki/getCursorAlpha
  **/
  public static function getCursorAlpha(): Int;

  /**
    This function sets the players clipboard text (what appears when you paste with CTRL + V) Note that there is no getClipBoard function for safety reasons.

    @see https://wiki.multitheftauto.com/wiki/SetClipboard
  **/
  public static function setClipboard(theText: String): Bool;

  /**
    This function allows the window to flash in the Windows taskbar.

    @see https://wiki.multitheftauto.com/wiki/SetWindowFlashing
  **/
  public static function setWindowFlashing(shouldFlash: Bool, count: Int): Bool;

  /**
    This function returns a boolean value whether the client has enabled tray notifications in his settings or not.

    @see https://wiki.multitheftauto.com/wiki/IsTrayNotificationEnabled
  **/
  public static function isTrayNotificationEnabled(): Bool;

  /**
    This functions creates a notification ballon on the desktop.
    Not working for windows 10
    @see https://wiki.multitheftauto.com/wiki/CreateTrayNotification
  **/
  public static function createTrayNotification(notificationText: String, ?iconType: String, ?useSound: Bool): Bool;

  /**
    This function retrieves the hex number of a specified color, useful for the dx functions.

    @see https://wiki.multitheftauto.com/wiki/Tocolor
  **/
  public static function tocolor(red: Int, green: Int, blue: Int, ?alpha: Int): Int;
  /**
    Draws an image on the screen for a single frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawImage
  **/
  public static function dxDrawImage(position: Vector2, size: Vector2, image: Dynamic, ?rotation: Float, ?rotationCenterOffsetX: Float, ?rotationCenterOffsetY: Float, ?color: Int, ?postGUI: Bool): Bool

  /**
    Differing from dxDrawImage, this function only draws a part of an image on the screen for a single frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawImageSection
  **/
  public static function dxDrawImageSection(position: Vector2, size: Vector2, uv: Vector2, uvSize: Vector2, image: Dynamic, ?rotation: Float, ?rotationCenterOffsetX: Float, ?rotationCenterOffsetY: Float, ?color: Int, ?postGUI: Bool): Bool

  /**
    This function draws a 2D line across the screen - rendered for one frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawLine
  **/
  public static function dxDrawLine(startPosition: Vector2, endPosition: Vector2, color: Int, ?width: Float, ?postGUI: Bool): Bool;

  /**
    This function draws a 3D line between two points in the 3D world - rendered for one frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawLine3D
  **/
  public static function dxDrawLine3D(startPosition: Vector3, endPosition: Vector3, color: Int, ?width: Float, ?postGUI: Bool): Bool;

  /**
    This function draws a 2D rectangle across the screen - rendered for one frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawRectangle
  **/
  public static function dxDrawRectangle(startPosition: Vector2, endPosition: Vector2, color: Int, ?width: Float, ?postGUI: Bool, ?subPixelPositioning: Bool): Bool;

  /**
    Draws a string of text on the screen for one frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawText
  **/
  public static function dxDrawText(text: String, positionLeftTop: Vector2, ?positionRightBottom: Vector2, ?color: Int, ?scale: Float, ?font: Dynamic, ?alignX: String, ?alignY: Float, ?clip: Bool, ?wordBreak: Bool, ?postGUI: Bool, ?colorCoded: Bool, ?subPixelPositioning: Bool, ?fRotation: Float, ?fRotationCenterX: Float, ?fRotationCenterY: Float): Bool;

  /**
    This function draws a textured 3D line between two points in the 3D world - rendered for one frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawMaterialLine3D
  **/
  public static function dxDrawMaterialLine3D(start: Vector3, end: Vector3, material: Element, ?width: Float, ?color: Int, ?faceToward: Vector3): Bool;

  /**
    This function draws a textured 3D line between two points in the 3D world - rendered for one frame.

    @see https://wiki.multitheftauto.com/wiki/DxDrawMaterialSectionLine3D
  **/
  public static function dxDrawMaterialSectionLine3D(start: Vector3, end: Vector3, uv: Vector2, uvSize: Vector2, material: Element, ?width: Float, ?color: Int, ?faceToward: Vector3): Bool;

  /**
    This function will tell you if the birds are enabled or disabled.

    @see https://wiki.multitheftauto.com/wiki/GetBirdsEnabled
  **/
  public static function getBirdsEnabled(): Bool;

  /**
    Returns the distance of vehicles LOD.

    @see https://wiki.multitheftauto.com/wiki/GetVehiclesLODDistance
  **/
  public static function getVehiclesLODDistance(): VehicleLodDistance;

  /**
    This function checks to see if the music played by default in clubs is disabled or not.

    @see https://wiki.multitheftauto.com/wiki/GetInteriorSoundsEnabled
  **/
  public static function getInteriorSoundsEnabled(): Bool;

  /**
    This function outputs the bounding box of a garage.

    @see https://wiki.multitheftauto.com/wiki/GetGarageBoundingBox
  **/
  public static function getGarageBoundingBox(garageID: Int): BoundingBox;

  /**
    This function outputs X, Y and Z position of given garage.

    @see https://wiki.multitheftauto.com/wiki/GetGaragePosition
  **/
  public static function getGaragePosition(garageID: Int): Vector3;

  /**
    This function gets the Z level of the highest ground below a point.

    @see https://wiki.multitheftauto.com/wiki/GetGroundPosition
  **/
  public static function getGroundPosition(position: Vector3): Float;

  /**
    This function will tell you if interior furniture are enabled or disabled in a specified room ID.

    @see https://wiki.multitheftauto.com/wiki/GetInteriorFurnitureEnabled
  **/
  public static function getInteriorFurnitureEnabled(roomID: Int): Bool;

  /**
    This function allows you to retrieve the world position corresponding to a 2D position on the screen, at a certain depth.

    @see https://wiki.multitheftauto.com/wiki/GetWorldFromScreenPosition
  **/
  public static function getWorldFromScreenPosition(position: Vector2, depth: Float): Position3d;

  /**
    This function allows you to check if some background sound effects are enabled.

    @see https://wiki.multitheftauto.com/wiki/IsAmbientSoundEnabled
  **/
  public static function isAmbientSoundEnabled(theType: String): Bool;

  /**
    This function allows you to check if certain world sound effects have not been disabled by setWorldSoundEnabled

    @see https://wiki.multitheftauto.com/wiki/IsWorldSoundEnabled
  **/
  public static function isWorldSoundEnabled(group: Int, ?index: Int): Bool;

  /**
    Checks if a special world property (cheat) is enabled or not.

    @see https://wiki.multitheftauto.com/wiki/IsWorldSpecialPropertyEnabled
  **/
  public static function isWorldSpecialPropertyEnabled(propname: String): Bool;

  /**
    This function casts a ray between two points in the world, and tells you information about the point that was hit, if any.

    @see https://wiki.multitheftauto.com/wiki/ProcessLineOfSight
  **/
  public static function processLineOfSight(start: Vector3, end: Vector3, ?checkBuildings: Bool, ?checkVehicles: Bool, ?checkPeds: Bool, ?checkObjects: Bool, ?checkDummies: Bool, ?seeThroughStuff: Bool, ?ignoreSomeObjectsForCamera: Bool, ?shootThroughStuff: Bool, ?ignoredElement: Bool, ?includeWorldModelInformation: Bool, ?bIncludeCarTyres: Bool): ProcessLine;

  /**
    This function checks if there are obstacles between two points of the game world, optionally ignoring certain kinds of elements. Use processLineOfSight if you want more information about what the ray hits.

    @see https://wiki.multitheftauto.com/wiki/IsLineOfSightClear
  **/
  public static function isLineOfSightClear(start: Vector3, end: Vector3, ?checkBuildings: Bool, ?checkVehicles: Bool, ?checkPeds: Bool, ?checkObjects: Bool, ?checkDummies: Bool, ?seeThroughStuff: Bool, ?ignoreSomeObjectsForCamera: Bool, ?shootThroughStuff: Bool, ?ignoredElement: Bool): Bool;
  /**
    This function is used to reset the background sounds to the default setting.

    @see https://wiki.multitheftauto.com/wiki/ResetAmbientSounds
  **/
  public static function resetAmbientSounds(): Bool;

  /**
    Resets the distance of vehicles LOD to default.

    @see https://wiki.multitheftauto.com/wiki/ResetVehiclesLODDistance
  **/
  public static function resetVehiclesLODDistance(): Bool;

  /**
    This function is used to reset the world sounds to the default setting.

    @see https://wiki.multitheftauto.com/wiki/ResetWorldSounds
  **/
  public static function resetWorldSounds(): Bool;

  /**
    This function allows you to disable the flying birds.

    @see https://wiki.multitheftauto.com/wiki/SetBirdsEnabled
  **/
  public static function setBirdsEnabled(enabled: Bool): Bool;

  /**
    This function toggles furniture generation in interiors with the specified room ID.

    @see https://wiki.multitheftauto.com/wiki/SetInteriorFurnitureEnabled
  **/
  public static function setInteriorFurnitureEnabled(roomID: Int, enabled: Bool): Bool;

  /**
    This function sets the distance from the camera at which the world starts rendering.

    @see https://wiki.multitheftauto.com/wiki/SetNearClipDistance
  **/
  public static function setNearClipDistance(distance: Float): Bool;

  /**
    This function allows you to disable world sounds.

    @see https://wiki.multitheftauto.com/wiki/SetWorldSoundEnabled
  **/
  @:overload(function(group: Int, index: Int, enable: Bool): Bool {})
  public static function setWorldSoundEnabled(group: Int, enable: Bool): Bool;

  /**
    This function checks to see if a line between two points collides with the water.

    @see https://wiki.multitheftauto.com/wiki/TestLineAgainstWater
  **/
  public static function testLineAgainstWater(start: Vector3, end: Vector3): Position3d;

  /**
    Creates a SWAT rope like that of the rope in single player used by SWAT Teams abseiling from the Police Maverick.

    @see https://wiki.multitheftauto.com/wiki/CreateSWATRope
  **/
  public static function createSWATRope(position: Vector3, duration: Int): Bool;

  /**
    Creates a patch of fire that will spread a bit and die out after a while. Because it's a client side only function, other players won't see it, so custom events or custom objects will be needed to make a fire visible to some players.

    @see https://wiki.multitheftauto.com/wiki/CreateFire
  **/
  public static function createFire(position: Vector3, size: Float): Bool;
}
