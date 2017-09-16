package mtasa.server;

import mtasa.shared.Vector2;
import mtasa.shared.Vector3;
import mtasa.shared.Timer;
import mtasa.shared.MultiReturn;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var source: Element;
  public static var root: Element;
  public static var resourceRoot: Element;

  /**
    Gets random player from server
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
    This function allows you to register a custom event. Custom events function exactly like the built-in events. See event system for more information on the event system.

    @see https://wiki.multitheftauto.com/wiki/AddEvent
  **/
  public static function addEvent(eventName: String, ?allowRemoteTrigger: Bool): Bool;

  /**
    This function will add an event handler. An event handler is a function that will be called when the event it's attached to is triggered. See event system for more information on how the event system works.

    @see https://wiki.multitheftauto.com/wiki/AddEventHandler
  **/
  public static function addEventHandler(name: String, attachTo: Element, func: Dynamic): Bool;

  /**
    This function gets the attached functions from the event and attached element from current lua script.

    @see https://wiki.multitheftauto.com/wiki/GetEventHandlers
  **/
  public static function getEventHandlers(eventName: String, attachedTo: Element): lua.Table<Int,String>;

  /**
    This function is used to stop the automatic internal handling of events, for example this can be used to prevent an item being given to a player when they walk over a pickup, by canceling the onPickupUse event.

    @see https://wiki.multitheftauto.com/wiki/CancelEvent
  **/
  public static function cancelEvent(?cancel: Bool, ?reason: String): Bool;

  /**
    Gets the reason for cancelling an event.

    @see https://wiki.multitheftauto.com/wiki/GetCancelReason
  **/
  public static function getCancelReason(): String;

  /**
    This functions removes a handler function from an event, so that the function is not called anymore when the event is triggered. See event system for more information on how the event system works.

    @see https://wiki.multitheftauto.com/wiki/RemoveEventHandler
  **/
  public static function removeEventHandler(eventName: String, attachedTo: Element, functionVar: Dynamic): Bool;

  /**
    This function triggers an event previously registered on a client.

    @see https://wiki.multitheftauto.com/wiki/TriggerClientEvent
  **/
  public static function triggerClientEvent(sendTo: Dynamic, name: String, sourceElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool;

  /**
    This function will trigger a named event on a specific element in the element tree

    @see https://wiki.multitheftauto.com/wiki/TriggerEvent
  **/
  public static function triggerEvent(eventName: String, baseElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool;

  /**
    This function checks if the last completed event was cancelled. This is mainly useful for custom events created by scripts.

    @see https://wiki.multitheftauto.com/wiki/WasEventCancelled
  **/
  public static function wasEventCancelled(): Bool;

  /**
    This function is the same as triggerClientEvent except the transmission rate of the data contained in the arguments can be limited and other network traffic is not blocked while the data is being transferred.

    @see https://wiki.multitheftauto.com/wiki/TriggerLatentClientEvent
  **/
  @:overload(function(sendTo: Dynamic, name: String, name: String, bandwidth: Int, theElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool {})
  public static function triggerLatentClientEvent(sendTo: Dynamic, name: String, theElement: Element, arguments: haxe.extern.Rest<Dynamic>): Bool;

  /**
    Gets the currently queued latent events. The last one in the table is always the latest event queued. Each returned handle can be used with getLatentEventStatus or cancelLatentEvent

    @see https://wiki.multitheftauto.com/wiki/GetLatentEventHandles
  **/
  public static function getLatentEventHandles(thePlayer: Player): lua.Table<Int,Int>; // mayby wrong table, TODO

  /**
    Gets the status of one queued latent event.

    @see https://wiki.multitheftauto.com/wiki/GetLatentEventStatus
  **/
  public static function getLatentEventStatus(thePlayer: Player, handle: Int): lua.Table<String,Dynamic>; // mayby wrong table, TODO

  /**
    Stops a latent event from completing

    @see https://wiki.multitheftauto.com/wiki/CancelLatentEvent
  **/
  public static function cancelLatentEvent(thePlayer: Player, handle: Int): Bool;

  /**
    Creates an explosion of a certain type at a specified point in the world. If creator is specified, the explosion will occur only in its dimension.

    @see https://wiki.multitheftauto.com/wiki/CreateExplosion
  **/
  public static function createExplosion(position: Vector3, ?creator: Player): Bool;

  /**
    This function is used to get the name of a body part on a player.

    @see https://wiki.multitheftauto.com/wiki/GetBodyPartName
  **/
  public static function getBodyPartName(bodyPartID: Int): String;

  /**
    This function is used to get the texture and model of clothes by the clothes type and index. (Scans through the list of clothes for the specific type).

    @see https://wiki.multitheftauto.com/wiki/GetClothesByTypeIndex
  **/
  public static function getClothesByTypeIndex(clothesType: Int, clothesIndex: Int): Clothes;

  /**
    This function is used to get the clothes type and index from the texture and model. (Scans through the list of clothes for the specific type).

    @see https://wiki.multitheftauto.com/wiki/GetTypeIndexFromClothes
  **/
  public static function getTypeIndexFromClothes(clothesTexture: String, clothesModel: String): ClothesModel;

  /**
    This function is used to determine whether or not a player's cursor is showing.

    @see https://wiki.multitheftauto.com/wiki/IsCursorShowing
  **/
  public static function isCursorShowing(thePlayer: Player): Bool;  // in source code of mta, there is no method for this.

  /**
    This function is used to show or hide a player's cursor.

    @see https://wiki.multitheftauto.com/wiki/ShowCursor
  **/
  public static function showCursor(thePlayer: Player, show: Bool, ?toggleControls: Bool): Bool;

  /**
    This function will attach a scripting function (handler) to a console command, so that whenever a player or administrator uses the command the function is called. Note: You cannot use "check", "list" or "test" as a command name.


    @see https://wiki.multitheftauto.com/wiki/AddCommandHandler
  **/
  public static function addCommandHandler(commandName: String, handlerFunction: Player->String->Array<String>->Bool, ?restricted: Bool, ?caseSensitive: Bool): Bool;

  /**
    This function will call all the attached functions of an existing console command, for a specified player.

    @see https://wiki.multitheftauto.com/wiki/ExecuteCommandHandler
  **/
  public static function executeCommandHandler(commandName: String, thePlayer: Player, arguments:haxe.extern.Rest<String>): Bool;

  /**
    This function parses a JSON formatted string into variables. You can use toJSON to encode variables into a JSON string that can be read by this function.

    @see https://wiki.multitheftauto.com/wiki/FromJSON
  **/
  public static function fromJSON(json: String): Dynamic;

  /**
    This function retrieves the maximum FPS (Frames per second) that players on the server can run their game at.

    @see https://wiki.multitheftauto.com/wiki/GetFPSLimit
  **/
  public static function getFPSLimit(): Int;

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
    This function gives you various version information about MTA and the operating system.

    @see https://wiki.multitheftauto.com/wiki/GetVersion
  **/
  public static function getVersion(): lua.Table<String, String>; // mayby wrong TODO

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
    This outputs the specified text string to the chatbox. It can be specified as a message to certain player(s) or all players.

    @see https://wiki.multitheftauto.com/wiki/OutputChatBox
  **/
  public static function outputChatBox(text: String, ?visibleTo: Element, ?r: Int, ?g: Int, ?b: Int, ?colorCoded: Bool): Bool;

  /**
    This outputs the specified text string to the console window (accessed with F8 or ~ key). It can be specified as a message to certain player(s) or all players.

    @see https://wiki.multitheftauto.com/wiki/OutputConsole
  **/
  public static function outputConsole(text: String, ?visibleTo: Element): Bool;

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
    This function removes a command handler, that is one that has been added using addCommandHandler. This function can only remove command handlers that were added by the resource that it is called in.

    @see https://wiki.multitheftauto.com/wiki/RemoveCommandHandler
  **/
  public static function removeCommandHandler(commandName: String, ?handler: Dynamic): Bool;

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
    This function converts a single value (preferably a Lua table) into a JSON encoded string. You can use this to store the data and then load it again using fromJSON.

    @see https://wiki.multitheftauto.com/wiki/ToJSON
  **/
  public static function toJSON(value: Dynamic, ?compatct: Bool, ?prettyType: String): String;

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
    This function intelligently outputs debug messages into the Debug Console. It is similar to outputDebugString, but outputs useful information for any variable type, and does not require use of Lua's tostring. This includes information about element types, and table structures. It is especially useful for quick debug tasks.

    @see https://wiki.multitheftauto.com/wiki/Iprint
  **/
  public static function iprint(arguments:haxe.extern.Rest<Dynamic>): Bool;

  /**
    This function returns human-readable representations of tables and MTA datatypes as a string.

    @see https://wiki.multitheftauto.com/wiki/Inspect
  **/
  public static function inspect(argument: Dynamic): String;

  /**
    This function will extract Red, Green, Blue and Alpha values from a hex string you provide it. These strings follow the same format as used in HTML, with addition of the Alpha values.

    @see https://wiki.multitheftauto.com/wiki/GetColorFromString
  **/
  public static function getColorFromString(theColor: String): Color;

  /**
    This function returns the distance between two 2 dimensional points using the pythagorean theorem.

    @see https://wiki.multitheftauto.com/wiki/GetDistanceBetweenPoints2D
  **/
  public static function getDistanceBetweenPoints2D(vec1: Vector2, vec2: Vector2): Float;

  /**
    This function returns the distance between two 3 dimensional points using the pythagorean theorem.

    @see https://wiki.multitheftauto.com/wiki/GetDistanceBetweenPoints3D
  **/
  public static function getDistanceBetweenPoints3D(vec1: Vector3, vec2: Vector3): Float;

  /**
    Used for custom Lua based interpolation, returns the easing value (animation time to use in your custom interpolation) given a progress and an easing function. In most cases, either moveObject or interpolateBetween can do the job. getEasingValue is only provided in case you want to do your own custom interpolation based on easing.

    @see https://wiki.multitheftauto.com/wiki/GetEasingValue
  **/
  public static function getEasingValue(progress: Float, easingType: String, ?fEasingPeriod: Float, ?fEasingAmplitude: Float, ?fEasingOvershoot: Float): Float;

  /**
    Interpolates a 3D Vector between a source value and a target value using either linear interpolation or any other easing function. It can also be used to interpolate 2D vectors or scalars by only setting some of the x, y, z values and putting 0 to the others.

    @see https://wiki.multitheftauto.com/wiki/InterpolateBetween
  **/
  public static function interpolateBetween(vec1: Vector3, vec2: Vector3, progress: Float, easingType: String, ?fEasingPeriod: Float, ?fEasingAmplitude: Float, ?fEasingOvershoot: Float): Vector3;

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
    This function gets the server or client (if used client sided it returns time as set on client's computer) real time and returns it in a table. If you want to get the in-game time (shown on GTA's clock) use getTime.

    @see https://wiki.multitheftauto.com/wiki/GetRealTime
  **/
  public static function getRealTime(?seconds: Int, ?localTime: Bool): lua.Table<String,Int>;

  /**
    This function returns amount of time that your system has been running in milliseconds. By comparing two values of getTickCount, you can determine how much time has passed (in milliseconds) between two events. This could be used to determine how efficient your code is, or to time how long a player takes to complete a task.

    @see https://wiki.multitheftauto.com/wiki/GetTickCount
  **/
  public static function getTickCount(): Int;

  /**
    This function returns a table of all active timers that the resource that calls it has created. Alternatively, only the timers with a remaining time less than or equal to a certain value can be retrieved.
    @param theTime The maximum time left (in milliseconds) on the timers you wish to retrieve.
    @see https://wiki.multitheftauto.com/wiki/GetTimers
  **/
  public static function getTimers(?theTime: Int): lua.Table<Int,Timer>;

  /**
    This function splits a string using the given separating character and returns one specified substring.

    @see https://wiki.multitheftauto.com/wiki/Gettok
  **/
  @:overload(function(text: String, tokenNumber: Int, separatingCharacter: Int): String {})
  public static function gettok(text: String, tokenNumber: Int, separatingCharacter: String): String;

  /**
    This function gets the type of a userdata value, which is not always a element in the element tree.

    @see https://wiki.multitheftauto.com/wiki/GetUserdataType
  **/
  public static function getUserdataType(value: Dynamic): String;

  /**
    This function returns a hash of the specified string in the specified algorithm.

    @see https://wiki.multitheftauto.com/wiki/Hash
  **/
  public static function hash(algorithm: String, dataToHash: String): String;

  /**
    This function splits a string into substrings.

    @see https://wiki.multitheftauto.com/wiki/Split
  **/
  @:overload(function(stringToSplit: String, separatingChar: Int): String {})
  public static function split(stringToSplit: String, separatingChar: String): lua.Table<Int,String>;

  /**
    This function checks whether OOP (Object Oriented Programming) is enabled in the current resource or not.

    @see https://wiki.multitheftauto.com/wiki/IsOOPEnabled
  **/
  public static function isOOPEnabled(): Bool;

  /**
    Calculates the MD5 hash of the specified string and returns its hexadecimal representation.

    @see https://wiki.multitheftauto.com/wiki/Md5
  **/
  public static function md5(str: String): String;

  /**
    Calculates the sha256 hash of the specified string.

    @see https://wiki.multitheftauto.com/wiki/Sha256
  **/
  public static function sha256(str: String): String;

  /**
    This functions performs the Tiny Encryption Algorithm on the given string and returns the base64 representation of the encrypted string.

    @see https://wiki.multitheftauto.com/wiki/TeaEncode
  **/
  public static function teaEncode(text: String, key: String): String;

  /**
    This function decrypts given base64 representation of encrypted data using the Tiny Encryption Algorithm.

    @see https://wiki.multitheftauto.com/wiki/TeaDecode
  **/
  public static function teaDecode(data: String, key: String): String;

  /**
    This function returns the base64 representation of the encoded block of data

    @see https://wiki.multitheftauto.com/wiki/Base64Encode
  **/
  public static function base64Encode(data: String): String;

  /**
    This function returns the decrypted data from base64 representation of the encrypted block

    @see https://wiki.multitheftauto.com/wiki/Base64Encode
  **/
  public static function base64Decode(data: String): String;

  /**
    This function creates a new password hash using a specified hashing algorithm.

    @see https://wiki.multitheftauto.com/wiki/PasswordHash
  **/
  public static function passwordHash(password: String, algorithm: String, ?options: lua.Table<Dynamic,Dynamic>, ?callbackFunction: Dynamic): String;

  /**
    This function verifies whether a password matches a password hash.

    @see https://wiki.multitheftauto.com/wiki/PasswordVerify
  **/
  public static function passwordVerify(password: String, hash: String, ?callbackFunction: Dynamic): Bool;

  /**
    This function stops at the first occurrence of the pattern in the input string and returns the result of the search.
    @param flags Conjuncted value that contains flags ( 1 - ignorecase, 2 - multiline, 4 - dotall, 8 - extended ) or ( i - Ignore case, m - Multiline, d - Dotall, e - Extended )
    @see https://wiki.multitheftauto.com/wiki/PregFind
  **/
  @:overload(function(subject: String, pattern: String, ?flags: Int): Bool {})
  public static function pregFind(subject: String, pattern: String, ?flags: String): Bool;

  /**
    This function performs a regular expression search and replace and returns the replaced string.
    @param flags Conjuncted value that contains flags ( 1 - ignorecase, 2 - multiline, 4 - dotall, 8 - extended ) or ( i - Ignore case, m - Multiline, d - Dotall, e - Extended )
    @see https://wiki.multitheftauto.com/wiki/PregReplace
  **/
  @:overload(function(subject: String, pattern: String, replacement: String, ?flags: String): String {})
  public static function pregReplace(subject: String, pattern: String, replacement: String, ?flags: String): String;

  /**
    This function returns all matches.

    @see https://wiki.multitheftauto.com/wiki/PregMatch
  **/
  @:overload(function(base: String, pattern: String, ?flags: Int, ?maxResults: Int): lua.Table<Int,String> {})
  public static function pregMatch(base: String, pattern: String, ?flags: String, ?maxResults: Int): lua.Table<Int,String>;

  /**
    This function allows you to identify the weapon slot that a weapon belongs to.

    @see https://wiki.multitheftauto.com/wiki/GetSlotFromWeapon
  **/
  public static function getSlotFromWeapon(weaponID: Int): Int;

  /**
    This function will obtain the ID of a particular weapon from its name.

    @see https://wiki.multitheftauto.com/wiki/GetWeaponIDFromName
  **/
  public static function getWeaponIDFromName(name: String): Int;

  /**
    This function allows you to retrieve the name of a weapon from an ID. Note it also allows you to retrieve the name of other methods of death, such as Fall and Rammed.

    @see https://wiki.multitheftauto.com/wiki/GetWeaponNameFromID
  **/
  public static function getWeaponNameFromID(ID: Int): String;

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
}
