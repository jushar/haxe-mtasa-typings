package mtasa.shared;

import mtasa.shared.Resource;
import mtasa.shared.MultiReturn;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var exports: lua.Table<Int,Resource>;
  public static var resource: Resource;
  public static var resourceRoot: Element;
  public static var root: Element;
  public static var source: Element;
  public static var eventName: String;

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
    This function converts a single value (preferably a Lua table) into a JSON encoded string. You can use this to store the data and then load it again using fromJSON.

    @see https://wiki.multitheftauto.com/wiki/ToJSON
  **/
  public static function toJSON(value: Dynamic, ?compatct: Bool, ?prettyType: String): String;

  /**
    This function removes a command handler, that is one that has been added using addCommandHandler. This function can only remove command handlers that were added by the resource that it is called in.

    @see https://wiki.multitheftauto.com/wiki/RemoveCommandHandler
  **/
  public static function removeCommandHandler(commandName: String, ?handler: Dynamic): Bool;

  /**
    This outputs the specified text string to the chatbox. It can be specified as a message to certain player(s) or all players.

    @see https://wiki.multitheftauto.com/wiki/OutputChatBox
  **/
  @:overload(function(text: String, ?r: Int, ?g: Int, ?b: Int, ?colorCoded: Bool): Bool {})
  public static function outputChatBox(text: String, ?visibleTo: Element, ?r: Int, ?g: Int, ?b: Int, ?colorCoded: Bool): Bool;

  /**
    This outputs the specified text string to the console window (accessed with F8 or ~ key). It can be specified as a message to certain player(s) or all players.

    @see https://wiki.multitheftauto.com/wiki/OutputConsole
  **/
  public static function outputConsole(text: String, ?visibleTo: Element): Bool;

  /**
    This function gives you various version information about MTA and the operating system.

    @see https://wiki.multitheftauto.com/wiki/GetVersion
  **/
  public static function getVersion(): lua.Table<String, String>; // mayby wrong TODO

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
  public static function isCursorShowing(?thePlayer: Player): Bool;  // in source code of mta, there is no method for this.

  /**
    This function is used to show or hide a player's cursor.

    @see https://wiki.multitheftauto.com/wiki/ShowCursor
  **/
  @:overload(function(show: Bool, ?toggleControls: Bool): Bool {})
  public static function showCursor(thePlayer: Player, show: Bool, ?toggleControls: Bool): Bool;

  /**
    This function will attach a scripting function (handler) to a console command, so that whenever a player or administrator uses the command the function is called. Note: You cannot use "check", "list" or "test" as a command name.

    @see https://wiki.multitheftauto.com/wiki/AddCommandHandler
  **/
  @:overload(function(commandName: String, handlerFunction: String->Array<String>->Bool, ?restricted: Bool, ?caseSensitive: Bool): Bool {})
  public static function addCommandHandler(commandName: String, handlerFunction: Player->String->Array<String>->Bool, ?restricted: Bool, ?caseSensitive: Bool): Bool;

  /**
    This function will call all the attached functions of an existing console command, for a specified player.

    @see https://wiki.multitheftauto.com/wiki/ExecuteCommandHandler
  **/
  @:overload(function(commandName: String, arguments:haxe.extern.Rest<String>): Bool {})
  public static function executeCommandHandler(commandName: String, thePlayer: Player, arguments:haxe.extern.Rest<String>): Bool;

  /**
    This function is used to get the development mode of the client. For more information see setDevelopmentMode

    @see https://wiki.multitheftauto.com/wiki/GetDevelopmentMode
  **/
  public static function getDevelopmentMode(): Bool;

  /**
    This function is used to set the development mode. Setting development mode allows access to special commands which can assist with script debugging.

    @see https://wiki.multitheftauto.com/wiki/SetDevelopmentMode
  **/
  public static function setDevelopmentMode(enable: Bool, ?enableWeb: Bool): Bool;
}
