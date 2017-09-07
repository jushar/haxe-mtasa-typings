package mtasa.server;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var source: Element;

  // Global functions
  public static function addEventHandler(name: String, attachTo: Element, func: Dynamic): Bool;
  public static function removeEventHandler(name: String, attachTo: Element, func: Dynamic): Bool;

  public static function outputServerLog(message: String): Bool;
  public static function outputDebugString(message: String): Bool;

  public static function getRandomPlayer(): Player;
}
