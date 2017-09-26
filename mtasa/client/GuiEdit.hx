package mtasa.client;

import mtasa.shared.MultiReturn;

@:native("GuiEdit")
extern class GuiEdit extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateEdit
  **/
  public function create(position: Position2d, size: Position2d, text: String, relative: Bool, ?parent: GuiElement): GuiEdit;

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
