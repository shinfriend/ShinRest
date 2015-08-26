<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-08-25 05:42:13
         compiled from "\wamp\www\DemoRest_data\Smarty\templates\order_transaction.tpl" */ ?>
<?php /*%%SmartyHeaderCode:944555d5d2bc536da6-65247570%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'caa4072c77b9b977098e6308c618ab8282980e95' => 
    array (
      0 => '\\wamp\\www\\DemoRest_data\\Smarty\\templates\\order_transaction.tpl',
      1 => 1440472643,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '944555d5d2bc536da6-65247570',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55d5d2bc6196d2_30585778',
  'variables' => 
  array (
    'userdata_json' => 0,
    'userdata' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55d5d2bc6196d2_30585778')) {function content_55d5d2bc6196d2_30585778($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
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

<?php echo '<script'; ?>
 type="text/javascript">
function Clear()
{    
   document.getElementById("txtuserID").value= "";
   document.getElementById("txtPassword").value= "";
   document.getElementById("txtlname").value= "";
   document.getElementById("txtfname").value= "";
}
<?php echo '</script'; ?>
>

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
      <a href="admin.php">Daily Transaction</a> &raquo; Order Transaction Registration
   <!-- /#topicPath --></div>
   <div id="contents">
      <div id="main">
         <h2>Order Transaction Registration</h2>
<form method="POST" action="user_master.php">
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

Number Of Lunch:<input type="text" required name="nolunch" value=""> <br/><br/>
Number Of Dinner:<input type="text" required name="nodinner" value=""> <br/><br/>
Payment Received:<input type="text"  name="payreceived" value=""> <br/><br/>


<br/><br/>
<input type="submit" name="register_order"  value="Register">   
<br/><br/>
</fieldset>
</form>	

<br><br>

<h4>Order Transaction Master</h4>        
  <table summary="">
            <tr><th>No</th><th>Order Details Id</th><th>No Of Lunch</th><th>No Of Dinner</th><th>Payment Received</th><th>Order Date</th><th>Operation</th></tr>
			<?php  $_smarty_tpl->tpl_vars['userdata'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['userdata']->_loop = false;
 $_from = json_decode($_smarty_tpl->tpl_vars['userdata_json']->value); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['userdata']->key => $_smarty_tpl->tpl_vars['userdata']->value) {
$_smarty_tpl->tpl_vars['userdata']->_loop = true;
?>
		<!--	<tr><td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->number;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->user_ID;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->firstname;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->lastname;?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['userdata']->value->gender;?>
</td>
			<td><a>Edit</a> <a>Delete</a></td></tr>  -->
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
