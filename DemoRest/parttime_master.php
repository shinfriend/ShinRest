<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';



   //Select Data and set in Table
   	$sql1 = "SELECT parttime_worker_id, first_name, last_name, DOB, address, contact_no, hourly_rate, joining_date, paid_amount, pending_payment, status FROM parttime_worker";
  
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
    'ptw_ID'=>$row['parttime_worker_id'],
    'f_name'=>$row['first_name'],
    'l_name'=>$row['last_name'],
	'd_ob'=>$row['DOB'],
    'addr'=>$row['address'],
	'c_no'=>$row['contact_no'],
	'h_rate'=>$row['hourly_rate'],
	'join_date'=>$row['joining_date'],
	'pd_amount'=>$row['paid_amount'],
	'pen_payment'=>$row['pending_payment'],
	
	'nstatus'=>$row['status']
    );
  }
  
$smartyObj = new SmartySetup();
$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
$smartyObj->display('parttime_master.tpl');
//$smartyObj->display('test1.tpl');


?>
