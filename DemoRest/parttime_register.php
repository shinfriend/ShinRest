<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';

if(isset($_POST['register_parttime'])) {
	
	
  //ユーザIDとパスワードが入力されていたら認証する
  if (!empty($_POST["fname"]) && !empty($_POST["lname"]))  {
	//$nparttimeworkerid = $_POST["ptwid"];
	$fname = $_POST["fname"];
	$lname = $_POST["lname"];
	$dob = date('Y-m-d', strtotime($_POST['dob']));
	$address = $_POST["address"];
	$contactno = $_POST["contactno"];
	$hourlyrate = $_POST["hrate"];
	$joiningdate = date('Y-m-d', strtotime($_POST['joindate']));
	$paidamount = $_POST["paidamount"];
	$pendingpayment = $_POST["pendingpay"];
	$status = $_POST["status"];
	
	unset($_SESSION['fname']);
	unset($_SESSION['lname']);
	unset($_SESSION['dob']);
	unset($_SESSION['address']);
	unset($_SESSION['contactno']);
	unset($_SESSION['hrate']);
	unset($_SESSION['joindate']);
	unset($_SESSION['paidamount']);
	unset($_SESSION['pendingpay']);
	unset($_SESSION['status']);
	session_destroy();

	$sql = "INSERT INTO parttime_worker(first_name, last_name, DOB, address, contact_no, hourly_rate, joining_date, paid_amount, pending_payment, status, regist_date, upd_date) VALUES (
	'$fname','$lname','$dob','$address','$contactno','$hourlyrate','$joiningdate','$paidamount','$pendingpayment','$status',Now(),Now())";
    
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
header("Location: ./parttime_master.php");
   
//$smartyObj = new SmartySetup();
//$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
//$smartyObj->display('parttime_master.tpl');
//$smartyObj->display('test1.tpl');


?>
