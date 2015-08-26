<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';

if(isset($_POST['supplier_register'])) {
	
	
  //ユーザIDとパスワードが入力されていたら認証する
  if (!empty($_POST["sname"]) && !empty($_POST["smaterial"]))  {
	
	$sname = $_POST["sname"];
	$smaterial = $_POST["smaterial"];
	$ddate = date('Y-m-d', strtotime($_POST['ddate']));
	
	$paymentpending = $_POST["paymentpen"];
	$paidamount = $_POST["paidamount"];
	
	unset($_SESSION['sname']);
	unset($_SESSION['smaterial']);
	unset($_SESSION['ddate']);
	unset($_SESSION['paymentpen']);
	unset($_SESSION['paidamount']);
	
	session_destroy();
	

	$sql = "INSERT INTO supplier_master(supplier_name, supply_material, delivery_date, payment_pending, paid_amount,regist_date, upd_date) VALUES (
	'$sname','$smaterial','$ddate','$paymentpending','$paidamount',Now(),Now())";
    
	try {
	$dbh = DbMgr::getDB();
	$stmt = $dbh->prepare($sql);
	$ret = $stmt->execute();
        if (!$ret) {
          print("Error in Registration");
          exit();
        }

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }
		
  }
	
}
header("Location: ./supplier_master.php");


?>
