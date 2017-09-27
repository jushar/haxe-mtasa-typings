package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiMemo")
extern class GuiMemo extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateMemo
  **/
  public static function create(position: Vector2, size: Vector2, text: String, relative: Bool, ?parent: GuiElement): GuiMemo;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiMemoGetCaretIndex
  **/
  public function getCaretIndex(): Int;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiMemoSetCaretIndex
  **/
  public function setCaretIndex(index: Int): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiMemoSetReadOnly
  **/
  public function setReadOnly(status: Bool): Bool;
}
