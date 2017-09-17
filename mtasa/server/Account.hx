package mtasa.server;

/**
  The account class represents a player's server account. You can get the account object associated to any client using getPlayerAccount.

  @see https://wiki.multitheftauto.com/wiki/Account
**/
@:native("Account")
extern class Account
{
  /**
    This method adds an account to the list of registered accounts of the current server.
  **/
  public static function add(name: String, pass: String, ?allowCaseVariations: Bool): Bool;

  /**
    This method copies all of the data from one account to another.
  **/
  public function copyDataTo(account: Account): Bool;

  /**
    This method retrieves a string that has been stored using setData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account.
  **/
  public function getData(key: String): String;

  /**
    This method retrieves the name of an account.
  **/
  public function getName(): String;

  /**
    This method returns the player element that is currently using a specified account, i.e. is logged into it. Only one player can use an account at a time.
  **/
  public function getPlayer(): Player;

  /**
    This method returns a table containing all accounts that were logged onto from specified serial. If the serial is empty string, it will return all accounts that were never logged onto.
  **/
  public static function getAllBySerial(): Dynamic;

  /**
    This method returns the last serial that logged onto the specified account.
  **/
  public function getSerial(): String;

  /**
    This method returns a table over all the accounts that exist in the server internal.db
  **/
  public static function getAll(): Dynamic;

  /**
    This method returns a table containing all the user data for the account provided
  **/
  public function getAllData(): Dynamic;

  /**
    This method checks to see if an account is a guest account. A guest account is an account automatically created for a user when they join the server and deleted when they quit or login to another account. Data stored in a guest account is not stored after the player has left the server. As a consequence, this method will check if a player is logged in or not.
  **/
  public function isGuest(): Bool;

  /**
    This method is used to delete existing player accounts.
  **/
  public function remove(): Bool;

  /**
    This method sets a string to be stored in an account. This can then be retrieved using getAccountData. Data stored as account data is persistent across user's sessions and maps, unless they are logged into a guest account. Even if logged into a guest account, account data can be useful as a way to store a reference to your own account system, though it's persistence is equivalent to that of using setElementData on the player's element.
  **/
  public function setData(key: String, value: String): Bool;

  /**
    This function sets the password of the specified account.
    @param passwordType can be "plaintext", "sha256", or "md5"
  **/
  public function setPassword(password: String, ?passwordType: String): Bool;
}
