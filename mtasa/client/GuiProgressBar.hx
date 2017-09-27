package mtasa.client;

import mtasa.shared.Vector2;

@:native("GuiProgressBar")
extern class GuiProgressBar extends GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiCreateProgressBar
  **/
  public static function create(position: Vector2, size: Vector2, relative: Bool, ?paren: GuiElement): GuiProgressBar;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiProgressBarGetProgress
  **/
  public function getProgress(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiProgressBarSetProgress
  **/
  public function setProgress(progress: Float): Bool;
}
