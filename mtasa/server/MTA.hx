package mtasa.server;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var source: Element;
  public static var root: Element;
  public static var resourceRoot: Element;

  /**
    Adds event handler to specific event and source element 
  **/
  public static function addEventHandler(name: String, attachTo: Element, func: Dynamic): Bool;

  /**
    Removes event handler for specific event and source element
  **/
  public static function removeEventHandler(name: String, attachTo: Element, func: Dynamic): Bool;

  /**
    Creates console with given name
  **/
  public static function addCommandHandler(commandName: String, handlerFunction: Player->String->Array<String>->Bool, ?restricted = false, ?caseSensitive = true)

  /**
    Outputs given message to server log
  **/
  public static function outputServerLog(message: String): Bool;

  /**
    Outputs given message to debug
  **/
  public static function outputDebugString(message: String): Bool;

  /**
    Outputs given message to ingame console 
  **/
  public static function outputConsole(message: String): Bool;

  /**
    Gets random player from server
  **/
  public static function getRandomPlayer(): Player;
}
