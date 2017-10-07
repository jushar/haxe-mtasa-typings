package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiStaticImage")
extern class GuiStaticImage extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateStaticImage
  **/
  @:native("create")
  public function new(position: Vector2, size: Vector2, path: String, relative: Bool, ?parent: GuiElement);

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiStaticImageLoadImage
  **/
  public function loadImage(image: String): Bool;
}
