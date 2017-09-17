package mtasa.shared;

@:native("File")
extern class File
{
  /**
    Creates a new file in a directory of a resource. If there already exists a file with the specified name, it is overwritten with an empty file.
  **/
  public function new(filePath:String);

  /**
    Opens an existing file for reading and writing.
  **/
  public static function create(filePath:String, ?readOnly:Bool): File;

  /**
    Closes a file handle obtained by fileCreate or fileOpen.
  **/
  public function close(): Bool;

  /**
    This method copies a file.
  **/
  public function copy(copyToFilePath:String, ?overwrite:Bool): Bool;

  /**
    Deletes the specified file.
  **/
  public static function delete(filePath:String): Bool;

  /**
    Deletes the specified file.
  **/
  public static function exists(filePath:String): Bool;

  /**
    Forces pending disk writes to be executed. fileWrite doesn't directly write to the hard disk but places the data in a temporary buffer; only when there is enough data in the buffer it is actually written to disk. Call this function if you need the data written right now without closing the file. This is useful for log files that might want to be read while the resource is still executing. fileFlush can be called after each log entry is written. Without this, the file may appear empty or outdated to the user.
  **/
  public function flush(): Bool;

  /**
    This method retrieves the path of the given file.
  **/
  public function getPath(): String;

  /**
    Returns the current read/write position in the given file.
  **/
  public function getPos(): Int;

  /**
    Returns the total size in bytes of the given file.
  **/
  public function getSize(): Int;

  /**
    Checks if the file position is at the end of the file.
  **/
  public function isEOF(): Bool;

  /**
    Reads the specified number of bytes from the given file starting at its current read/write position, and returns them as a string.
  **/
  public function read(count:Int): String;

  /**
    Reads the specified number of bytes from the given file starting at its current read/write position, and returns them as a string.
  **/
  public function rename(newFilePath:String): String;

  /**
    Reads the specified number of bytes from the given file starting at its current read/write position, and returns them as a string.
  **/
  public static function rename(filePath:String, newFilePath:String): String;

  /**
    Sets the current read/write position in the file.
  **/
  public function setPos(offset:Int): Int;

  /**
    Sets the current read/write position in the file.
  **/
  public function write(string:String, strings :haxe.extern.Rest<String>): Int;
}
