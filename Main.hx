import mtasa.server.*;
import mtasa.shared.*;
import mtasa.server.MTA.*;

class Main {
    public static function main() {
        outputServerLog("hello");

        var player = getRandomPlayer();
        addEventHandler("onPlayerVehicleEnter", player, function() {
            outputServerLog("Player: " + player.getName() + " entered the vehicle");
        });

        var object = Object.create(1337, Vector3.create(1, 2, 3));
        object.setFrozen(true);
        
    }
}
