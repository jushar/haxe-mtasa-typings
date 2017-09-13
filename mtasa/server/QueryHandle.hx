package mtasa.server;

@:native("QueryHandle")
extern class QueryHandle {
    /**
        This function frees a database query handle. dbFree only needs to be used if a result has not been obtained with dbPoll
    **/
    public function free(): Bool;

    /**
        This function checks the progress of a database query.
        @param timeout How many milliseconds to wait for a result. Use 0 for an instant response (which may return nil). Use -1 to wait until a result is ready. Note: A wait here will freeze the entire server just like the executeSQL* functions
        @see https://wiki.multitheftauto.com/wiki/DbPoll
    **/
    public function poll(timeout: Int, ?multipleResults: Bool): Dynamic;
}
