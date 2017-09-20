package mtasa.shared;

class InitExports
{
  public function new(){
    untyped __lua__("function c(cls,fname,...) if(_hx_exports[cls] and _hx_exports[cls][fname])then return _hx_exports[cls][fname](...) else return false end end");
  }
}