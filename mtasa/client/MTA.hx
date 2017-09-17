package mtasa.client;

import mtasa.shared.MultiReturn;

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
}
