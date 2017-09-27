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
    This function outputs scripting debug messages, which can be read by enabling the debug textbox. The debug display level can then be set so that info or warning messages get filtered out.

    https://wiki.multitheftauto.com/wiki/OutputDebugString
  **/
  public static function outputDebugString(text: String, ?level: Int, ?red: Int, ?green: Int, ?blue: Int): Bool;

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

  /**
    Gets whether the traffic lights are currently locked or not.

    @see https://wiki.multitheftauto.com/wiki/AreTrafficLightsLocked
  **/
  public static function areTrafficLightsLocked(): Bool;

  /**
    This function will tell you if clouds are enabled or disabled.

    @see https://wiki.multitheftauto.com/wiki/GetCloudsEnabled
  **/
  public static function getCloudsEnabled(): Bool;

  /**
    This function gets the current game speed value.

    @see https://wiki.multitheftauto.com/wiki/GetGameSpeed
  **/
  public static function getGameSpeed(): Float;

  /**
    This function returns the current gravity level for the context in which it is called (server or client).

    @see https://wiki.multitheftauto.com/wiki/GetGravity
  **/
  public static function getGravity(): Float;

  /**
    This function will return the current heat haze effect settings.

    @see https://wiki.multitheftauto.com/wiki/GetHeatHaze
  **/
  public static function getHeatHaze(): HeatHaze;

  /**
    This function gets the maximum height at which your jetpack can fly without failing to go higher.

    @see https://wiki.multitheftauto.com/wiki/GetJetpackMaxHeight
  **/
  public static function getJetpackMaxHeight(): Float;

  /**
    This function returns the maximum velocity at which aircrafts could fly.

    @see https://wiki.multitheftauto.com/wiki/GetAircraftMaxVelocity
  **/
  public static function getAircraftMaxVelocity(): Float;

  /**
    This function will tell you what is the current render distance.

    @see https://wiki.multitheftauto.com/wiki/GetFarClipDistance
  **/
  public static function getFarClipDistance(): Float;

  /**
    Tells you how long an ingame minute takes in real-world milliseconds. The default GTA value is 1000.

    @see https://wiki.multitheftauto.com/wiki/GetMinuteDuration
  **/
  public static function getMinuteDuration(): Int;

  /**
    This function will return the current sky color.

    @see https://wiki.multitheftauto.com/wiki/GetSkyGradient
  **/
  public static function getSkyGradient(): SkyGradient;

  /**
    This function is used to get the current time in the game.

    @see https://wiki.multitheftauto.com/wiki/GetTime
  **/
  public static function getTime(): GameTime;

  /**
    Gets the current traffic light state. This state controls the traffic light colors. For instance, state 1 will cause the north and south traffic lights to be amber, and the ones left and east will turn red.

    @see https://wiki.multitheftauto.com/wiki/GetTrafficLightState
  **/
  public static function getTrafficLightState(): Int;

  /**
    This function returns the current Weather ID.

    @see https://wiki.multitheftauto.com/wiki/GetWeather
  **/
  public static function getWeather(): Weather;

  /**
    This function allows you to retrieve the zone name of a certain location.

    @see https://wiki.multitheftauto.com/wiki/GetZoneName
  **/
  public static function getZoneName(position: Vector3, ?citiesOnly: Bool): String;

  /**
    This function checks whether or not a specific garage door is open.

    @see https://wiki.multitheftauto.com/wiki/IsGarageOpen
  **/
  public static function isGarageOpen(garageID: Int): Bool;

  /**
    This function allows restoring of a changed sky gradient as a result of setSkyGradient.

    @see https://wiki.multitheftauto.com/wiki/ResetSkyGradient
  **/
  public static function resetSkyGradient(): Bool;

  /**
    This function restores the default heat haze.

    @see https://wiki.multitheftauto.com/wiki/ResetHeatHaze
  **/
  public static function resetHeatHaze(): Bool;

  /**
    This function will enable or disable clouds.

    @see https://wiki.multitheftauto.com/wiki/SetCloudsEnabled
  **/
  public static function setCloudsEnabled(enabled: Bool): Bool;

  /**
    This function sets the game speed to the given value.

    @see https://wiki.multitheftauto.com/wiki/SetGameSpeed
  **/
  public static function setGameSpeed(speed: Float): Bool;

  /**
    This function will tell you what is the current fog render distance.

    @see https://wiki.multitheftauto.com/wiki/GetFogDistance
  **/
  public static function getFogDistance(): Float;

  /**
    This function sets the server's gravity level.

    @see https://wiki.multitheftauto.com/wiki/SetGravity
  **/
  public static function setGravity(level: Float): Bool;

  /**
    This function changes the heat haze effect.

    @see https://wiki.multitheftauto.com/wiki/SetHeatHaze
  **/
  public static function setHeatHaze(intensity: Int, ?randomShift: Int, ?speedMin: Int, ?speedMax: Int, ?scanSizeX: Int, ?scanSizeY: Int, ?renderSizeX: Int, ?renderSizeY: Int, ?bShowInside: Bool): Bool;

  /**
    Sets the real-world duration of an ingame minute. The GTA default is 1000.

    @see https://wiki.multitheftauto.com/wiki/SetMinuteDuration
  **/
  public static function setMinuteDuration(milliseconds: Int): Bool;

  /**
    This function changes the sky color to a two-color gradient.

    @see https://wiki.multitheftauto.com/wiki/SetSkyGradient
  **/
  public static function setSkyGradient(?topRed: Int, ?topGreen: Int, ?topBlue: Int, ?bottomRed: Int, ?bottomGreen: Int, ?bottomBlue: Int): Bool;

  /**
    This function sets the current GTA time to the given time.

    @see https://wiki.multitheftauto.com/wiki/SetTime
  **/
  public static function setTime(hour: Int, minute: Int): Bool;

  /**
    Sets the current traffic light state.

    @see https://wiki.multitheftauto.com/wiki/SetTrafficLightState
  **/
  @:overload(function(colorNS: String, colorEW: String): Bool {})
  @:overload(function(state: String): Bool {})
  public static function setTrafficLightState(state: Int): Bool;

  /**
    Toggles whether you want the traffic lights to be locked.

    @see https://wiki.multitheftauto.com/wiki/SetTrafficLightsLocked
  **/
  public static function setTrafficLightsLocked(toggle: Bool): Bool;

  /**
    This function will change the current weather to another in a smooth manner, over the period of 2 in-game hours (unlike setWeather, which sets a new weather instantly).

    @see https://wiki.multitheftauto.com/wiki/SetWeatherBlended
  **/
  public static function setWeatherBlended(weatherID: Int): Bool;

  /**
    This function disables or enables the ambient sounds played by GTA in most interiors, like restaurants, casinos, clubs, houses, etc.

    @see https://wiki.multitheftauto.com/wiki/SetInteriorSoundsEnabled
  **/
  public static function setInteriorSoundsEnabled(enabled: Bool): Bool;

  /**
    This function sets the rain level to any weather available in GTA.

    @see https://wiki.multitheftauto.com/wiki/SetRainLevel
  **/
  public static function setRainLevel(level: Float): Bool;

  /**
    This function is used to get the current rain level.

    @see https://wiki.multitheftauto.com/wiki/GetRainLevel
  **/
  public static function getRainLevel(): Float;

  /**
    This function resets the rain level of the current weather to its default.

    @see https://wiki.multitheftauto.com/wiki/ResetRainLevel
  **/
  public static function resetRainLevel(): Bool;

  /**
    This function is used to set the size of the sun.

    @see https://wiki.multitheftauto.com/wiki/SetSunSize
  **/
  public static function setSunSize(size: Int): Bool;

  /**
    This function is used to get the size of the sun.

    @see https://wiki.multitheftauto.com/wiki/GetSunSize
  **/
  public static function getSunSize(): Float;

  /**
    This function is used to reset the size of the sun to its normal size.

    @see https://wiki.multitheftauto.com/wiki/ResetSunSize
  **/
  public static function resetSunSize(): Bool;

  /**
    This function is used to set the color of the sun.

    @see https://wiki.multitheftauto.com/wiki/SetSunColor
  **/
  public static function setSunColor(aRed: Int, aGreen: Int, aBlue: Int, bRed: Int, bGreen: Int, bBlue: Int): Bool;

  /**
    This function is used to get the color of the sun.

    @see https://wiki.multitheftauto.com/wiki/GetSunColor
  **/
  public static function getSunColor(): SunColor;

  /**
    This function is used to reset the color of the sun to its normal color.

    @see https://wiki.multitheftauto.com/wiki/ResetSunColor
  **/
  public static function resetSunColor(): Bool;

  /**
    This function changes the wind velocity.

    @see https://wiki.multitheftauto.com/wiki/SetWindVelocity
  **/
  public static function setWindVelocity(velocity: Vector3): Bool;

  /**
    This function gets the wind velocity in San Andreas.

    @see https://wiki.multitheftauto.com/wiki/GetWindVelocity
  **/
  public static function getWindVelocity(): Vector3;

  /**
    This function resets the wind velocity in San Andreas to its default state.

    @see https://wiki.multitheftauto.com/wiki/ResetWindVelocity
  **/
  public static function resetWindVelocity(): Bool;

  /**
    This function returns the moon size.

    @see https://wiki.multitheftauto.com/wiki/GetMoonSize
  **/
  public static function getMoonSize(): Int;

  /**
    This function gets the distance from the camera at which the world starts rendering.

    @see https://wiki.multitheftauto.com/wiki/GetNearClipDistance
  **/
  public static function getNearClipDistance(): Float;

  /**
    This function is used to get "occlusions enabled" state.

    @see https://wiki.multitheftauto.com/wiki/GetOcclusionsEnabled
  **/
  public static function getOcclusionsEnabled(): Bool;

  /**
    This function resets the far clip distance to its default state.

    @see https://wiki.multitheftauto.com/wiki/ResetFarClipDistance
  **/
  public static function resetFarClipDistance(): Bool;

  /**
    This function resets the fog render distance to its default state.

    @see https://wiki.multitheftauto.com/wiki/ResetFogDistance
  **/
  public static function resetFogDistance(): Bool;

  /**
    This function is used to set the distance of render. Areas beyond the specified distance will not be rendered.

    @see https://wiki.multitheftauto.com/wiki/SetFarClipDistance
  **/
  public static function setFarClipDistance(distance: Float): Bool;

  /**
    This function is used to remove a world object.

    @see https://wiki.multitheftauto.com/wiki/RemoveWorldModel
  **/
  public static function removeWorldModel(modelID: Int, radius: Float, position: Vector3, ?interior: Int): Bool;

  /**
    This function is used to reset the size of the moon to its normal size.

    @see https://wiki.multitheftauto.com/wiki/ResetMoonSize
  **/
  public static function resetMoonSize(): Bool;

  /**
    This function allows restoring of world object,which was removed with RemoveWorldModel.

    @see https://wiki.multitheftauto.com/wiki/RestoreWorldModel
  **/
  public static function restoreWorldModel(modelID: Int, radius: Float, position: Vector3, ?interior: Int): Bool;

  /**
    This function allows restoring of all world objects,which were removed with RemoveWorldModel.

    @see https://wiki.multitheftauto.com/wiki/RestoreAllWorldModels
  **/
  public static function restoreAllWorldModels(): Bool;

  /**
    This function changes the maximum flying height of aircraft.

    @see https://wiki.multitheftauto.com/wiki/SetAircraftMaxHeight
  **/
  public static function setAircraftMaxHeight(height: Float): Bool;

  /**
    This function sets the maximum velocity at which aircrafts could fly. Using this function server-side will overwrite the value that was previously set client-side.

    @see https://wiki.multitheftauto.com/wiki/SetAircraftMaxVelocity
  **/
  public static function setAircraftMaxVelocity(velocity: Float): Bool;

  /**
    This function allows you to disable some background sound effects.

    @see https://wiki.multitheftauto.com/wiki/SetAmbientSoundEnabled
  **/
  public static function setAmbientSoundEnabled(theType: String, enable: Bool): Bool;

  /**
    This function is used to enable or disable occlusions.

    @see https://wiki.multitheftauto.com/wiki/SetOcclusionsEnabled
  **/
  public static function setOcclusionsEnabled(enabled: Bool): Bool;

  /**
    This function sets the moon size.

    @see https://wiki.multitheftauto.com/wiki/SetMoonSize
  **/
  public static function setMoonSize(size: Int): Bool;

  /**
    This function changes the maximum flying height of jetpack.

    @see https://wiki.multitheftauto.com/wiki/SetJetpackMaxHeight
  **/
  public static function setJetpackMaxHeight(height: Float): Bool;

  /**
    This function can be used to detonate a players satchels.
    @param thePlayer serverside only.

    @see https://wiki.multitheftauto.com/wiki/DetonateSatchels
  **/
  public static function detonateSatchels(thePlayer: Player): Bool;

  /**
    This function checks if a value is an element or not.

    @see https://wiki.multitheftauto.com/wiki/IsElement
  **/
  public static function isElement(theElement: Element): Bool;

  /**
    This function checks if player's chat is visible.

    @see https://wiki.multitheftauto.com/wiki/IsChatVisible
  **/
  public static function isChatVisible(): Bool;

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
    @param cancel Server side only.
    @param reason Server side only.
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
    Gets the currently queued latent events. The last one in the table is always the latest event queued. Each returned handle can be used with getLatentEventStatus or cancelLatentEvent

    @see https://wiki.multitheftauto.com/wiki/GetLatentEventHandles
  **/
  public static function getLatentEventHandles(?thePlayer: Player): lua.Table<Int,Int>; // mayby wrong table, TODO

  /**
    Gets the status of one queued latent event.

    @see https://wiki.multitheftauto.com/wiki/GetLatentEventStatus
  **/
  @:overload(function(handle: Int): lua.Table<String,Dynamic> {})
  public static function getLatentEventStatus(thePlayer: Player, handle: Int): lua.Table<String,Dynamic>; // mayby wrong table, TODO

  /**
    Stops a latent event from completing

    @see https://wiki.multitheftauto.com/wiki/CancelLatentEvent
  **/
  public static function cancelLatentEvent(thePlayer: Player, handle: Int): Bool;
  
  /**
    This function returns the unsigned number formed by var value with replacement specified at bits field to field + width - 1

    @see https://wiki.multitheftauto.com/wiki/BitReplace
  **/
  public static function bitExtract (var: Int, field: Int, width: Int): Int;
}
