<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();
//$errorMessage = '';


   //Select Data and set in Table
   	$sql1 = "SELECT supplier_id, supplier_name, supply_material, delivery_date, payment_pending, paid_amount FROM supplier_master";
  
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
    's_ID'=>$row['supplier_id'],
    's_name'=>$row['supplier_name'],
    's_material'=>$row['supply_material'],
	'd_date'=>$row['delivery_date'],
    
	'payment_pen'=>$row['payment_pending'],
	'pd_amount'=>$row['paid_amount'],
	
    );
  }
  
  
$smartyObj = new SmartySetup();
$smartyObj->assign('userdata_json', json_encode($result,JSON_UNESCAPED_UNICODE));
$smartyObj->display('supplier_master.tpl');
//$smartyObj->display('test1.tpl');


?>
