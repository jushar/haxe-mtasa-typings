package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiScrollBar")
extern class GuiScrollBar extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateScrollBar
  **/
  public static function create(position: Vector2, size: Vector2, horizontal: Bool, relative: Bool, ?parent: GuiElement): GuiScrollBar;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollBarGetScrollPosition
  **/
  public function getScrollPosition(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollBarSetScrollPosition
  **/
  public function setScrollPosition(amount: Float): Bool;
}
