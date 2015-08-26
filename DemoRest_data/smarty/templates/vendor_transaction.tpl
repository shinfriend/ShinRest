<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<!-- <script type="text/javascript" src="js/common.js"></script> -->
<!-- <Script src = "Http://Code.Jquery.Com/jquery-1.11.1.Min.Js" > </ script> -->



<title>Shin Restaurant</title>
<!--[if lt IE 7]>
<script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script>
<![endif]-->
{literal}

<script type="text/javascript">

function get_vendor_id(vendor_type) {
    
	//Declaring Data Array 
	var vendData = [];
	var vendDataParsed = [];
	
	//Parse JSON Data
	vendDataParsed = JSON.parse('{/literal} {$uservend_json}{literal}');

	//Filter JSON Object 
	vendData =$(vendDataParsed).filter(function (i,n){return  n.vendertype == vendor_type});	
	
	var vendorcombo = document.venderform.vendor_id_select;
	 for(i =0;i <vendData.length; i++) {
	  vendorcombo[i] = new Option(vendData[i].VendorName,vendData[i].vender_id);
	 }
	
	
}
	
</script>

{/literal}

</head>
<body onLoad="get_vendor_id(1);">
<div id="top">
   <div id="header">
      <h1><a href="admin.php">Shin Restaurant</a></h1>
      <div id="pr">
         <p>Shinten Restaurant Administration Screen</p>
      <!-- /#pr --></div>
   <!-- /#header --></div>
   <div id="menu">
      <ul>
         <li><a href="admin.php" class="active">Home</a></li>
         <li><a href="dailytransaction.php">Daily Transaction</a></li>
         <li><a href="master.php">Master Data</a></li>
         <li><a href="monthly.php">Monthly Profit</a></li>
         <li><a href="reports.php">Reports</a></li>
	      </ul>
   </div>
   <div id="topicPath">
      <a href="admin.php">Daily Transaction</a> &raquo; Vendor Transaction Registration
   <!-- /#topicPath --></div>
   <div id="contents">
      <div id="main">
         <h2>Vendor Transaction Registration</h2>
		 
	 
<form name="venderform" id="venderform" method="POST"  action="vendor_register.php">
<br>
 <div id="master_menu">
      <ul>
          <li><a href="vendor_transaction.php" class="active">Vendor Transaction</a></li>
         <li><a href="order_transaction.php">Order Transaction</a></li>
  	      </ul>
   </div>

<br>
<br/>
<br>

<br><br>
<fieldset>
<br/>
Vendor Type: <select name="ventype" onchange="get_vendor_id(this.value);">
<option value="1">Cook Master</option>
<option value="2">Part Time Master</option>
<option value="3">Supplier Master</option>
</select>
<br><br>
Vendor Id :<select id="vendor_id_select" name="vendor_id_select">
</select>
<br><br>
Payment Pending:<input type="text" required id="paymentpen1" name="paymentpen1" value=""> <br/><br/>
Payment Done:<input type="text" required id="paydone1" name="paydone1" value=""> <br/><br/>
Payment Received:<input type="text" required id="payreceived1" name="payreceived1" value=""> <br/><br/>

<br/><br/>
<input type="submit" name="register_ven" value="Register">    
<br/><br/>
</fieldset>
</form>	

<br><br>

<h4>Vendor Transaction Master</h4>        
  <table summary="">
            <tr><th>No</th><th>Transaction Id</th><th>Transaction Date</th><th>Vendor Type</th><th>Vendor Id</th><th>Payment Pending</th><th>Payment Done</th><th>Payment Received</th><th>Operation</th></tr>
			{foreach from=$userdata_json|json_decode item=userdata}
		<!--	<tr><td>{$userdata->number}</td>
			<td>{$userdata->user_ID}</td>
			<td>{$userdata->firstname}</td>
			<td>{$userdata->lastname}</td>
			<td>{$userdata->gender}</td>  
			<td><a>Edit</a> <a>Delete</a></td></tr> -->
			{/foreach}
 </table>
<br> <br>	
 </body>
	 
      <!-- /#main --></div>
      <div id="sub">
         <div class="section">
            <h3>Last Login</h3>
            <ul>
			  Hi Roshan<br>
			  Login  2015.08.13 2:00
			  Logout 2015.08.13 6:00
            </ul>
         <!-- /.section --></div>
         <div class="section">
            <h3>Recent Report</h3>
			<ul>
			  Check you Last Report
			</ul>
         <!-- /.section --></div>
      <!-- /#sub --></div>
      <div id="pageTop">
         <a href="#">ページのトップへ戻る</a>
      <!-- /#pageTop --></div>
   <!-- /#contents --></div>
   <div id="footer">
      <div class="copyright">Copyright &copy; 2015 Shinten Systems All Rights Reserved.</div>
   <!-- /#footer --></div>
<!-- /#top --></div>
</body>
</html>