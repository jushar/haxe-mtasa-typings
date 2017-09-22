package mtasa.server;

import mtasa.shared.Vector3;
import mtasa.shared.MultiReturn;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var client: Player;

  /**
    Gets random player from server

    @see https://wiki.multitheftauto.com/wiki/GetRandomPlayer
  **/
  public static function getRandomPlayer(): Player;

  /**
    This function retrieves the current gametype as set by setGameType. The game type is displayed in the server browser next to the server's name.

    @see https://wiki.multitheftauto.com/wiki/GetGameType
  **/
  public static function getGameType(): String;

  /**
    This function retrieves the current mapname as set by setMapName.

    @see https://wiki.multitheftauto.com/wiki/GetMapName
  **/
  public static function getMapName(): String;

  /**
    This function gets a rule value. A rule value is a string that can be viewed by server browsers and used for filtering the server list.

    @see https://wiki.multitheftauto.com/wiki/GetRuleValue
  **/
  public static function getRuleValue(): String;

  /**
    This function removes a set rule value that can be viewed by server browsers.

    @see https://wiki.multitheftauto.com/wiki/RemoveRuleValue
  **/
  public static function removeRuleValue(key: String): Bool;

  /**
    This function sets a string containing a name for the game type.

    @see https://wiki.multitheftauto.com/wiki/SetGameType
  **/
  public static function setGameType(gameType: String): Bool;

  /**
    This function is used to set a map name that will be visible in the server browser. In practice you should generally rely on the mapmanager to do this for you.

    @see https://wiki.multitheftauto.com/wiki/SetMapName
  **/
  public static function setMapName(mapName: String): Bool;

  /**
    This function sets a rule value that can be viewed by server browsers.

    @see https://wiki.multitheftauto.com/wiki/SetRuleValue
  **/
  public static function setRuleValue(key: String, value: String): Bool;

  /**
    This function triggers an event previously registered on a client.

    @see https://wiki.multitheftauto.com/wiki/TriggerClientEvent
  **/
  public static function triggerClientEvent(sendTo: Dynamic, name: String, sourceElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool;

  /**
    This function is the same as triggerClientEvent except the transmission rate of the data contained in the arguments can be limited and other network traffic is not blocked while the data is being transferred.

    @see https://wiki.multitheftauto.com/wiki/TriggerLatentClientEvent
  **/
  @:overload(function(sendTo: Dynamic, name: String, name: String, bandwidth: Int, theElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool {})
  public static function triggerLatentClientEvent(sendTo: Dynamic, name: String, theElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool;

  /**
    Creates an explosion of a certain type at a specified point in the world. If creator is specified, the explosion will occur only in its dimension.

    @see https://wiki.multitheftauto.com/wiki/CreateExplosion
  **/
  public static function createExplosion(position: Vector3, ?creator: Player): Bool;

  /**
    This function returns the maximum number of player slots on the server.

    @see https://wiki.multitheftauto.com/wiki/GetMaxPlayers
  **/
  public static function getMaxPlayers(): Int;

  /**
    This function retrieves the server's http port.

    @see https://wiki.multitheftauto.com/wiki/GetServerHttpPort
  **/
  public static function getServerHttpPort(): Int;

  /**
    This function retrieves the server's name.

    @see https://wiki.multitheftauto.com/wiki/GetServerName
  **/
  public static function getServerName(): String;

  /**
    This function returns the current password required to join the server.

    @see https://wiki.multitheftauto.com/wiki/GetServerPassword
  **/
  public static function getServerPassword(): String;

  /**
    This function retrieves the server's port.

    @see https://wiki.multitheftauto.com/wiki/GetServerPort
  **/
  public static function getServerPort(): Int;

  /**
    This function is used to retrieve a list of all the registered command handlers of a given resource (or of all resources).

    @see https://wiki.multitheftauto.com/wiki/GetCommandHandlers
  **/
  public static function getCommandHandlers(theResource: Resource): lua.Table<String, Resource>;

  /**
    This function retrieves whether San Andreas game glitches are enabled or not, set by using setGlitchEnabled

    @see https://wiki.multitheftauto.com/wiki/IsGlitchEnabled
  **/
  public static function isGlitchEnabled(glitchName: String): Bool;

  /**
    This function outputs scripting debug messages, which can be read by enabling the debug textbox. The debug display level can then be set so that info or warning messages get filtered out.

    @see https://wiki.multitheftauto.com/wiki/OutputDebugString
  **/
  public static function outputDebugString(text: String, ?level: Int, ?red: Int, ?green: Int, ?blue: Int): Bool;

  /**
    This outputs a line of text to the server's log. This could be useful for debugging.

    @see https://wiki.multitheftauto.com/wiki/OutputServerLog
  **/
  public static function outputServerLog(text: String): Bool;

  /**
    This function sets the maximum FPS (Frames per second) that players on the server can run their game at.
    @param fpsLimit recommended to set FPS limit between 30-60
    @see https://wiki.multitheftauto.com/wiki/SetFPSLimit
  **/
  public static function setFPSLimit(fpsLimit: Int): Bool;

  /**
    This function enables or disables glitches that are found in the original Single Player game that can be used to gain an advantage in multiplayer.

    @see https://wiki.multitheftauto.com/wiki/SetGlitchEnabled
  **/
  public static function setGlitchEnabled(glitchName: String, enable: Bool): Bool;

  /**
    This function sets the maximum number of player slots on the server.
    This function can not set more than <maxplayers> as defined in mtaserver.conf.
    @see https://wiki.multitheftauto.com/wiki/SetMaxPlayers
  **/
  public static function setMaxPlayers(slots: Int): Bool;

  /**
    This function changes the password required to join the server to the given string.

    @see https://wiki.multitheftauto.com/wiki/SetServerPassword
  **/
  public static function setServerPassword(thePassword: String): Bool;

  /**
    This function is used to show or hide the player's chat.

    @see https://wiki.multitheftauto.com/wiki/ShowChat
  **/
  public static function showChat(thePlayer: Player, show: Bool): Bool;

  /**
    This function shuts down the server.

    @see https://wiki.multitheftauto.com/wiki/Shutdown
  **/
  public static function shutdown(reason: String): Bool;

  /**
    This function gets a setting's value, or a group of settings' values, from the settings registry.

    @see https://wiki.multitheftauto.com/wiki/Get
  **/
  public static function get(settingName: String): Dynamic;

  /**
    This function is used to save arbitrary data under a certain name on the settings registry.

    @see https://wiki.multitheftauto.com/wiki/Set
  **/
  public static function set(settingName: String, value: Dynamic): Bool;

  /**
    This function returns performance information.

    @see https://wiki.multitheftauto.com/wiki/GetPerformanceStats
  **/
  public static function getPerformanceStats(category: String, ?options: String, ?filter: String): PerformanceStats;

  /**
    This function returns network status information.

    @see https://wiki.multitheftauto.com/wiki/GetNetworkStats
  **/
  public static function getNetworkStats(?thePlayer: Player): lua.Table<String,String>;

  /**
    This function returns a table containing network usage information about inbound and outbound packets.

    @see https://wiki.multitheftauto.com/wiki/GetNetworkUsageData
  **/
  public static function getNetworkUsageData(): lua.Table<String,String>; // TODO

  /**
   This function retrieves server settings which are usually stored in the mtaserver.conf file.

    @see https://wiki.multitheftauto.com/wiki/GetServerConfigSetting
  **/
  public static function getServerConfigSetting(name: String): String;

  /**
    This function sets server settings which are stored in the mtaserver.conf file.

    @see https://wiki.multitheftauto.com/wiki/SetServerConfigSetting
  **/
  public static function setServerConfigSetting(name: String, value: String, ?save: Bool): Bool;

  /**
    giveWeapon gives a specified weapon to a certain player or ped. There is an optional argument to specify ammunition. For example, a melee weapon doesn't need an ammo argument.

    @see https://wiki.multitheftauto.com/wiki/GiveWeapon
  **/
  @:overload(function(thePlayer: Player, weapon: Int, ?ammo: Int, ?setAsCurrent: Bool): Bool {})
  public static function giveWeapon (thePed: Ped, weapon: Int, ?ammo: Int, ?setAsCurrent: Bool): Bool;

  /**
    Sets the ammo to a certain amount for a specified weapon (if they already have it), regardless of current ammo.

    @see https://wiki.multitheftauto.com/wiki/SetWeaponAmmo
  **/
  public static function setWeaponAmmo(thePlayer: Player, weapon: Int, totalAmmo: Int, ?ammoInClip: Int): Bool;

  /**
    This function removes every weapons from a specified ped, rendering it unarmed.

    @see https://wiki.multitheftauto.com/wiki/TakeAllWeapons
  **/
  @:overload(function(thePlayer: Player): Bool {})
  public static function takeAllWeapons(thePed: Ped): Bool;

  /**
    This function removes a specified weapon or ammo from a certain player's inventory.

    @see https://wiki.multitheftauto.com/wiki/TakeWeapon
  **/
  public static function takeWeapon(thePlayer: Player, weaponID: Int, ?ammo: Int): Bool;

  /**
    This function gets the original weapon property of the specified weapons specified weapon type.

    @see https://wiki.multitheftauto.com/wiki/GetOriginalWeaponProperty
  **/
  @:overload(function(weaponName: String, weaponSkill: String, property: String): Int {})
  public static function getOriginalWeaponProperty(weaponID: Int, weaponSkill: String, property: String): Int;

  /**
    This function gets a weapon property of the specified custom weapon (clientside only) or specified player-held weapon (both client and server).

    @see https://wiki.multitheftauto.com/wiki/GetWeaponProperty
  **/
  @:overload(function(weaponName: String, weaponSkill: String, property: String): Int {})
  public static function getWeaponProperty(weaponID: Int, weaponSkill: String, property: String): Int;

  /**
    This function sets the weapon property of the specified weapons specified weapon type. See lower down the page for documentation related to weapon creation.

    @see https://wiki.multitheftauto.com/wiki/SetWeaponProperty
  **/
  @:overload(function(weaponName: String, weaponSkill: String, property: String, theValue: Float): Bool {})
  public static function setWeaponProperty(weaponID: Int, weaponSkill: String, property: String, theValue: Float): Bool;

  /**
    This function sets a weapon usable while using the Jetpack.

    @see https://wiki.multitheftauto.com/wiki/SetJetpackWeaponEnabled
  **/
  public static function setJetpackWeaponEnabled(weapon: String, enabled: Bool): Bool;

  /**
    This function checks if a weapon is usable while on a Jetpack.

    @see https://wiki.multitheftauto.com/wiki/GetJetpackWeaponEnabled
  **/
  public static function getJetpackWeaponEnabled(weapon: String): Bool;

  /**
    This function returns all the currently loaded modules of the server.

    @see https://wiki.multitheftauto.com/wiki/GetLoadedModules
  **/
  public static function getLoadedModules(): lua.Table<Int,String>;

  /**
    This function returns information about the specified module.

    @see https://wiki.multitheftauto.com/wiki/GetModuleInfo
  **/
  public static function getModuleInfo(moduleName: String): lua.Table<String,String>;
}
