package mtasa.server;

import mtasa.shared.Vector3;

@:native("Team")
extern class Team{
    /**
    This function is for creating a new team, which can be used to group players. Players will not join the team until they are respawned.
    **/
    public static function create(teamName:String, ?colorR:Int, ?colorG:Int, ?colorB:Int): Object;

    /**
    This variable is for returning the number of players in the specified team.
    **/
    public static var playerCount: Int;

    /**
    This method is for returning the number of players in the specified team.
    **/
    public function countPlayers(): Int;

    /**
    This variable retrieves all the players of the specified team.
    **/
    public static var players: Dynamic;

    /**
    This method retrieves all the players of the specified team.
    **/
    public function getPlayers(): Dynamic;

    /**
    This variable retrieves the color of a team.
    **/
    //public static var color: Vector3;

    /**
    This method retrieves the color of a team.
    **/
    public function getColor(): Vector3;

    /**
    This variable tells you if friendly fire is turned on for the specified team.
    **/
    public static var friendlyFire: Bool;

    /**
    This method tells you if friendly fire is turned on for the specified team.
    **/
    public function getFriendlyFire(): Bool;

    /**
    This variable gets the team name of a team object.
    **/
    public static var name: String;

    /**
    This method gets the team name of a team object.
    **/
    public function getName(): String;

    /**
    This method is for setting the color of a specified team. This color is shown, for example, in the team players' nametags.
    **/
    public function setColor(colorR:Int, colorG:Int, colorB:Int): Bool;

    /**
    This method sets the friendly fire value for the specified team.
    **/
    public function setFriendlyFire(friendlyFire:Bool): Bool;

    /**
    This method is used to set a team's name.
    **/
    public function setName(name:String): Bool;

}
