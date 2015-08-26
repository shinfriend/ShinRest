<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>ログイン</title>
<meta name="robots" content="noindex,nofollow">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<link rel="stylesheet" href="css/common.css" type="text/css" media="all">
<link rel="stylesheet" href="css/login.css" type="text/css" media="all">
</head>
<body>
<div id="alllogin">
<!-- header starts-->
<div id="MainContent">
<div id="header">
<IMG SRC="./images/title_login.png" width="426px" height="40px">　
<!-- header end-->
</div>

<!-- Login Left Section Starts-->
<div id="sectionleft">
<form method="post" action="">
<div id="logininput"> <!-- Login Login Input Starts-->
<div id="inputcomponents"> <!-- Login Login Component Starts-->
<blockquote class="newline">
<p class="titletext" id="useridtitle">ユーザーID</p>
<input type="text" name="userid" id="userid" class="rounded" />
<blockquote class="newline">
<p class="titletext">パスワード</p>
<input type="text" name="password" id="password" class="rounded" />
<blockquote class="newline">
<button class="buttonstyle" type="submit" name="login" id="login">ログインする</button>
</div> <!-- Login Login Component  Ends-->

</div> <!-- Login Login Input Ends-->

 </form> <!-- Form Tag Ends --> 
 
</div>
<!-- Login Left Section Ends-->


<!-- Login Right Section Starts-->
<div id="sectionRight">

<div id="loginkeyborad">

<ul class="keyboard">
<li><a class="seven mr6 mb6" id="btnseven" onclick="inputFunction(7)" href="#"></a></li>
<li><a class="eight mr6 mb6" id="btneight" onclick="inputFunction(8)" href="#"></a></li>
<li><a class="nine mb6" id="btnnine" onclick="inputFunction(9)" href="#"></a></li>
<li><a class="four mr6 mb6"  id="btnfour" onclick="inputFunction(4)" href="#"></a></li>
<li><a class="five mr6 mb6" id="btnfive" onclick="inputFunction(5)" href="#"></a></li>
<li><a class="six mb6" id="btnsix" onclick="inputFunction(6)" href="#"></a></li>
<li><a class="one mr6 mb6" id="btnone" onclick="inputFunction(1)" href="#"></a></li>
<li><a class="two mr6 mb6" id="btntwo" onclick="inputFunction(2)"  href="#"></a></li>
<li><a class="three mb6" id="btnthree" onclick="inputFunction(3)"  href="#"></a></li>
<li><a class="zero mr6" id="btnzero" onclick="inputFunction(0)" href="#"></a></li>
<li><a class="c1" id="btnbackspace" onclick="inputFunction(-1)" href="#"></a></li>
</ul>
</div> <!--Login Keyboard --> 

</div> <!-- Login Right Section Ends-->

</div> <!-- Main Content Ends-->
 
</div> <!-- AllLogin Wrapper Ends-->

</body>
</html>