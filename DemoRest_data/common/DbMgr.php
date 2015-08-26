<?php
class DbMgr {
	public static function getDB() {
		$dsn = 'mysql:dbname=shinrestaurant;host=localhost';
		$user = 'root';
		$password = '';
		
		try{
			$dbh = new PDO($dsn, $user, $password,array(PDO::ATTR_PERSISTENT => true));
			$dbh->setAttribute(PDO::MYSQL_ATTR_INIT_COMMAND, "SET SESSION sql_mode='TRADITIONAL'");
			$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$dbh->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
			
		}catch (PDOException $e){
			throw new RuntimeException('Error:'.$e->getMessage());
		}
		return $dbh;
	}
	public static function getdata() {
		$testdata = "This is demo text";
		return $testdata;
	}
}
?>
