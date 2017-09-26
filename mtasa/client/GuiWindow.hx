package mtasa.client;

import mtasa.shared.MultiReturn;

extern class GuiWindow extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateWindow
  **/
  public function create(position: Position2d, size: Position2d, titleBarText: String, relative: Bool): GuiWindow;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiWindowSetMovable
  **/
  public function setMoveable(status: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiWindowSetSizable
  **/
  public function setSizable(status: Bool): Bool;
}
