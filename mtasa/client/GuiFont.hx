package mtasa.client;

@:native("GuiFont")
extern class GuiFont extends Element {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateFont
  **/
  public static function create(filepath: String, ?size: Int): GuiFont;
}
