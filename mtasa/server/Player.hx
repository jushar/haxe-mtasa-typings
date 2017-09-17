package mtasa.server;

import mtasa.shared.Vector3;
import mtasa.shared.MultiReturn;


@:native("Player")
extern class Player extends Element
{
  /**
    This method is used to forcefully show a player's radar map.

    @see https://wiki.multitheftauto.com/wiki/ForcePlayerMap
  **/
  public function forceMap(forceOn: Bool): Bool;

  /**
    This method returns anti-cheat info for a player. The info returned by this function can change over time, so use the server event onPlayerACInfo instead.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerACInfo
  **/
  public function getACInfo(): Dynamic;

  /**
    This method retrieves a players ASE announce value under a certain key.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerAnnounceValue
  **/
  public function getAnnounceValue(): String;

  /**
    This method allows you to check the current blur level of a specified player.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerBlurLevel
  **/
  public function getBlurLevel(): Int;

  /**
    This method gets the amount of time in milliseconds that a players position has not changed.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerIdleTime
  **/
  public function getIdleTime(): Int;

  /**
    This method returns a string containing the IP address of the player.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerIP
  **/
  public function getIP(): String;

  /**
    Returns the amount of money a player currently has.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerMoney
  **/
  public function getMoney(): Int;

  /**
    This method returns a string containing the name of the specified player.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerName
  **/
  public function getName(): String;

  /**
    This method returns the serial for a specified player.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerSerial
  **/
  public function getSerial(): String;

  /**
    This method gives you various version information about MTA and the operating system.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerVersion
  **/
  public function getVersion(): String;

  /**
    This method gets a player's current wanted level. The wanted level is indicated by the amount of stars a player has on the GTA HUD.

    @see https://wiki.multitheftauto.com/wiki/GetPlayerWantedLevel
  **/
  public function getWantedLevel(): String;

  /**
    This method adds money to a player's current money amount. To set absolute values, setPlayerMoney can be used.

    @see https://wiki.multitheftauto.com/wiki/GivePlayerMoney
  **/
  public function giveMoney(amount: Int): Bool;

  /**
    This method checks if the specified player's radar map has been forced on or not.

    @see https://wiki.multitheftauto.com/wiki/IsPlayerMapForced
  **/
  public function isMapForced(): Bool;

  /**
    Use this method to check if a player has been muted.

    @see https://wiki.multitheftauto.com/wiki/IsPlayerMuted
  **/
  public function isMuted(): Bool;

  /**
    This method redirects the player to a specified server.

    @see https://wiki.multitheftauto.com/wiki/RedirectPlayer
  **/
  public function redirect(serverIP: String, serverPort: Int, ?serverPassword: String): Bool;

  /**
    This method will force the specified player to resend their AC info, triggering the onPlayerACInfo event again.

    @see https://wiki.multitheftauto.com/wiki/ResendPlayerACInfo
  **/
  public function resendACInfo(): Bool;

  /**
    This method will force the specified player to resend their mod info, triggering the onPlayerModInfo event again.

    @see https://wiki.multitheftauto.com/wiki/ResendPlayerModInfo
  **/
  public function resendModInfo(): Bool;

  /**
    This method allows you to change ASE announce values for any player using a specified key. As an example this can be used to change the "score" value which will be shown at game-monitor.com's server list.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerAnnounceValue
  **/
  public function setAnnounceValue(key: String, value: String): Bool;

  /**
    Sets the motion blur level on the clients screen. Accepts a value between 0 and 255.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerBlurLevel
  **/
  public function setBlurLevel(level: Int): Bool;

  /**
    This method will show or hide a part of the player's HUD.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerHudComponentVisible
  **/
  public function setHudComponentVisible(component: String, show: Bool): Bool;

  /**
    Sets a player's money to a certain value, regardless of current player money. It should be noted that setting negative values does not work and in fact gives the player large amounts of money.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerMoney
  **/
  public function setMoney(amount: Int, ?instant: Bool): Bool;

  /**
    Use this method to mute or unmute the player.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerMuted
  **/
  public function setMuted(state: Bool): Bool;

  /**
    This method changes the specified player's name.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerName
  **/
  public function setName(name: String): Bool;

  /**
    This method adds a player to an existing team. The player will automatically be removed from his current team if he's on one.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerTeam
  **/
  public function setTeam(theTeam: Team): Bool;

  /**
    This method allows you to change who can hear the voice of a player.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerVoiceBroadcastTo
  **/
  public function setVoiceBroadcastTo(broadcastTo: Dynamic): Bool;

  /**
    This method allows you to mute voices for a player.

    @see https://wiki.multitheftauto.com/wiki/SetPlayerVoiceIgnoreFrom
  **/
  public function setVoiceIgnoreFrom(ignoreFrom: Dynamic): Bool;

  /**
    This method spawns the player at an arbitary point on the map.

    @see https://wiki.multitheftauto.com/wiki/SpawnPlayer
  **/
  public function spawn(position: Vector3, ?rotation:Int, ?skinID: Int, ?interior: Int, ?dimension: Int, ?theTeam: Team): Bool;

  /**
    This method subtracts money from a player's current money amount.

    @see https://wiki.multitheftauto.com/wiki/TakePlayerMoney
  **/
  public function takeMoney(amount: Int): Bool;

  /**
    This method forces a client to capture the current screen output and send it back to the server. The image will contain the GTA HUD and the output of any dxDraw functions that are not flagged as 'post GUI'. The image specifically excludes the chat box and all GUI (including the client console). The result is received with the event onPlayerScreenShot.

    @see https://wiki.multitheftauto.com/wiki/TakePlayerScreenShot
  **/
  public function takeScreenShot(width: Int, height: Int, ?tag: String, ?quality: Int, ?maxBandwith: Int): Bool;

  /**
    This function will fade a player's camera to a color or back to normal over a specified time period. This will also affect the sound volume for the player (50% faded = 50% volume, full fade = no sound). For clientside scripts you can perform 2 fade ins or fade outs in a row, but for serverside scripts you must use one then the other.

    @see https://wiki.multitheftauto.com/wiki/FadeCamera
  **/
  public function fadeCamera(fadeIn: Bool, ?timeToFade: Float, ?red:Int, ?green: Int, ?blue: Int): Bool;

  /**
    Returns the interior of the local camera (independent of the interior of the local player).

    @see https://wiki.multitheftauto.com/wiki/GetCameraInterior
  **/
  public function getCameraInterior(): Int;

  /**
    This function gets the position of the camera and the position of the point it is facing.
  **/
  public function getCameraMatrix(): CameraMatrix;

  /**
    This function returns an element that corresponds to the current target of the specified player's camera (i.e. what it is following).
  **/
  public function getCameraTarget(): Player;

  /**
    Sets the interior of the local camera. Only the interior of the camera is changed, the local player stays in the interior he was in.
  **/
  public function setCameraInterior(interior: Int): Bool;

  /**
    This function sets the camera's position and direction. The first three arguments are the point at which the camera lies, the last three are the point the camera faces (or the point it "looks at").
  **/
  public function setCameraMatrix(positionX: Float, positionY: Float, positionZ: Float, ?lookAtX: Float, ?lookAtY: Float, ?lookAtZ: Float, ?roll: Float, ?fov: Float): Bool;

  /**
    This function allows you to set a player's camera to follow other elements instead. Currently supported element type is: Player
  **/
  public function setCameraTarget(?target: Player): Bool;

  /**
    This functions logs the given player in to the given account. You need to provide the password needed to log into that account.
  **/
  public function logIn(theAccount: Account, thePassword: String): Bool;

  /**
    This function plays a frontend sound for the specified player.
  **/
  public function playSoundFrontEnd(sound: Int): Bool;
}
