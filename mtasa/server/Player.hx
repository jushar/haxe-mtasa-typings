package mtasa.server;

@:native("Player")
extern class Player extends Element {
    public function getName(): String;
}