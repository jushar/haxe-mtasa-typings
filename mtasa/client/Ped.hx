package mtasa.client;

@:native("Ped")
extern class Ped extends Player
{
  /**
    Sets an analog state of a specified ped's control, as if they pressed or released it.

    @see https://wiki.multitheftauto.com/wiki/SetPedAnalogControlState
  **/
  public function setAnalogControlState(control: String, state: Float): Bool;
}
