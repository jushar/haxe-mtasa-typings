package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiWindow")
extern class GuiWindow extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateWindow
  **/
  @:native("create")
  public function new(position: Vector2, size: Vector2, titleBarText: String, relative: Bool);

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiWindowSetMovable
  **/
  public function setMoveable(status: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiWindowSetSizable
  **/
  public function setSizable(status: Bool): Bool;
}
