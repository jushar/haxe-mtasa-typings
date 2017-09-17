package mtasa.client;

@:native("Player")
extern class Player extends Element
{
  /**
    This method is used to forcefully show a player's radar map.

    @see https://wiki.multitheftauto.com/wiki/ForcePlayerMap
  **/
  public static function forceMap(forceOn: Bool): Bool;

  /**
    This method allows you to check the current blur level.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerBlurLevel
  **/
  public static function getBlurLevel(): Int;

  /**
    Returns the amount of money a player currently has.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerMoney
  **/
  public static function getMoney(): Int;

  /**
    This method returns a string containing the name of the specified player.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerName
  **/
  public static function getName(): String;

  /**
    This method gets a player's current wanted level. The wanted level is indicated by the amount of stars a player has on the GTA HUD.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerWantedLevel
  **/
  public static function getWantedLevel(): String;

  /**
    This method checks if the specified player's radar map has been forced on or not.

    @see https://wiki.multitheftauto.com/wiki/IsPlayerMapForced
  **/
  public static function isMapForced(): Bool;

  /**
    Sets the motion blur level on the clients screen. Accepts a value between 0 and 255.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerBlurLevel
  **/
  public static function setBlurLevel(level: Int): Bool;

  /**
    This method will show or hide a part of the player's HUD.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerHudComponentVisible
  **/
  public static function setHudComponentVisible(component: String, show: Bool): Bool;
}
