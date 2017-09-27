package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiStaticImage")
extern class GuiStaticImage extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateStaticImage
  **/
  public static function create(position: Vector2, size: Vector2, path: String, relative: Bool, ?parent: GuiElement): GuiStaticImage;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiStaticImageLoadImage
  **/
  public function loadImage(image: String): Bool;
}
