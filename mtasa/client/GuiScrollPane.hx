package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiScrollPane")
extern class GuiScrollPane extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateScrollPane
  **/
  @:native("create")
  public function new(position: Vector2, size: Vector2, relative: Bool, ?parent: GuiElement);

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollPaneGetHorizontalScrollPosition
  **/
  public function getHorizontalScrollPosition(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollPaneGetVerticalScrollPosition
  **/
  public function getVerticalScrollPosition(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollPaneSetHorizontalScrollPosition
  **/
  public function setHorizontalScrollPosition(position: Float): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollPaneSetScrollBars
  **/
  public function setScrollBars(horizontal: Bool, vertical: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiScrollPaneSetVerticalScrollPosition
  **/
  public function setVerticalScrollPosition(position: Float): Bool;
}
