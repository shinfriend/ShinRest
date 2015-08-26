<?php /* Smarty version Smarty-3.1.21-dev, created on 2015-08-25 05:42:03
         compiled from "\wamp\www\DemoRest_data\Smarty\templates\login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2351655d5ce842cd851-00611695%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2df95117f3baf1f161e18248603f26111974d79a' => 
    array (
      0 => '\\wamp\\www\\DemoRest_data\\Smarty\\templates\\login.tpl',
      1 => 1440472643,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2351655d5ce842cd851-00611695',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_55d5ce8434a872_41640765',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_55d5ce8434a872_41640765')) {function content_55d5ce8434a872_41640765($_smarty_tpl) {?><!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<?php echo '<script'; ?>
 type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } <?php echo '</script'; ?>
>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
</head>
 
<body>
	<div class="main">
		<form method="post" action>
    		<h1><span>Employer</span> <lable> Login </lable> </h1>
  			<div class="inset">
	  			<p>
	    		 <label for="email">EMAIL ADDRESS</label>
   	 			<input type="text" name="userid" id="userid" placeholder="" required/>
				</p>
  				<p>
				    <label for="password">PASSWORD</label>
				    <input type="password" name="password" id="password" placeholder="" required/>
  				</p>
				  <p>
				    <input type="checkbox" name="remember" id="remember">
				    <label for="remember">Remember me for 14 days</label>
				  </p>
 			 </div>
 	 
			  <p class="p-container">
			    <span><a href="#">Forgot password ?</a></span>
			    
				<input type="submit" value="login" name="login" id="login">
			  </p>
		</form>
	</div>  
			<!-----start-copyright---->
   					<div class="copy-right">
						<p>Powered by <a href="http://www.shintensystems.com">Shinten Systems</a></p> 
					</div>
				<!-----//end-copyright---->
</body>
</html><?php }} ?>
