package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiTabPanel")
extern class GuiTabPanel extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateTabPanel
  **/
  public function create(position: Vector2, size: Vector2, relative: Bool, ?parent: GuiElement): GuiTabPanel;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetSelectedTab
  **/
  public function getSelectedTab(): GuiTab;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetSelectedTab
  **/
  public function setSelectedTab(tab: GuiTab): Bool;
}
