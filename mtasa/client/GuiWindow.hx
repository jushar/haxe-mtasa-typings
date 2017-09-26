package mtasa.client;

@:native("GuiWindow")
extern class GuiWindow extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateWindow
  **/
  public function create(x: Int, y: Int, width: Int, height: Int, titleBarText: String, relative: Bool): GuiWindow;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiWindowSetMovable
  **/
  public function setMoveable(status: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiWindowSetSizable
  **/
  public function setSizable(status: Bool): Bool;
}
