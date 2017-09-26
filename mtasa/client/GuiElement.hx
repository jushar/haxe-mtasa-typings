package mtasa.client;

import mtasa.shared.MultiReturn;

@:native("GuiElement")
extern class GuiElement {
  /**

    @see https://wiki.multitheftauto.com/wiki/GuiBringToFront
  **/
  public function bringToFront(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiMoveToBack
  **/
  public function moveToBack(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/IsChatBoxInputActive
  **/
  public static function isChatBoxInputActive(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/IsConsoleActive
  **/
  public static function isConsoleActive(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/IsDebugViewActive
  **/
  public static function isDebugViewActive(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/SetDebugViewActive
  **/
  public static function setDebugViewActive(enabled: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/IsMainMenuActive
  **/
  public static function isMainMenuActive(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/IsMTAWindowActive
  **/
  public static function isMTAWindowActive(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/IsTransferBoxActive
  **/
  public static function isTransferBoxActive(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetInputEnabled
  **/
  public static function isInputEnabled(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetInputMode
  **/
  public static function getInputMode(): String;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetCursorType
  **/
  public static function getCursorType(): String;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetScreenSize
  **/
  public static function getScreenSize(): ScreenSize;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetProperties
  **/
  public function getProperties(): lua.Table<String, String>;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetAlpha
  **/
  public function getAlpha(): Float;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetFont
  **/
  public function getFont(): FontNameContainer;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetEnabled
  **/
  public function getEnabled(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetVisible
  **/
  public function getVisible(): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetText
  **/
  public function getText(): String;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetPosition
  **/
  public function getPosition(relative: Bool): Position2d; // no vector return

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetSize
  **/
  public function getSize(relative: Bool): Position2d;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiGetProperty
  **/
  public function getProperty(property: String): String;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetInputEnabled
  **/
  public function setInputEnabled(enabled: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetAlpha
  **/
  public function setAlpha(alpha: Float): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetEnabled
  **/
  public function setEnabled(enabled: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetFont
  **/
  public function setFont(font: Any): Bool; // Todo: Font ist missing

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetVisible
  **/
  public function setVisible(state: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetText
  **/
  public function setText(text: String): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetInputMode
  **/
  public static function setInputMode(mode: String): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetProperty
  **/
  public function setProperty(property: String, value: String): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetPosition
  **/
  public function setPosition(position: Position2d, relative: Bool): Bool;

  /**

    @see https://wiki.multitheftauto.com/wiki/GuiSetSize
  **/
  public function setSize(position: Position2d, relative: Bool): Bool;
}
