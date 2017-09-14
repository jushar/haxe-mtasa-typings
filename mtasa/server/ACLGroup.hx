package mtasa.server;
/**
  ACL Groups are groups that holds objects such as accounts, and resources which allows them to do some things depending on the permission the group has/holds.

  @see https://wiki.multitheftauto.com/wiki/Aclgroup
**/
@:native("ACLGroup")
extern class ACLGroup {
  /**
    This function creates a group in the ACL. An ACL group can contain objects like players and resources. They specify who has access to the ACL's in this group.

    @see https://wiki.multitheftauto.com/wiki/AclCreateGroup
  **/
  public static function create(groupName: String): ACLGroup;

  /**
    This function adds the given ACL to the given ACL group. This makes the resources and players in the given ACL group have access to what's specified in the given ACL. The rights for something in the different ACL's in a group are OR-ed together, which means if one ACL gives access to something, this ACL group will have access to that.

    @see https://wiki.multitheftauto.com/wiki/AclGroupAddACL
  **/
   @:overload(function(theACL: ACL): Bool {})
  public function addACL(theACL: String): Bool;

  /**
    This function adds an object to the given ACL group.
    @param theObjectName  user.<accountname> For players. resource.<resourcename> For resources.
    @see https://wiki.multitheftauto.com/wiki/AclGroupAddObject
  **/
  public function addObject(theObjectName: String): Bool;

  /**
    This function destroys the given ACL group. The destroyed ACL group will no longer be valid.

    @see https://wiki.multitheftauto.com/wiki/AclDestroyGroup
  **/
  public function destroy(): Bool;

  /**
    This function is used to determine if an object is in a group.

    @see https://wiki.multitheftauto.com/wiki/IsObjectInACLGroup
  **/
  public static function doesContainObject(theObject: String, theGroup:aclgroup): Bool;

  /**
    This function is used to get the ACL group with the given name. If you need most of the groups you should consider using aclGroupList instead to get a table containing them all.

    @see https://wiki.multitheftauto.com/wiki/AclGetGroup
  **/
  public static function get(groupName: String): ACLGroup;

  /**
    This function is used to get the name of the given ACL group.

    @see https://wiki.multitheftauto.com/wiki/AclGroupGetName
  **/
  public function getName(): String;

  /**
    This function returns a table of all the ACL groups.

    @see https://wiki.multitheftauto.com/wiki/AclGroupList
  **/
  public static function list(): lua.TableTools;

  /**
    This function returns a table over all the ACL's that exist in a given ACL group.

    @see https://wiki.multitheftauto.com/wiki/AclGroupListACL
  **/
  public function listACL(): lua.TableTools;

  /**
    This function returns a table over all the objects that exist in a given ACL group. These are objects like players and resources.

    @see https://wiki.multitheftauto.com/wiki/AclGroupListObjects
  **/
  public function listObjects(): lua.TableTools;

  /**
    This function removes the given ACL from the given ACL group. (Please NOTE: The resource that's using this function needs the right to remove an acl.)

    @see https://wiki.multitheftauto.com/wiki/AclGroupRemoveACL
  **/
  public function removeACL(theACL: ACL): Bool;

  /**
    This function removes the given object (string) from the given ACL group. The object can be a resource or a player. See aclGroupAddObject for more details.

    @see https://wiki.multitheftauto.com/wiki/AclGroupRemoveObject
  **/
  public function removeObject(theObject: String): Bool;
}
