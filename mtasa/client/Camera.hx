package mtasa.client;

import mtasa.shared.MultiReturn;
import mtasa.client.Element;

@:native("Camera")
extern class Camera {
  /**
    This function will fade a player's camera to a color or back to normal over a specified time period. This will also affect the sound volume for the player (50% faded = 50% volume, full fade = no sound). For clientside scripts you can perform 2 fade ins or fade outs in a row, but for serverside scripts you must use one then the other.
    @param fadeIn Should the camera be faded in our out? Pass true to fade the camera in, false to fade it out to a color.
    @see https://wiki.multitheftauto.com/wiki/FadeCamera
  **/
  public static function fade(fadeIn: Bool, ?timeToFade: Float, ?red: Int, ?green: Int, ?blue: Int): Bool;

  /**
    Returns the interior of the local camera (independent of the interior of the local player).

    @see https://wiki.multitheftauto.com/wiki/GetCameraInterior
  **/
  public static function getInterior(): Int;

  /**
    This function gets the position of the camera and the position of the point it is facing.

    @see https://wiki.multitheftauto.com/wiki/GetCameraMatrix
  **/
  public static function getMatrix(): CameraMatrix;

  /**
    This function returns an element that corresponds to the current target of the specified player's camera (i.e. what it is following).

    @see https://wiki.multitheftauto.com/wiki/GetCameraTarget
  **/
  public static function getTarget(): Element;

  /**
    Sets the interior of the local camera. Only the interior of the camera is changed, the local player stays in the interior he was in.

    @see https://wiki.multitheftauto.com/wiki/SetCameraInterior
  **/
  public static function setInterior(interior: Int): Bool;

  /**
    This function sets the camera's position and direction. The first three arguments are the point at which the camera lies, the last three are the point the camera faces (or the point it "looks at").

    @see https://wiki.multitheftauto.com/wiki/SetCameraMatrix
  **/
  public static function setMatrix(position: Vector3, ?lookAt: Vector3, ?roll: Float, ?fov: Float): Bool;

  /**
    This function allows you to set a player's camera to follow other elements instead.

    @see https://wiki.multitheftauto.com/wiki/SetCameraTarget
  **/
  @:overload(function(target: Vector3): Bool {})
  public static function setTarget(target: Player): Bool;

  /**
    This function checks if the camera will "collide" with any objects or vehicles in its way.

    @see https://wiki.multitheftauto.com/wiki/GetCameraClip
  **/
  public static function getClip(): CameraClip;

  /**
    This function returns what goggle effect is currently affecting the camera.

    @see https://wiki.multitheftauto.com/wiki/GetCameraGoggleEffect
  **/
  public static function getGoggleEffect(): String;

  /**
    This function allows you to get the camera's view mode.

    @see https://wiki.multitheftauto.com/wiki/GetCameraViewMode
  **/
  public static function getViewMode(): Int;

  /**
    This function returns the field of view of the dynamic camera as set by setCameraFieldOfView.

    @see https://wiki.multitheftauto.com/wiki/GetCameraFieldOfView
  **/
  public static function getFieldOfView(cameraMode: String): Float;

  /**
    This function allows you to set the camera's current goggle effect. This means you can activate nightvision or infrared effects by script.
      normal: No camera goggle effect
      nightvision: Nightvision camera
      thermalvision: Infrared camera
    @see https://wiki.multitheftauto.com/wiki/SetCameraGoggleEffect
  **/
  public static function setGoggleEffect(goggleEffect: String): Bool
}
