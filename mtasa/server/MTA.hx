package mtasa.server;

import mtasa.shared.Vector3;

@:native("_G")
extern class MTA
{
  // Global vars
  public static var source: Element;
  public static var root: Element;
  public static var resourceRoot: Element;

  /**
    Creates console with given name
  **/
  public static function addCommandHandler(commandName: String, handlerFunction: Player->String->Array<String>->Bool, ?restricted: Bool = false, ?caseSensitive: Bool = true): Bool;

  /**
    Outputs given message to server log
  **/
  public static function outputServerLog(message: String): Bool;

  /**
    Outputs given message to debug
  **/
  public static function outputDebugString(message: Dynamic): Bool;

  /**
    Outputs given message to ingame console
  **/
  public static function outputConsole(message: String): Bool;

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
  public static function addEventHandler(name: String, attachTo: Element, function: Dynamic): Bool;

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
}
