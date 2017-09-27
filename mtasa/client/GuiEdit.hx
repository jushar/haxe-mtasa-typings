package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiEdit")
extern class GuiEdit extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateEdit
  **/
  public static function create(position: Vector2, size: Vector2, text: String, relative: Bool, ?parent: GuiElement): GuiEdit;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiEditGetCaretIndex
  **/
  public function getCaretIndex(): Int;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiEditSetCaretIndex
  **/
  public function setCaretIndex(index: Int): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiEditSetReadOnly
  **/
  public function setReadOnly(status: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiEditSetMasked
  **/
  public function setMasked(status: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiEditSetMaxLength
  **/
  public function setMaxLength(length: Int): Bool;
}
