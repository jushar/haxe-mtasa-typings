package mtasa.shared;

import mtasa.shared.MultiReturn;


@:native("XML")
extern class XML
{
  /**
    This function creates a new XML document, which can later be saved to a file by using xmlSaveFile. This function will overwrite the file specified if it already exists.

    @see https://wiki.multitheftauto.com/wiki/XmlCreateFile
  **/
  public static function create(filePath: String, rootNodeName: String): XML;

  /**
    This function provides an alternative way to load XML files to getResourceConfig.

    @see https://wiki.multitheftauto.com/wiki/XmlLoadFile
  **/
  public static function load(filePath: String): XML;

  /**
    This function copies all contents of a certain node in a XML document to a new document file, so the copied node becomes the new file's root node.

    @see https://wiki.multitheftauto.com/wiki/XmlCopyFile
  **/
  public function copy(newFilePath: String): XML;

  /**
    This function destroys a XML node from the XML node tree.

    @see https://wiki.multitheftauto.com/wiki/XmlDestroyNode
  **/
  public function destroy(): Bool;

  /**
    This function is used to return an attribute of a node in a configuration file.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeGetAttribute
  **/
  public function getAttribute(name: String): String;

  /**
    This function is made to be able to read tag values in XML files (eg. <something>anything</something>).

    @see https://wiki.multitheftauto.com/wiki/XmlNodeGetValue
  **/
  public function getValue(): String;

  /**
    This function is used to edit an attribute of a node in a configuration file.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeSetAttribute
  **/
  @:overload(function(name: String, value: Float): Bool {})
  public function setAttribute(name: String, value: String): Bool;

  /**
    This function is made to be able to assign values to tags in XML files (eg. <something>anything</something>).

    @see https://wiki.multitheftauto.com/wiki/XmlNodeSetValue
  **/
  public function setValue(value: String, ?setCDATA: Bool): Bool;

  /**
    This function saves a loaded XML file.

    @see https://wiki.multitheftauto.com/wiki/XmlSaveFile
  **/
  public function saveFile(): Bool;

  /**
    Unloads an XML document from memory.

    @see https://wiki.multitheftauto.com/wiki/XmlUnloadFile
  **/
  public function unload(): Bool;

  /**
    This function creates a new child node under an XML node.

    @see https://wiki.multitheftauto.com/wiki/XmlCreateChild
  **/
  public function createChild(tagName: String): XML;

  /**
    This function returns a named child node of an XML node.

    @see https://wiki.multitheftauto.com/wiki/XmlFindChild
  **/
  public function findChild(tagName: String, index: Int): XML;

  /**
    Returns all the attributes of a specific XML node.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeGetAttributes
  **/
  public function getAttributes(): lua.Table<String,String>;

  /**
    This function returns all children of a particular XML node, or a particular child node.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeGetChildren
  **/
  @:overload(function(): lua.Table<Int,XML> {})
  public function getChildren(index: Int): XML;

  /**
    Gets the tag name of the specified XML node.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeGetName
  **/
  public function getName(): String;

  /**
    Returns the parent node of an xml node.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeGetParent
  **/
  public function getParent(): XML;

  /**
    Sets the tag name of the specified XML node.

    @see https://wiki.multitheftauto.com/wiki/XmlNodeSetName
  **/
  public function setName(name: String): Bool;
}
