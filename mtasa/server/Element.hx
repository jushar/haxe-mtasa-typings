package mtasa.server;

import mtasa.shared.Vector3;

@:native("Element")
extern class Element
{
    public function setPosition(position: Vector3): Bool;
    public function getPosition(): Vector3;

    public function setFrozen(frozen: Bool): Bool;
    public function isFrozen(): Bool;
}