package mtasa.client;

/**
  A resource object refers to a resource that is loaded in the server.

  @see https://wiki.multitheftauto.com/wiki/Resource
**/
@:native("Resource")
extern class Resource extends mtasa.shared.Resource
{
  /**
    This function retrieves a resource's GUI element.

    @see https://wiki.multitheftauto.com/wiki/GetResourceGUIElement
  **/
  public static function getGuiElement(?theResource: Resource): Element;

}
