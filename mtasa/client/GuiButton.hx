package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiButton")
extern class GuiButton extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateButton
  **/
  public static function create(position: Vector2, size: Vector2, text: String, relative: Bool, ?parent: GuiElement): GuiButton;
}
