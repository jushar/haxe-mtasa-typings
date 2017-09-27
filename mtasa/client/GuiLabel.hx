package mtasa.client;

import mtasa.shared.Vector2;
import mtasa.shared.MultiReturn;

@:native("GuiLabel")
extern class GuiLabel extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateLabel
  **/
  public static function create(position: Vector2, size: Vector2, text: String, relative: Bool, ?parent: GuiElement): GuiLabel;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiLabelGetFontHeight
  **/
  public function getFontHeight(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiLabelGetTextExtent
  **/
  public function getTextExtent(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiLabelGetColor
  **/
  public function getColor(): RGB;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiLabelSetColor
  **/
  public function setColor(red: Int, green: Int, blue: Int): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiLabelSetHorizontalAlign
  **/
  public function setHorizontalAlign(algin: String, ?wordwrap: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiLabelSetVerticalAlign
  **/
  public function setVerticalAlign(algin: String): Bool;
}
