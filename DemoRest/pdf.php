<?php
//require('/wamp/www/DemoRest/fpdf/fpdf.php');
require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');

//session_start();
//$errorMessage = '';



   //Select Data and set in Table
   	$sql1 = "SELECT * FROM cook_master";
  
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
	//$number = 0;
	
	while ($row = $stmt1->fetch(PDO::FETCH_ASSOC)) {
  //  $number = $number + 1; 
	$result[] = array(
    //'number'=>$number,
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
	'c_status'=>$row['current_status'],
	'r_date'=>$row['regist_date'],
	'u_date'=>$row['upd_date']
	
    );
  }
  
  

//require_once("dbcontroller.php");
//$db_handle = new DBController();
//$result = $db_handle->runQuery("SELECT * FROM cook_master");



$sql2 = "SELECT `COLUMN_NAME` 
FROM `INFORMATION_SCHEMA`.`COLUMNS` 
WHERE `TABLE_SCHEMA`='shinrestaurant' 
   AND `TABLE_NAME`='cook_master'";

 		
  
  try {
	$dbh = DbMgr::getDB();
	$stmt = $dbh->prepare($sql2);
	
	$ret = $stmt->execute();
        if (!$ret) {
          print("Error in Selection");
          exit();
        }

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }  
   
   
   
   
  
   
   $header = array();
        while($heading = $stmt->fetch(PDO::FETCH_ASSOC)){
            $header[] = array(
    //'number'=>$number,
    'C_name'=>$heading['COLUMN_NAME']  
	
    );
		}

  
  
require('/wamp/www/DemoRest/fpdf/fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
//$pdf->SetFillColor(255,0,0);
//$pdf->SetTextColor(255);
$pdf->SetFillColor(224,235,255);
$pdf->SetFont('Arial','B',4);		
foreach($header as $heading) {
	foreach($heading as $column_heading)
		$pdf->Cell(15,12,$column_heading,1);
}

foreach($result as $row) {
	$pdf->SetFont('Arial','',4);	
	$pdf->Ln();
	foreach($row as $column)
		$pdf->Cell(15,12,$column,1);
}
$pdf->Output();














?>