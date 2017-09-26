package mtasa.client;

import mtasa.shared.MultiReturn;

@:native("GuiButton")
extern class GuiButton extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateButton
  **/
  public function create(position: Position2d, size: Position2d, text: String, relative: Bool, ?parent: GuiElement): GuiButton;
}
