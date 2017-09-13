package mtasa.shared;

@:multiReturn extern class TimerDetails {
  var one : Int;
  var two : Int;
  var three : Int;
}

@:native("Timer")
extern class Timer {
    /**
        This function allows you to trigger a function after a number of milliseconds have elapsed.
        @param timeInterval minimum time is 50 ( ms )
        @param timesToExecute 0 = infinite
        @see https://wiki.multitheftauto.com/wiki/SetTimer
    **/
    public static function create(theFunction: Dynamic, timeInterval: Int, timesToExecute: Int, arguments:haxe.extern.Rest<Dynamic>): Timer;

    /**
        This function allows you to kill/halt existing timers.

        @see https://wiki.multitheftauto.com/wiki/KillTimer
    **/
    public function destroy(): Bool;

    /**
        This function is for getting the details of a running timer.

        @see https://wiki.multitheftauto.com/wiki/GetTimerDetails
    **/
    public function getDetails(): TimerDetails;

    /**
        This function checks if a variable is a timer.

        @see https://wiki.multitheftauto.com/wiki/IsTimer
    **/
    public function isValid(): Bool;

    /**
        This function allows you to reset the elapsed time in existing timers to zero. The function does not reset the 'times to execute' count on timers which have a limited amout of repetitions.

        @see https://wiki.multitheftauto.com/wiki/ResetTimer
    **/
    public function reset(): Bool;
}
