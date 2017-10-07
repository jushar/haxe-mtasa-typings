package mtasa.client;

@:native("GuiFont")
extern class GuiFont extends Element {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateFont
  **/
  @:native("create")
  public function new(filepath: String, ?size: Int);
}
