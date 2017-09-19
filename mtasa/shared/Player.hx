package mtasa.shared;

import mtasa.shared.MultiReturn;
import mtasa.shared.Team;

@:native("Player")
extern class Player extends Element
{
  /**
    This method gets the current color of a player's name tag as RGB values. These are in the range 0-255.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerNametagColor
  **/
  public function getNametagColor(): Color;

  /**
    This method returns the ping of a specified player. The ping is the number of milliseconds that data takes to travel from the player's client to the server or vice versa.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerPing
  **/
  public function getPing(): Int; // need check if local player can ping other player. TODO

  /**
    This method gets the current team a player is on.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerTeam
  **/
  public function getTeam(): Team;

  /**
    This method will allow you to determine if a player's name tag is currently showing.

    @see https://wiki.multitheftauto.com/wiki/IsPlayerNametagShowing
  **/
  public function isNametagShowing(): Bool;

  /**
    This method allows you to make the server reveal whether or not voice is currently enabled.

    @see https://wiki.multitheftauto.com/wiki/IsVoiceEnabled
  **/
  public function isVoiceEnabled(): Bool;

  /**
    This allows you to change the RGB color mixture in the name tags of players.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerNametagColor
  **/
  @:overload(function(Reset: Bool): Bool {})
  public function setNametagColor(Red: Int, Green: Int, Blue: Int): Bool;

  /**
    This method allows you to set whether a player's nametag visibility both clientside and serverside
    Use this to define whether the player's name tag is visible or invisible.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerNametagShowing
  **/
  public function setNametagShowing(showing: Bool): Bool;

  /**
    This will change the text of a player's nickname in the world to something besides the nickname he chose. This will not change the player's actual nickname, it only changes the visible aspect inside the world (you will see his original nickname in the scoreboard and will refer to his original name in scripts).

    @see https://wiki.multitheftauto.com/wiki/SetPlayerNametagText
  **/
  public function setNametagText(text: String): Bool;

}
