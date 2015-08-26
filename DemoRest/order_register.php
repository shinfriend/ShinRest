<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';

if(isset($_POST['register_cook'])) {
	
	
  //ユーザIDとパスワードが入力されていたら認証する
  if (!empty($_POST["fname"]) && !empty($_POST["lname"]))  {
	  
	//$ncookmasterid = $_POST["cookmasterid"];
	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$dob = date('Y-m-d', strtotime($_POST['dob']));
	$address = $_POST["address"];
	$contactno = $_POST["contactno"];
	$monthlysalary = $_POST["monthlysal"];
	$joiningdate = date('Y-m-d', strtotime($_POST['joindate']));
	$pendingpayment = $_POST["pendingpay"];
	$paidamount = $_POST["paidamount"];
	$currentstatus = $_POST["currentstatus"];
	
	unset($_SESSION['fname']);
	unset($_SESSION['lname']);
	unset($_SESSION['dob']);
	unset($_SESSION['address']);
	unset($_SESSION['contactno']);
	unset($_SESSION['monthlysal']);
	unset($_SESSION['joindate']);
	unset($_SESSION['pendingpay']);
	unset($_SESSION['paidamount']);
	unset($_SESSION['currentstatus']);
	session_destroy();
	$sql = "INSERT INTO cook_master(first_name, last_name, DOB, address, contact_no, monthly_salary, joining_date, pending_payment, paid_amount, current_status, regist_date, upd_date) VALUES (
	'$fname','$lname','$dob','$address','$contactno','$monthlysalary','$joiningdate','$pendingpayment','$paidamount','$currentstatus',Now(),Now())";
    
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
header("Location: ./cook_master.php");
  
//$smartyObj = new SmartySetup();
//$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
//$smartyObj->display('cook_master.tpl');
//$smartyObj->display('test1.tpl');


?>