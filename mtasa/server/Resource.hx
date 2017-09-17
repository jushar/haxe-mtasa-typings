package mtasa.server;

/**
  A resource object refers to a resource that is loaded in the server.

  @see https://wiki.multitheftauto.com/wiki/Resource
**/
@:native("Resource")
extern class Resource extends mtasa.shared.Resource
{
  /**
    This function copies a specified resource with a new name.

    @see https://wiki.multitheftauto.com/wiki/CopyResource
  **/
  public function copy(newResourceName: String, ?organizationalDir: String): Resource;

  /**
    This function creates an new, empty resource. This creates a directory matching the name you specify on disk, then creates an empty meta.xml file with a <meta> element in it.

    @see https://wiki.multitheftauto.com/wiki/CreateResource
  **/
  public static function create(resourceName: String, ?organizationalDir: String): Resource;

  /**
    This function retrieves the value of any attribute in a resource info tag.

    @see https://wiki.multitheftauto.com/wiki/GetResourceInfo
  **/
  public function getInfo(attribute: String): String;

  /**
    This function retrieves the root element of a certain map in a specified resource.

    @see https://wiki.multitheftauto.com/wiki/GetResourceMapRootElement
  **/
  public function getMapRootElement(mapName: String): Element;

  /**
    This function removes a file from the resource.

    @see https://wiki.multitheftauto.com/wiki/RemoveResourceFile
  **/
  public function removeFile(fileName: String): Bool;

  /**
    This function restarts a running resource. Restarting will destroy all the elements that the resource has created (as stopping the resource does).

    @see https://wiki.multitheftauto.com/wiki/RestartResource
  **/
  public function restart(?persistent: Bool, ?configs: Bool, ?scripts: Bool, ?html: Bool, ?clientConfigs: Bool, ?clientScripts: Bool, ?clientFiles: Bool): Bool;

  /**
    This function starts a resource either persistently or as a dependency of the current resource. If you start the resource persistently, the resource will run until stopped either using stopResource or by the server admin. A resource started as a dependency will stop when your resource stops, if no other resources have it as a depdendency. This is the same effect as using an include in your meta.xml file.

    @see https://wiki.multitheftauto.com/wiki/StartResource
  **/
  public function start(?persistent: Bool, ?configs: Bool, ?scripts: Bool, ?html: Bool, ?clientConfigs: Bool, ?clientScripts: Bool, ?clientFiles: Bool): Bool;

  /**
    This function stops a running resource.

    @see https://wiki.multitheftauto.com/wiki/StopResource
  **/
  public function stop(): Bool;

  /**
    This function sets the value of any attribute in a resource info tag.

    @see https://wiki.multitheftauto.com/wiki/SetResourceInfo
  **/
  public function setInfo(attribute: String, value: String): Bool;

  /**
    This function renames a resource.

    @see https://wiki.multitheftauto.com/wiki/RenameResource
  **/
  public static function rename(resourceName: String, newResourceName: String, ?organizationalPath: String): Bool;

  /**
    This function deletes a resource from the MTA memory and moves it to the /resources-cache/trash/ directory.

    @see https://wiki.multitheftauto.com/wiki/DeleteResource
  **/
  public static function delete(resourceName: String): Bool;

  /**
    This function is used to return the root node of a configuration file. Config files must be predefined in a resource's meta file. An alternative way to load XML files is to use xmlLoadFile.

    @see https://wiki.multitheftauto.com/wiki/GetResourceConfig
  **/
  public static function getConfig(resourceName: String): Dynamic;//xmlNode;

  /**
    Used to check the last starting time and date of a resource.

    @see https://wiki.multitheftauto.com/wiki/GetResourceLastStartTime
  **/
  public function getLastStartTime(): Int;

  /**
    This function retrieves the reason why a resource failed to start.

    @see https://wiki.multitheftauto.com/wiki/GetResourceLoadFailureReason
  **/
  public function getLoadFailureReason(): String;

  /**
    This function returns the organizational file path (e.g. [admin]) of a resource.

    @see https://wiki.multitheftauto.com/wiki/GetResourceOrganizationalPath
  **/
  public function getOrganizationalPath(): String;

  /**
    This function retrieves a table of all the resources that exist on the server.

    @see https://wiki.multitheftauto.com/wiki/GetResources
  **/
  public static function getAll(): lua.Table<Int,Resource>;

  /**
    Checks whether a resource is currently archived (running from within a ZIP file).

    @see https://wiki.multitheftauto.com/wiki/IsResourceArchived
  **/
  public function isArchived(): Bool;
}
