<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-08-25 05:43:14
         compiled from "\wamp\www\DemoRest_data\Smarty\templates\cook_master.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2815755d5a6086b9214-23370399%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5655f85123361270c4cf730f2d5d3664ed9ea6bf' => 
    array (
      0 => '\\wamp\\www\\DemoRest_data\\Smarty\\templates\\cook_master.tpl',
      1 => 1440472643,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2815755d5a6086b9214-23370399',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55d5a6087edbe0_74626879',
  'variables' => 
  array (
    'userdata_json' => 0,
    'userdata' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55d5a6087edbe0_74626879')) {function content_55d5a6087edbe0_74626879($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
      <a href="admin.php">Master Data</a> &raquo; Cook Master Registration
   <!-- /#topicPath --></div>
   <div id="contents">
      <div id="main">
         <h2>Cook Master Data Registration</h2>
<form  method="POST" action="cook_register.php">
<br>
 <div id="master_menu">
      <ul>
         <li><a href="user_master.php" >User Master</a></li>
         <li><a href="cook_master.php" class="active">Cook Master</a></li>
         <li><a href="parttime_master.php">Part Time Master</a></li>
         <li><a href="supplier_master.php">Supplier Master</a></li>
  	      </ul>
   </div>

<br>
<br/>
<br/>
<!--<br>CookMasterID: <input type="text" required name="cookmasterid" value="">  <br/><br/> -->


<fieldset>
<br/>
<table width="100%"  cellpadding="0" cellspacing="0" style="border:0;padding: 0" class="nothing">

	<tbody >



		<tr  style= "border-collapse">
		<td >First Name:</td>
			<td><input type="text" required name="fname" value=""> </td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input type="text" required name="lname" value=""></td>
		</tr>
		<tr>
			<td>DOB:</td>
			<td><input type="date" required name="dob" value=""> </td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input type="text" required name="address" value=""></td>
		</tr>
		<tr>
			<td>Contact No:</td>
			<td><input type="text" required name="contactno" value=""> </td>
		</tr>
		<tr>
			<td>Monthly Salary:</td>
			<td><input type="text" name="monthlysal" value=""></td>
		</tr>
		<tr>
			<td>Joining Date: </td>
			<td><input type="date" name="joindate" value=""></td>
		</tr>
		<tr>
			<td>Pending Payment:</td>
			<td><input type="text" name="pendingpay" value=""> </td>
		</tr>
		<tr>
			<td>Paid Amount:  </td>
			<td><input type="text" name="paidamount" value=""> </td>
		</tr>
		<tr>
			<td>Current Status:</td>
			<td><input type="text" name="currentstatus" value=""></td>
		</tr>
		
	</tbody>
</table>
<br/><br/><br/><br/>
<input type="submit" name="register_cook" value="Register"> 
  <!--  <input type="submit" name="submit" value="Clear"> -->
</fieldset>
</form>	

<br><br>

<h4>User Master</h4>        
  <table summary="">
            <tr><th>No</th><th>CookMasterID</th><th>First Name</th><th>Last Name</th><th>DOB</th><th>Address</th><th>Contact No</th><th>Monthly Salary</th><th>Joining Date</th><th>Pending Payment</th><th>Paid Amount</th><th>Current Status</th><th>Operation</th></tr>
           <?php  $_smarty_tpl->tpl_vars['userdata'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['userdata']->_loop = false;
 $_from = json_decode($_smarty_tpl->tpl_vars['userdata_json']->value); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['userdata']->key => $_smarty_tpl->tpl_vars['userdata']->value) {
$_smarty_tpl->tpl_vars['userdata']->_loop = true;
?>
			<tr><td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->number;?>
</td>
			 <td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->cm_ID;?>
</td>  
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->f_name;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->l_name;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->d_ob;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->addr;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->c_no;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->m_salary;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->join_date;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->pen_payment;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->pd_amount;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->c_status;?>
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
