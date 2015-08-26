<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');

session_start();

$errorMessage = '';

//echo $_POST["register"];

//echo $_SESSION["USERID"];

if(isset($_SESSION["USERID"])) {
	
	//echo 'This is inside';
	//ログインボタンが押された場合
/*	if (isset($_POST["register"])) {
		//ユーザID入力チェック
		if (empty($_POST["newuserid"])) {
			$errorMessage = "Please Input UserId";
		} else if (empty($_POST["newpassword"])) {
			$errorMessage = "Please Input Password";
		}else if (empty($_POST["fname"])) {
			$errorMessage = "Please Input First Name";
		}else if (empty($_POST["lname"])) {
			$errorMessage = "Please Input Last Name";
	    }
 */
  //ユーザIDとパスワードが入力されていたら認証する
  if (!empty($_POST["newuserid"]) && !empty($_POST["newpassword"])) {
	$newuserid = $_POST["newuserid"];
	$newpassword = $_POST["newpassword"];
	$lname = $_POST["lname"];
	$fname = $_POST["fname"];
	$gender = $_POST["gender"];

	$sql = "INSERT INTO user_master(user_id, password, last_name, first_name, gender, user_type, regist_date) VALUES (
	'$newuserid','$newpassword','$lname','$fname','$gender','1',Now())";
    
	try {
	$dbh = DbMgr::getDB();
	$stmt = $dbh->prepare($sql);
	$ret = $stmt->execute();
        if (!$ret) {
          print("Errro in Registraion");
          exit();
        }

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }
		
  }
	
}

   //Select Data and set in Table
   	$sql1 = "SELECT user_id, password, last_name, first_name, gender FROM user_master";
  
  	try {
	$dbh1 = DbMgr::getDB();
	$stmt1 = $dbh1->prepare($sql1);
	$ret1 = $stmt1->execute();
        if (!$ret1) {
          print("Error in Selection");
          exit();
        }

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }  
    
    $result = array();
	$number = 0;
	
	while ($row = $stmt1->fetch(PDO::FETCH_ASSOC)) {
    $number = $number + 1; 
	$result[] = array(
    'number'=>$number,
    'user_ID'=>$row['user_id'],
    'password'=>$row['password'],
    'lastname'=>$row['last_name'],
	'firstname'=>$row['first_name'],
    'gender'=>$row['gender']
    );
  }
  
  //ログインしていない場合、ログイン画面へ飛ばす
  //あとで修正する。文言も子供向けに。
  //echo "不正な画面遷移です。ログインし直してください。";
  //exit();


$smartyObj = new SmartySetup();
$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
$smartyObj->display('user_master.tpl');
//$smartyObj->display('test1.tpl');


?>
