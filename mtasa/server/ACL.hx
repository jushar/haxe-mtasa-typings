package mtasa.server;

@:native("ACL")
extern class ACL {
    /**
        Get the name of given ACL.

        @see https://wiki.multitheftauto.com/wiki/AclGetName
    **/
    public var name: String;

    /**
        This function creates an ACL entry in the Access Control List system with the specified name.

        @see https://wiki.multitheftauto.com/wiki/AclCreate
    **/
    public static function create(aclName: String): ACL;

    /**
        This function destroys the ACL passed. The destroyed ACL will no longer be valid.

        @see https://wiki.multitheftauto.com/wiki/AclDestroy
    **/
    public function destroy(): Bool;

    /**
        Get the ACL with the given name. If need to get most of the ACL's, you should consider using aclList to get a table of them all.

        @see https://wiki.multitheftauto.com/wiki/AclGet
    **/
    public static function get(aclName: String): ACL;

    /**
        Get the name of given ACL.

        @see https://wiki.multitheftauto.com/wiki/AclGetName
    **/
    public function getName(): String;

    /**
        This function returns whether the access for the given right is set to true or false in the ACL.

        @see https://wiki.multitheftauto.com/wiki/AclGetRight
    **/
    public function getRight(rightName: String): Bool;

    /**
        This function returns whether or not the given object has access to perform the given action.

        @see https://wiki.multitheftauto.com/wiki/HasObjectPermissionTo
    **/
    @:overload(function(theObject: String, theAction: String, defaultPermission: Bool): Bool {})
    @:overload(function(theObject: Element, theAction: String, defaultPermission: Bool): Bool {})
    public static function hasObjectPermissionTo(): Bool;

    /**
        This function returns a list of all the ACLs.

        @see https://wiki.multitheftauto.com/wiki/AclList
    **/
    public static function list(): Dynamic;

    /**
        This function returns a table of all the rights that a given ACL has.

        @param allowedType The allowed right type. Possible values are general, function, resource and command
        @see https://wiki.multitheftauto.com/wiki/AclListRights
    **/
    public function listRights(allowedType: String): Dynamic;

    /**
        This function reloads the ACL's and the ACL groups from the ACL XML file. All ACL and ACL group elements are invalid after a call to this and should not be used anymore.

        @see https://wiki.multitheftauto.com/wiki/AclReload
    **/
    public static function reload(): Bool;

    /**
        This function removes the given right (string) from the given ACL.

        @see https://wiki.multitheftauto.com/wiki/AclRemoveRight
    **/
    public function removeRight(rightName: String): Bool;

    /**
        The ACL XML file is automatically saved whenever the ACL is modified, but the automatic save can be delayed by up to 10 seconds for performance reasons. Calling this function will force an immediate save.

        @see https://wiki.multitheftauto.com/wiki/AclSave
    **/
    public static function save(): Bool;

    /**
        This functions changes or adds the given right in the given ACL. The access can be true or false and specifies whether the ACL gives access to the right or not.

        @see https://wiki.multitheftauto.com/wiki/AclSetRight
    **/
    public function setRight(rightName: String, hasAccess:Bool): Bool;
}
