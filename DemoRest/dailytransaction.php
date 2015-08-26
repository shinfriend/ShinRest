<?php

require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www/DemoRest/common/SmartySetup.class.php');
//require_once('/wamp/www/lms_test/lms_data/common/DbMgr.php');
//require_once('/wamp/www/DemoRest/calendar/classes/tc_calendar.php');
//require_once('calendar/classes/tc_calendar.php');

session_start();

if(!isset($_SESSION["USERID"])) {
  //ログインしていない場合、ログイン画面へ飛ばす
  //あとで修正する。文言も子供向けに。
  echo "不正な画面遷移です。ログインし直してください。";
  exit();
}
$smartyObj = new SmartySetup();
$smartyObj->display('dailytransaction.tpl');
//$smartyObj->display('test1.tpl');


?>
