package mtasa.client;

@:native("DxScreenSource")
extern class DxScreenSource {
  /**
    This function creates a screen source, which is a special type of texture that contains the screen as rendered by GTA

    @see https://wiki.multitheftauto.com/wiki/DxCreateScreenSource
  **/
  @:native("create")
  public function new(width: Int, height: Int);

  /**
    This function creates a screen source, which is a special type of texture that contains the screen as rendered by GTA

    @see https://wiki.multitheftauto.com/wiki/DxCreateScreenSource
  **/
  public function update(?resampleNow: Bool): Bool;
}
