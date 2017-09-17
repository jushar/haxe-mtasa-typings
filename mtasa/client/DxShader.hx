package mtasa.client;

@:native("DxShader")
extern class DxShader {
  /**
    This function creates a shader element that can be used in the dxDraw functions. Successful shader creation is not guaranteed unless the Effect File contains a fallback technique which will work on every PC in the universe.
    @param elementTypes one of this: world,vehicle,object,other
    @see https://wiki.multitheftauto.com/wiki/DxCreateShader
  **/
  public static function create(filepath: String, ?priority: Float, ?maxDistance: Float, ?layered: Bool, elementTypes: String): DxScreenSource;

  /**
    This sets a named parameter for a shader element
    @param value to set, which can be a texture, a bool, a number or a list of numbers
    @see https://wiki.multitheftauto.com/wiki/DxSetShaderValue
  **/
  public function setValue(parameterName: String, values: haxe.extern.Rest<Dynamic>): Bool;

  /**
    This function sets the amount of geometric sub-division to use when drawing a shader element with dxDrawImage.
    Using tessellation allows a shader to manipulate the shape of the rendered image at each sub-division boundary.
    @see https://wiki.multitheftauto.com/wiki/DxSetShaderTessellation
  **/
  public function setTessellation(tessellationX: Int, tessellationY: Int): Bool;

  /**
    This function applies a 3D transformation to a shader element when it is drawn with dxDrawImage.

    @see https://wiki.multitheftauto.com/wiki/DxSetShaderTransform
  **/
  public function setTransform(rotationX: Float, rotationY: Float, rotationZ: Float, ?rotationCenterOffsetX: Float, ?rotationCenterOffsetY: Float, ?rotationCenterOffsetZ: Float, ?bRotationCenterOffsetOriginIsScreen: Bool, ?perspectiveCenterOffsetX: Float, ?perspectiveCenterOffsetY: Float, ?bPerspectiveCenterOffsetOriginIsScreen: Bool): Bool;

  /**
    This function retrieves the theoretical height of a certain piece of text, if it were to be drawn using dxDrawText.

    @see https://wiki.multitheftauto.com/wiki/DxGetFontHeight
  **/
  public static function getHeight(?scale: Float, ?font: Dynamic): Int;
}
