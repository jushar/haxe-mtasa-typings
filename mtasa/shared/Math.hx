package mtasa.shared;

@:native("math")
extern class Math {
    public static var pi: Float;
    public static var huge: Float;
    public static function abs(x: Float): Float;
    public static function acos(x: Float): Float;
    public static function asin(x: Float): Float;
    public static function atan(x: Float): Float;
    public static function atan2(x: Float, y: Float): Float;
    public static function ceil(x: Float): Float;
    public static function cos(x: Float): Float;
    public static function cosh(x: Float): Float;
    public static function deg(x: Float): Float;
    public static function exp(x: Float): Float;
    public static function floor(x: Float): Float;
    public static function fmod(x: Float, y: Float): Float;
    public static function frexp(x: Float): Float;
    public static function ldexp(m: Float, e: Float): Float;
    public static function log10(x: Float): Float;
    public static function max(a:Float,b:Float,rest:haxe.extern.Rest<Float>): Float;
    public static function min(a:Float,b:Float,rest:haxe.extern.Rest<Float>): Float;
    public static function modf(x: Float): Float;
    public static function pow(x: Float, y: Float): Float;
    public static function rad(x: Float): Float;
    public static function random(m: Float, n: Float): Int;
    public static function randomseed(x: Dynamic): Bool;
    public static function sin(x: Float): Float;
    public static function sinh(x: Float): Float;
    public static function sqrt(x: Float): Float;
    public static function tan(x: Float): Float;
    public static function tanh(x: Float): Float;

    //  public static function clamp(number: Float, min: Float, max: Float): Float; // todo
    //  public static function round(number: Float, decimals: Float, method: String): Float; // todo
}
