package mtasa.client;

@:native("GuiTab")
extern class GuiTab extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateTab
  **/
  public function create(text: String, parent: GuiTabPanel): GuiTab;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiDeleteTab
  **/
  public function delete(parent: GuiTabPanel): Bool;
}
