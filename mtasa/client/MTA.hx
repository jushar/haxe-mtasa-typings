package mtasa.client;

import mtasa.shared.MultiReturn;

@:native("_G")
extern class MTA{
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
    Display anything you want in debugscript and console.

    @see https://wiki.multitheftauto.com/wiki/iprint
  **/
  public static function iprint(anything: haxe.extern.Rest<Dynamic>): Bool;
}
