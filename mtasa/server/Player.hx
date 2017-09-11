package mtasa.server;

import mtasa.shared.Vector3;

@:native("Player")
extern class Player extends Element {
  /**
  This variable return if the specified player's radar map has been forced on or not.
  **/
  public var mapForced: Bool;

  /**
  This variable returns anti-cheat info for a player. The info returned by this variable can change over time,
  **/
  public var ACInfo: Dynamic;

  /**
  This variable allows you to check the current blur level of a specified player.
  **/
  public var blurLevel: Int;

  /**
  This variable return the amount of time in milliseconds that a players position has not changed.
  **/
  public var idleTime: Bool;

  /**
  This variable returns a string containing the IP address of the client.
  **/
  public var ip: String;

  /**
  Returns the amount of money a player currently has.
  **/
  public var money: Int;

  /**
  This variable returns a string containing the name of the specified player.
  **/
  public var name: String;
  
  /**
  This will allow you to retrieve the name tag a player is currently using.
  **/
  public var nametagText: String;

  /**
  This variable returns the ping of a specified player. The ping is the number of milliseconds that data takes to travel from the player's client to the server or vice versa.
  **/
  public var ping: Int;

  /**
  This variable returns the serial for a specified player.
  **/
  public var serial: String;

  /**
  Return the team class represents player teams.
  **/
  public var team: Bool;
  /**
  This variable gives you various version information about MTA and the operating system.
  **/
  public var version: String;

  /**
  This variable return a player's current wanted level. The wanted level is indicated by the amount of stars a player has on the GTA HUD.
  **/
  public var wantedLevel: Int;

  /**
  Use this variable to check if a player has been muted.
  **/
  public var muted: Bool;

  /**
  This variable will allow you to determine if a player's name tag is currently showing.
  **/
  public var nametagShowing: Bool;


  /**
  This method is used to forcefully show a player's radar map.
  **/
  public function forceMap(forceOn: Bool): Bool;

  /**
  This method returns anti-cheat info for a player. The info returned by this function can change over time, so use the server event onPlayerACInfo instead.
  **/
  public function getACInfo(): Dynamic;

  /**
  This method retrieves a players ASE announce value under a certain key.
  **/
  public function getAnnounceValue(): String;

  /**
  This method allows you to check the current blur level of a specified player.
  **/
  public function getBlurLevel(): Int;

  /**
  This method gets the amount of time in milliseconds that a players position has not changed.
  **/
  public function getIdleTime(): Int;

  /**
  This method returns a string containing the IP address of the player.
  **/
  public function getIP(): String;

  /**
  Returns the amount of money a player currently has.
  **/
  public function getMoney(): Int;

  /**
  This method returns a string containing the name of the specified player.
  **/
  public function getName(): String;

  /**
  This method gets the current color of a player's name tag as RGB values. These are in the range 0-255.
  **/
  public function getNametagColor(): Vector3;

  /**
  This method returns the ping of a specified player. The ping is the number of milliseconds that data takes to travel from the player's client to the server or vice versa.
  **/
  public function getPing(): Int;

  /**
  This method returns the serial for a specified player.
  **/
  public function getSerial(): String;

  /**
  This method gets the current team a player is on.
  **/
  public function getTeam(): Team;
  /**
  This method gives you various version information about MTA and the operating system.
  **/
  public function getVersion(): String;

  /**
  This method gets a player's current wanted level. The wanted level is indicated by the amount of stars a player has on the GTA HUD.
  **/
  public function getWantedLevel(): String;

  /**
  This method adds money to a player's current money amount. To set absolute values, setPlayerMoney can be used.
  **/
  public function giveMoney(amount:Int): Bool;

  /**
  This method checks if the specified player's radar map has been forced on or not.
  **/
  public function isMapForced(): Bool;

  /**
  Use this method to check if a player has been muted.
  **/
  public function isMuted(): Bool;

  /**
  This method will allow you to determine if a player's name tag is currently showing.
  **/
  public function isNametagShowing(): Bool;

  /**
  This method allows you to make the server reveal whether or not voice is currently enabled.
  **/
  public function isVoiceEnabled(): Bool;

  /**
  This method redirects the player to a specified server.
  **/
  public function redirect(serverIP:String, serverPort:Int, ?serverPassword:String): Bool;

  /**
  This method will force the specified player to resend their AC info, triggering the onPlayerACInfo event again.
  **/
  public function resendACInfo(): Bool;

  /**
  This method will force the specified player to resend their mod info, triggering the onPlayerModInfo event again.
  **/
  public function resendModInfo(): Bool;

  /**
  This method allows you to change ASE announce values for any player using a specified key. As an example this can be used to change the "score" value which will be shown at game-monitor.com's server list.
  **/
  public function setAnnounceValue(key:String, value:String): Bool;

  /**
  Sets the motion blur level on the clients screen. Accepts a value between 0 and 255.
  **/
  public function setBlurLevel(level:Int): Bool;

  /**
  This method will show or hide a part of the player's HUD.
  **/
  public function setHudComponentVisible(component:String, show:Bool): Bool;

  /**
  Sets a player's money to a certain value, regardless of current player money. It should be noted that setting negative values does not work and in fact gives the player large amounts of money.
  **/
  public function setMoney(amount:Int, ?instant:Bool): Bool;

  /**
  Use this method to mute or unmute the player.
  **/
  public function setMuted(state:Bool): Bool;

  /**
  This method changes the specified player's name.
  **/
  public function setName(name:String): Bool;

  /**
  This allows you to change the RGB color mixture in the name tags of players.
  **/
  public function setNametagColor(ResetOrRedColor:Dynamic,?Green:Int,Blue:Int): Bool;

  /**
  This method allows you to set whether a player's nametag visibility both clientside and serverside
  Use this to define whether the player's name tag is visible or invisible.
  **/
  public function setNametagShowing(showing:Bool): Bool;

  /**
  This will change the text of a player's nickname in the world to something besides the nickname he chose. This will not change the player's actual nickname, it only changes the visible aspect inside the world (you will see his original nickname in the scoreboard and will refer to his original name in scripts).
  **/
  public function setNametagText(text:String): Bool;

  /**
  This method adds a player to an existing team. The player will automatically be removed from his current team if he's on one.
  **/
  public function setTeam(theTeam:Team): Bool;
  /**
  This method allows you to change who can hear the voice of a player.
  **/
  public function setVoiceBroadcastTo(broadcastTo:Dynamic): Bool;

  /**
  This method allows you to mute voices for a player.
  **/
  public function setVoiceIgnoreFrom(ignoreFrom:Dynamic): Bool;

  /**
  This method spawns the player at an arbitary point on the map.
  **/
  public function spawn(x:Float, y:Float, z:Float, ?rotation:Int, ?skinID:Int, ?interior:Int, ?dimension:Int, ?theTeam:Team): Bool;
  /**
  This method subtracts money from a player's current money amount.
  **/
  public function takeMoney(amount:Int): Bool;

  /**
  This method forces a client to capture the current screen output and send it back to the server. The image will contain the GTA HUD and the output of any dxDraw functions that are not flagged as 'post GUI'. The image specifically excludes the chat box and all GUI (including the client console). The result is received with the event onPlayerScreenShot.
  **/
  public function takeScreenShot(width:Int, height:Int, ?tag:String, ?quality:Int, ?maxBandwith:Int): Bool;

  /**
  This function will fade a player's camera to a color or back to normal over a specified time period. This will also affect the sound volume for the player (50% faded = 50% volume, full fade = no sound). For clientside scripts you can perform 2 fade ins or fade outs in a row, but for serverside scripts you must use one then the other.
  **/
  public function fadeCamera(fadeIn:Bool, ?timeToFade:Float, ?red:Int, ?green:Int, ?blue:Int): Bool;

  /**
  Returns the interior of the local camera (independent of the interior of the local player).
  **/
  public function getCameraInterior(): Int;

  /**
  This function gets the position of the camera and the position of the point it is facing.
  **/
  public function getCameraMatrix(): Dynamic;

  /**
  This function returns an element that corresponds to the current target of the specified player's camera (i.e. what it is following).
  **/
  public function getCameraTarget(): Player;

  /**
  Sets the interior of the local camera. Only the interior of the camera is changed, the local player stays in the interior he was in.
  **/
  public function setCameraInterior(interior:Int): Bool;

  /**
  This function sets the camera's position and direction. The first three arguments are the point at which the camera lies, the last three are the point the camera faces (or the point it "looks at").
  **/
  public function setCameraMatrix(positionX:Float, positionY:Float, positionZ:Float, ?lookAtX:Float, ?lookAtY:Float, ?lookAtZ:Float, ?roll:Float, ?fov:Float): Bool;

  /**
  This function allows you to set a player's camera to follow other elements instead. Currently supported element type is: Player
  **/
  public function setCameraTarget(?target:Player): Bool;

  /**
  This functions logs the given player in to the given account. You need to provide the password needed to log into that account.
  **/
  public function logIn(theAccount:Account, thePassword:String): Bool;
}
