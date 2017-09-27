package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiCheckBox")
extern class GuiCheckBox extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateCheckBox
  **/
  public static function create(position: Vector2, size: Vector2, text: String, selected: Bool, relative: Bool, ?parent: GuiElement): GuiCheckBox;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCheckBoxGetSelected
  **/
  public function getSelected(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCheckBoxSetSelected
  **/
  public function setSelected(state: Bool): Bool;
}
