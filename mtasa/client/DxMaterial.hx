package mtasa.client;

import mtasa.shared.MultiReturn;

@:native("DxMaterial")
extern class DxMaterial extends mtasa.shared.Element
{
  /**
    This gets the dimensions of the supplied material element.

    @see https://wiki.multitheftauto.com/wiki/DxGetMaterialSize
  **/
  //public function getSize(): MaterialSize; // todo, i dont know why not working MaterialSize
}

