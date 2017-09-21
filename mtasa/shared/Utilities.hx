package mtasa.shared;

class Utilities
{
  public static function arrayToLuaTable(args:Array<Dynamic>): lua.Table<Int,Dynamic>{
    var t = lua.Table.create({});
    if(args!=null){
      for (e in args) 
      {
          lua.Table.insert(t,e);
      }
    }
    return t;
  }
}