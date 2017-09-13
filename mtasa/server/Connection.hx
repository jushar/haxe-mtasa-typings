package mtasa.server;

@:native("Connection")
extern class Connection extends Element{
    /**
        This function opens a connection to a database and returns an element that can be used with dbQuery. To disconnect use destroyElement.
        @param databaseType sqlite ( Path to file ) or mysql ( dbname=NAME;host=IP )
        @see https://wiki.multitheftauto.com/wiki/DbConnect
    **/
    public static function create(databaseType: String, host: String, ?username: String, ?password: String, ?options: String): Connection;

    /**
        This function escapes arguments in the same way as dbQuery, except dbPrepareString returns the query string instead of processing the query. This allows you to safely build complex query strings from component parts and help prevent (one class of) SQL injection.
        @param query Use question mark '?' to format query. (If you do not want a string quoted, use ??)
        @see https://wiki.multitheftauto.com/wiki/DbPrepareString
    **/
    public function prepareString(query: String, parametrs: haxe.extern.Rest<Dynamic>): String;

    /**
        This function executes a database query using the supplied connection. No result is returned.
        @param query Use question mark '?' to format query. (If you do not want a string quoted, use ??)
        @see https://wiki.multitheftauto.com/wiki/DbExec
    **/
    public function exec(query: String, parametrs: haxe.extern.Rest<Dynamic>): Bool;

    /**
        This function starts a database query using the supplied connection. Use the returned query handle with dbPoll to get the result, or dbFree if you don't want the result.
        @param query Use question mark '?' to format query. (If you do not want a string quoted, use ??)
        @see https://wiki.multitheftauto.com/wiki/DbQuery
    **/
    @:overload(function(query: String, parametrs: haxe.extern.Rest<Dynamic>): QueryHandle {})
    @:overload(function(callbackFunction: Dynamic, query: String, parametrs: haxe.extern.Rest<Dynamic>): QueryHandle {})
    @:overload(function(callbackFunction: Dynamic, callbackArguments: Dynamic, query: String, parametrs: haxe.extern.Rest<Dynamic>): QueryHandle {})
    public function query(): QueryHandle;
}
