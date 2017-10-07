package mtasa.client;

@:native("DxTexture")
extern class DxTexture extends DxMaterial{
  /**
    This function creates a texture element that can be used in the dxDraw functions.

    @see https://wiki.multitheftauto.com/wiki/DxCreateTexture
  **/
  @:native("create")
  @:overload(function(pixels: String, ?textureFormat: String, ?mipmaps: Bool, ?textureEdge: String): DxTexture {})
  @:overload(function(width: Int, height: Int, ?textureFormat: String, ?textureEdge: String, ?textureType: String, ?depth: Int): DxTexture {})
  public function new(filepath: String, ?textureFormat: String, ?mipmaps: Bool, ?textureEdge: String);

  /**
    This functions allows you to change the edge handling after creating the texture.
    @param textureEdge wrap, mirror, clamp, border, mirror-once
    @see https://wiki.multitheftauto.com/wiki/DxSetTextureEdge
  **/
  public function setEdge(textureEdge: String, ?border: Int): Bool;

  /**
    This function sets the pixels of a texture element. It can be used with a standard texture, render target or screen source. Only 'plain' format pixels please.

    @see https://wiki.multitheftauto.com/wiki/DxSetTexturePixels
  **/
  public function setPixels(?surfaceIndex: Int): Bool;

  /**
    This function fetches the pixels from a texture element. It can be used with a standard texture, render target or screen source.

    @see https://wiki.multitheftauto.com/wiki/DxGetTexturePixels
  **/
  public function getPixels(?surfaceIndex: Int, ?x: Int, ?y: Int, ?width: Int, ?height: Int): String;
}

