package mtasa.client;

import mtasa.shared.Vector2;
import mtasa.shared.MultiReturn;

@:native("GuiGridList")
extern class GuiGridList extends GuiElement {
  /**

  **/
  public static function create(position: Vector2, size: Vector2, realtive: Bool, ?parent: GuiElement): GuiGridList;

  /**

  **/
  public function addColumn(title: String, width: Float): Int;

  /**

  **/
  @:overload(function(itemTexts: haxe.extern.Rest<haxe.extern.EitherType<Int, String>>): Int {});
  public function addRow(): Int;

  /**

  **/
  public function autoSizeColumn(columnIndex: Int): Bool;

  /**

  **/
  public function clear(): Bool;

  /**

  **/
  @:overload(function(rowIndex: Int, itemTexts: haxe.extern.Rest<haxe.extern.EitherType<Int, String>>): Int {});
  public function insertRowAfter(rowIndex: Int): Int;

  /**

  **/
  public function removeColumn(columnIndex: Int): Bool;

  /**

  **/
  public function removeRow(rowIndex: Int): Bool;

  /**

  **/
  public function getItemData(rowIndex: Int, columnIndex: Int): Dynamic;

  /**

  **/
  public function getItemText(rowIndex: Int, columnIndex: Int): String;

  /**

  **/
  public function getRowCount(): Int;

  /**

  **/
  public function getSelectedItem(): GridListItem;

  /**

  **/
  public function getItemColor(rowIndex: Int, columnIndex: Int): RGB;

  /**

  **/
  public function getColumnTitle(columnIndex: Int): String;

  /**

  **/
  public function getHorizontalScrollPosition(): Float;

  /**

  **/
  public function getVerticalScrollPosition(): Float;

  /**

  **/
  public function getSelectedCount(): Int;

  /**

  **/
  public function getSelectedItems(): lua.Table.Table<Int, GridListItem>; // Todo: dunno if this works

  /**

  **/
  public function getColumnCount(): Int;

  /**

  **/
  public function setItemData(rowIndex: Int, columnIndex: Int, Dynamic data): Bool;

  /**

  **/
  public function setItemText(rowIndex: Int, columnIndex: Int, text: String, section: Bool, number: Bool): Bool;

  /**

  **/
  public function setScrollBars(horizontalBar: Bool, verticalBar: Bool): Bool;

  /**

  **/
  public function setSelectedItem(rowIndex: Int, columnIndex: Int, ?reset: Bool): Bool;

  /**

  **/
  public function setSelectionMode(mode: Int): Bool;

  /**

  **/
  public function setSortingEnabled(enabled: Bool): Bool;

  /**

  **/
  public function setColumnWidth(columnIndex: Int, width: haxe.extern.EitherType<Int, Float>, realtive: Bool): Bool;

  /**

  **/
  public function setItemColor(rowIndex: Int, columnIndex: Int, red: Int, green: Int, blue: Int, alpha: Int): Bool;

  /**

  **/
  public function setColumnTitle(columnIndex: Int, title: String): Bool;

  /**

  **/
  public function setHorizontalScrollPosition(position: Float): Bool;

  /**

  **/
  public function setVerticalScrollPosition(position: Float): Bool;
}
