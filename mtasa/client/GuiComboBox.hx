package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiComboBox")
extern class GuiComboBox extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateComboBox
  **/
  @:native("create")
  public function new(position: Vector2, size: Vector2, caption: String, relative: Bool, ?parent: GuiElement);

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxAddItem
  **/
  public function addItem(value: String): Int;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxClear
  **/
  public function clear(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxRemoveItem
  **/
  public function removeItem(itemId: Int): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxGetSelected
  **/
  public function getSelected(): Int;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxGetItemText
  **/
  public function getItemText(itemId: Int): String;


  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxSetItemText
  **/
  public function setItemText(itemId: Int, text: String): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiComboBoxSetSelected
  **/
  public function setSelected(itemIndex: Int): Bool;
}
