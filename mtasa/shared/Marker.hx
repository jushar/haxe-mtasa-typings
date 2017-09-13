package mtasa.shared;

import mtasa.server.Element;
import mtasa.shared.Vector3;
/**
The marker class represents colored, 3D shapes in the GTA world. There are several types of markers, including cylinders and checkpoints. In scripts, markers are often used to mark spots and trigger some sort of action when a player goes into them.

@see https://wiki.multitheftauto.com/wiki/Element/Marker
**/
@:native("Marker")
extern class Marker {

    /**
    This variable returns a float containing the size of the specified marker.
    **/
    public var size: Float;

    /**
    This variable returns the icon name for a marker.
    **/
    public var icon: String;

    /**
    This variable returns the vector3 of the specified marker's target, the vector3  it points to. This only works for checkpoint markers and ring markers. For checkpoints it returns the position the arrow is pointing to, for ring markers it returns the position the ring is facing.
    **/
    public var target: Vector3;

    /**
    Creates a new file in a directory of a resource. If there already exists a file with the specified name, it is overwritten with an empty file.
    **/
    public function new(vector:Vector3, ?theType:String, ?size:Float, ?r:Int, ?g:Int, ?b:Int, ?a:Int, ?visibleTo:Element);

    /**
    This method returns the color and transparency for a marker element. Not all marker types support transparency.
    **/
    public function getColor(): Dynamic;

    /**
    Returns the number of markers that currently exist in the world.
    **/
    public static function getCount(): Int;

    /**
    This method returns the icon name for a marker.
    **/
    public function getIcon(): String;

    /**
    This method returns a float containing the size of the specified marker.
    **/
    public function getSize(): Float;
    
    /**
    This method returns the vector3 of the specified marker's target, the vector3 it points to. This only works for checkpoint markers and ring markers. For checkpoints it returns the position the arrow is pointing to, for ring markers it returns the position the ring is facing.
    **/
    public function getTarget(): Vector3;

    /**
    This method sets the color of the specified marker by modifying the values for red, green and blue.
    **/
    public function setColor(rgb:Vector3): Bool;
    
    /**
    This method allows changing the icon of a checkpoint marker.
    **/
    public function setIcon(icon:String): Bool;

    /**
    This method allows changing the icon of a checkpoint marker.
    **/
    public function setSize(size:Float): Bool;

    /**
    This method sets the 'target' for a marker. Only the checkpoint and ring marker types can have a target.
    **/
    public function setTarget(vector:Vector3): Bool;

    /**
    This method changes a marker's type. The type controls how the marker is displayed in the game. It's important that you use marker types that users are used to from the single player game. For example, checkpoints are used in races, rings are used for aircraft races, arrows are used for entering buildings etc.
    **/
    public function setType(markerType:String): Bool;
}
