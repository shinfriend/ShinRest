<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-08-25 05:47:12
         compiled from "\wamp\www\DemoRest_data\Smarty\templates\supplier_master.tpl" */ ?>
<?php /*%%SmartyHeaderCode:584255d5a5ae78f382-10261279%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a328e2325c6ca8e258184b36a5a0fae17bfd8a61' => 
    array (
      0 => '\\wamp\\www\\DemoRest_data\\Smarty\\templates\\supplier_master.tpl',
      1 => 1440472643,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '584255d5a5ae78f382-10261279',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55d5a5ae8816b0_03000544',
  'variables' => 
  array (
    'userdata_json' => 0,
    'userdata' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55d5a5ae8816b0_03000544')) {function content_55d5a5ae8816b0_03000544($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="js/jquery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="js/common.js"><?php echo '</script'; ?>
>
<title>Shin Restaurant</title>
<!--[if lt IE 7]>
<?php echo '<script'; ?>
 src="http://ie7-js.googlecode.com/svn/version/2.0(beta3)/IE7.js" type="text/javascript"><?php echo '</script'; ?>
>
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
           <?php  $_smarty_tpl->tpl_vars['userdata'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['userdata']->_loop = false;
 $_from = json_decode($_smarty_tpl->tpl_vars['userdata_json']->value); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['userdata']->key => $_smarty_tpl->tpl_vars['userdata']->value) {
$_smarty_tpl->tpl_vars['userdata']->_loop = true;
?>
			<tr><td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->number;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->s_ID;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->s_name;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->s_material;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->d_date;?>
</td>
			
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->payment_pen;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->pd_amount;?>
</td>
			
			<td><a>Edit</a> <a>Delete</a></td></tr>
			<?php } ?>
            
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
</html><?php }} ?>
