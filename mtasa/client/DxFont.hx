package mtasa.client;

@:native("DxFont")
extern class DxFont {
  /**
    This function creates a DX font element that can be used in dxDrawText. Successful font creation is not guaranteed, and may fail due to hardware or memory limitations.
    @param quality default,draft,proof,nonantialiased,antialiased,cleartype,cleartype_natural,
    @see https://wiki.multitheftauto.com/wiki/DxCreateFont
  **/
  @:native("create")
  public function new(filepath: String, ?size: Int, ?bold: Bool, ?quality: String);

  /**
    This function retrieves the theoretical height of a certain piece of text, if it were to be drawn using dxDrawText.

    @see https://wiki.multitheftauto.com/wiki/DxGetFontHeight
  **/
  public static function getHeight(scale: Float, font: Dynamic): Int;

  /**
    This function retrieves the theoretical width of a certain piece of text, if it were to be drawn using dxDrawText.

    @see https://wiki.multitheftauto.com/wiki/DxGetTextWidth
  **/
  public static function getTextWidth(text: String, ?scale: Float, ?font: Dynamic, ?bColorCoded: Bool): Float;
}
