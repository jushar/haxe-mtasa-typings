import mtasa.server.*;
import mtasa.shared.*;

class Main {
    public static function main() {
        MTA.outputServerLog("hello");

        var player = MTA.getRandomPlayer();
        MTA.addEventHandler("onPlayerVehicleEnter", player, function() {
            MTA.outputServerLog("Player: " + player.getName() + " entered the vehicle");
        });

        var object = Object.create(1337, Vector3.create(1, 2, 3));
        object.setFrozen(true);
    }
}
