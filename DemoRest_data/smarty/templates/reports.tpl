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
      <a href="admin.php">Home</a> &raquo; カテゴリ &raquo; ページ
   <!-- /#topicPath --></div>
   <div id="contents">
      <div id="main">
         <h2>Search Criteria</h2>
<form name="admin" method="post" action="pdf.php">
<br>
From Date: <input type="date" name="fromData" value="">  To Date:<input type="date" name="toDate" value="">
<input type="submit" name="submit" value="Search">
<input type="submit" name="generate" value="Generate Report">
</form>	

<br><br>

<h4>Order Detail</h4>        
  <table summary="">
            <tr><th>Date</th><th>No.Of Lunch</th><th>No.Of Dinner</th><th>Payment Received</th></tr>
            <tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
            <tr><td><b>Total</b></td><td><b>30</b></td><td><b>60</b></td><td><b>60000</b></td></tr>
            
</table>
		 
<br> <br>

<h4>Baito Detail</h4>        
  <table summary="">
            <tr><th>Date</th><th>No.Of Lunch</th><th>No.Of Dinner</th><th>Payment Received</th></tr>
            <tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
            <tr><td><b>Total</b></td><td><b>30</b></td><td><b>60</b></td><td><b>60000</b></td></tr>
            
</table>
		 
<br> <br>		 
<h4>Cook Detail</h4>        
  <table summary="">
            <tr><th>Date</th><th>No.Of Lunch</th><th>No.Of Dinner</th><th>Payment Received</th></tr>
            <tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
            <tr><td><b>Total</b></td><td><b>30</b></td><td><b>60</b></td><td><b>60000</b></td></tr>
            
</table>

<br> <br>
<h4>Supplier Details</h4>        
  <table summary="">
            <tr><th>Date</th><th>No.Of Lunch</th><th>No.Of Dinner</th><th>Payment Received</th></tr>
            <tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
            <tr><td><b>Total</b></td><td><b>30</b></td><td><b>60</b></td><td><b>60000</b></td></tr>
            
</table>
<br> <br>
<h4>Total Expenses</h4>        
  <table summary="">
            <tr><th>Date</th><th>No.Of Lunch</th><th>No.Of Dinner</th><th>Payment Received</th></tr>
            <tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
			<tr><td>2015/8/11</td><td>10</td><td>20</td><td>20000</td></tr>
            <tr><td><b>Total</b></td><td><b>30</b></td><td><b>60</b></td><td><b>60000</b></td></tr>
            
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