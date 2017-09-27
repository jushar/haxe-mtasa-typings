package mtasa.client;

@:native("GuiButton")
extern class GuiButton extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateButton
  **/
  public static function create(x: Int, y: Int, width: Int, height: Int, text: String, relative: Bool, ?parent: GuiElement): GuiButton;
}
