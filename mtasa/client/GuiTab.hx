package mtasa.client;

@:native("GuiTab")
extern class GuiTab extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateTab
  **/
  @:native("create")
  public function new(text: String, parent: GuiTabPanel);

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiDeleteTab
  **/
  public function delete(parent: GuiTabPanel): Bool;
}
