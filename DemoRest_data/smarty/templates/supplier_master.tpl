<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/common.css" type="text/css" />
<link rel="stylesheet" href="calendar/calendar.css" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<title>Shin Restaurant</title>
<!--[if lt IE 7]>
<script src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"></script>
<![endif]-->
</head>
<body>
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
      <a href="admin.php">Master Data</a> &raquo; Supplier Master Registration
   <!-- /#topicPath --></div>
   <div id="contents">
      <div id="main">
         <h2>Supplier Master Data Registration</h2>
<form  method="POST" action="supplier_register.php">
<br>
 <div id="master_menu">
      <ul>
         <li><a href="user_master.php" >User Master</a></li>
         <li><a href="cook_master.php">Cook Master</a></li>
         <li><a href="parttime_master.php">Part Time Master</a></li>
         <li><a href="supplier_master.php" class="active">Supplier Master</a></li>
  	      </ul>
   </div>

<br>
<br/>
<br>
<!--Supplier ID: <input type="text" required name="supid" value="">  <br/><br/> -->
<fieldset>
<table cellpadding="1" cellspacing="1" style="width:500px;">
	<tbody>
		
		<tr>
			<td>Supplier Name:</td>
			<td><input type="text" required name="sname" value="">  </td>
		</tr>
		<tr>
			<td>Supply Material:</td>
			<td><input type="text" required name="smaterial" value=""> <br/></td>
		</tr>
		<tr>
			<td>Delivery Date:</td>
			<td><input type="date" name="ddate" value=""> </td>
		</tr>
		<tr>
			<td>Payment Pending:</td>
			<td><input type="text" required name="paymentpen" value=""> </td>
		</tr>
		<tr>
			<td>Paid Amount:</td>
			<td><input type="text" required name="paidamount" value="">  </td>
		</tr>
<br/>
</tbody>
</table>
<br/><br/>
<input type="submit" name="supplier_register" value="Register">  
 <!--  <input type="submit" name="submit" value="Clear">-->
 </fieldset>
</form>	

<br><br>

<h4>User Master</h4>        
  <table summary="">
             <tr><th>No</th><th>Supplier ID</th><th>Supplier Name</th><th>Supply Material</th><th>Delivery Date</th><th>Payment Pending</th><th>Paid Amount</th><th>Operation</th></tr>
           {foreach from=$userdata_json|json_decode item=userdata}
			<tr><td>{$userdata->number}</td>
			<td>{$userdata->s_ID}</td>
			<td>{$userdata->s_name}</td>
			<td>{$userdata->s_material}</td>
			<td>{$userdata->d_date}</td>
			
			<td>{$userdata->payment_pen}</td>
			<td>{$userdata->pd_amount}</td>
			
			<td><a>Edit</a> <a>Delete</a></td></tr>
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