package mtasa.client;

@:native("DxRenderTarget")
extern class DxRenderTarget {
  /**
    This function creates a render target element, which is a special type of texture that can be drawn on with the dx functions. Successful render target creation is not guaranteed, and may fail due to hardware or memory limitations.

    @see https://wiki.multitheftauto.com/wiki/DxCreateRenderTarget
  **/
  @:native("create")
  public function new(width: Int, height: Int, ?withAlpha: Bool);

  /**
    This function changes the drawing destination for the dx functions. It can be used to select a previously created render target, or if called with no arguments, restore drawing directly to the screen.

    @see https://wiki.multitheftauto.com/wiki/DxSetRenderTarget
  **/
  public function setAsTarget(?clear:Bool): Bool;
}
