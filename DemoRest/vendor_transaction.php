<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';

   $vendorsql = "select cook_master_id as vender_id,CONCAT(first_name,' ',last_name) as VendorName,1 as vendertype from cook_master union all select parttime_worker_id,CONCAT(first_name,' ',last_name) as VendorName,2  from parttime_worker
   union all select supplier_id,supplier_name as VendorName,3 from supplier_master";

try {
	$dbhvend = DbMgr::getDB();
	$stmtvend = $dbhvend->prepare($vendorsql);
	$retvend = $stmtvend->execute();
        if (!$retvend) {
          print("Error in Selection");
          exit();
        }

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }  
    
    $resultvend = array();
	
	
	while ($row = $stmtvend->fetch(PDO::FETCH_ASSOC)) {
  
	$resultvend[] = array(
    
    'vender_id'=>$row['vender_id'],
    'vendertype'=>$row['vendertype'],
    'VendorName'=>$row['VendorName']
    
    );
  }




   //Select Data and set in Table
   	$sql1 = "SELECT cook_master_id, first_name, last_name, DOB, address, contact_no, monthly_salary, joining_date, pending_payment, paid_amount, current_status FROM cook_master";
  
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
    'cm_ID'=>$row['cook_master_id'],
    'f_name'=>$row['first_name'],
    'l_name'=>$row['last_name'],
	'd_ob'=>$row['DOB'],
    'addr'=>$row['address'],
	'c_no'=>$row['contact_no'],
	'm_salary'=>$row['monthly_salary'],
	'join_date'=>$row['joining_date'],
	'pen_payment'=>$row['pending_payment'],
	'pd_amount'=>$row['paid_amount'],
	'c_status'=>$row['current_status']
    );
  }
  
  

//echo json_encode($resultvend,JSON_UNESCAPED_UNICODE);

$smartyObj = new SmartySetup();
$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
$smartyObj->assign('uservend_json', json_encode($resultvend,JSON_UNESCAPED_UNICODE));
$smartyObj->display('vendor_transaction.tpl');
//$smartyObj->display('test1.tpl');


?>
