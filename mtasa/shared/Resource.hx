package mtasa.shared;

import mtasa.shared.MultiReturn;

/**
  A resource object refers to a resource that is loaded in the server.

  @see https://wiki.multitheftauto.com/wiki/Resource
**/
@:native("Resource")
extern class Resource {
  /**
    This function is used to call a function from another resource (which must be running).
    The function which you wish to call must first be exported within the resource's meta. For example:

    @see https://wiki.multitheftauto.com/wiki/Call
  **/
  public function call(theFunction: String, arguments: haxe.extern.Rest<Dynamic>): Anything;


  /**
    This function retrieves the dynamic element root of a specified resource. The dynamic element root is the parent of elements that are created by scripts (e.g. with createObject) unless they specify a different parent.

    @see https://wiki.multitheftauto.com/wiki/GetResourceDynamicElementRoot
  **/
  public function getDynamicElementRoot(): Element;

  /**
    This function is used to retrieve a resource from its name. A resource's name is the same as its folder or file archive name on the server (without the extension).

    @see https://wiki.multitheftauto.com/wiki/GetResourceFromName
  **/
  public static function getFromName(): Resource;

  /**
    This function gets the name of the specified resource.

    @see https://wiki.multitheftauto.com/wiki/GetResourceName
  **/
  public function getName(): String;

  /**
    This function retrieves a resource's root element. The resource's root element is the element in the element tree which is the parent of all elements that belong to a particular resource (except for elements specifically created elsewhere). You can attach event handlers to this element to easily capture events that originate from your resource (and global events that originate from the root element).

    @see https://wiki.multitheftauto.com/wiki/GetResourceRootElement
  **/
  public static function getRootElement(?theResource: Resource): Element;

  /**
    This function returns the state of a given resource.

    @see https://wiki.multitheftauto.com/wiki/GetResourceState
  **/
  public function getState(): String;

  /**
    Returns a table containing the names of the functions that a resource exports.

    @see https://wiki.multitheftauto.com/wiki/GetResourceExportedFunctions
  **/
  public function getExportedFunctions(): lua.Table<Int,String>;
}
