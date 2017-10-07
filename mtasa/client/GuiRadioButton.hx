package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiRadioButton")
extern class GuiRadioButton extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateRadioButton
  **/
  @:native("create")
  public function new(position: Vector2, size: Vector2, text: String, relative: Bool, ?parent: GuiElement);

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiRadioButtonGetSelected
  **/
  public function getSelected(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiRadioButtonSetSelected
  **/
  public function setSelected(state: Bool): Bool;
}
