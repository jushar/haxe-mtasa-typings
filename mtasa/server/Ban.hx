package mtasa.server;

import mtasa.server.Player;

@:native("Ban")
extern class Ban {

  /**
    This function will add a ban for the specified IP/username/serial to the server
  **/
  public static function create(?IP: String, ?username: String, ?serial: String, ?responsibleElement: Player, ?reason: String, ?seconds: Int): Ban;

  /**
    This function will return the responsible admin (nickname of the admin) of the specified ban
  **/
  public function getAdmin(): String;

  /**
    This function will return the IP of the specified ban
  **/
  public function getIP(): String;

  /**
    This function will return a table containing all the bans
  **/
  public static function getList(): lua.Table<UInt, Ban>;

  /**
    This function will return the nickname (nickname that the player had when he was banned) of the specified ban
  **/
  public function getNick(): String;

  /**
    This function will return the ban reason of the specified ban
  **/
  public function getReason(): String;

  /**
    This function will return the serial of the specified ban
  **/
  public function getSerial(): String;

  /**
    This function will return the time the specified ban was created, in seconds
  **/
  public function getTime(): Int;

  /**
    This function will return the unbanning time of the specified ban in seconds
  **/
  public function getUnbanTime(): Int;

  /**
    This function will remove a specific ban
  **/
  public function remove(?responsiblePlayer: Player): Bool;
}
