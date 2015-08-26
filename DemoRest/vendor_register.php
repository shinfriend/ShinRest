<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';

//This is test for Guthub 



if(isset($_POST['register_ven'])) {
	
	
  //ユーザIDとパスワードが入力されていたら認証する
  if (!empty($_POST["ventype"]) && !empty($_POST["vendor_id_select"]))  {
	  
	//$ncookmasterid = $_POST["cookmasterid"];
	$vendtype = $_POST["ventype"];
	$vendor_id_selected = $_POST["vendor_id_select"];
	$pending_payment1 = $_POST["paymentpen1"];
	$paid_amount1 = $_POST["paydone1"];
	$pay_recieved1 = $_POST["payreceived1"];
	
	unset($_SESSION['ventype']);
	unset($_SESSION['vendor_id_select']);
	unset($_SESSION['paymentpen1']);
	unset($_SESSION['paydone1']);
	unset($_SESSION['payreceived1']);
	session_destroy();

	echo $vendtype;
	echo $vendor_id_selected;
	
	$sql = "INSERT INTO daily_transaction(transaction_date, vendor_type, vendor_id,pay_pending,pay_done,pay_received) VALUES (
	Now(),'$vendtype','$vendor_id_selected','$pending_payment1','$paid_amount1','$pay_recieved1')";
    
	try {
	$dbh = DbMgr::getDB();
	$stmt = $dbh->prepare($sql);
	$ret = $stmt->execute();
        if (!$ret) {
          print("Error in Registraion");
          exit();
        }

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }
		
  }
	
}
header("Location: ./vendor_transaction.php");
  
//$smartyObj = new SmartySetup();
//$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
//$smartyObj->display('vendor_transaction.tpl');
//$smartyObj->display('test1.tpl');


?>