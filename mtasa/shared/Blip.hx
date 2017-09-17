package mtasa.shared;

import mtasa.shared.Vector3;
import mtasa.shared.Element;
import mtasa.shared.MultiReturn;

/**
  The blip class represents small icons or blips that can be shown on a player's radar.

  @see https://wiki.multitheftauto.com/wiki/Element/Blip
**/
@:native("Blip")
extern class Blip extends Element
{
  /**
    This function creates a blip element, which is displayed as an icon on the client's radar.
    @param visibleTo only server side
    @see https://wiki.multitheftauto.com/wiki/CreateBlip
  **/
  public static function create(position: Vector3, ?icon: Int, ?size: Int, ?r: Int, ?g: Int, ?b: Int, ?a: Int, ?ordering: Int, ?visibleDistance: Float, ?visibleTo: Element): Blip;

  /**
    This function creates a blip that is attached to an element. This blip is displayed as an icon on the client's radar and will 'follow' the element that it is attached to around.
    @param visibleTo only server side
    @see https://wiki.multitheftauto.com/wiki/CreateBlipAttachedTo
  **/
  public static function createAttachedTo(elementToAttachTo: Element, ?icon: Int, ?size: Int, ?r: Int, ?g: Int, ?b: Int, ?a: Int, ?ordering: Int, ?visibleDistance: Float, ?visibleTo: Element): Blip;

  /**
    This function will tell you what color a blip is. This color is only applicable to the default blip icon. All other icons will ignore this.

    @see https://wiki.multitheftauto.com/wiki/GetBlipColor
  **/
  public function getColor(): Color;

  /**
    This function returns the icon a blip currently has.

    @see https://wiki.multitheftauto.com/wiki/GetBlipIcon
  **/
  public function getIcon(): Int;

  /**
    This function gets the Z ordering value of a blip. The Z ordering determines if a blip appears on top of or below other blips. Blips with a higher Z ordering value appear on top of blips with a lower value. The default value for all blips is 0.

    @see https://wiki.multitheftauto.com/wiki/GetBlipOrdering
  **/
  public function getOrdering(): Int;

  /**
    This function gets the size of a blip.

    @see https://wiki.multitheftauto.com/wiki/GetBlipSize
  **/
  public function getSize(): Int;

  /**
    This function will tell you what visible distance a blip has.

    @see https://wiki.multitheftauto.com/wiki/GetBlipVisibleDistance
  **/
  public function getVisibleDistance(): Float;

  /**
    This function will let you change the color of a blip. This color is only applicable to the default blip icon. All other icons will ignore this.

    @see https://wiki.multitheftauto.com/wiki/SetBlipColor
  **/
  public function setColor(red: Int, green: Int, blue: Int, alpha: Int): Bool;

  /**
    This function sets the icon for an existing blip element.

    @see https://wiki.multitheftauto.com/wiki/SetBlipIcon
  **/
  public function setIcon(icon: Int): Bool;

  /**
    This function sets the Z ordering of a blip. It allows you to make a blip appear on top of or below other blips.
    @param ordering the new Z ordering value. Blips with higher values will appear on top of blips with lower values. Possible range: -32767 to 32767. Default: 0.
    @see https://wiki.multitheftauto.com/wiki/SetBlipOrdering
  **/
  public function setOrdering(ordering: Int): Bool;

  /**
    This function sets the size of a blip's icon.

    @see https://wiki.multitheftauto.com/wiki/SetBlipSize
  **/
  public function setSize(iconSize: Int): Bool;

  /**
    This function will set the visible distance of a blip.

    @see https://wiki.multitheftauto.com/wiki/SetBlipVisibleDistance
  **/
  public function setVisibleDistance(theDistance: Float): Bool;
}
