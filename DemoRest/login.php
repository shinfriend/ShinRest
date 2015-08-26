<?php
require_once('/wamp/www/DemoRest/common/define.php');
require_once('/wamp/www//DemoRest/common/SmartySetup.class.php');
require_once('/wamp/www/DemoRest_data/common/DbMgr.php');


//セッション開始
session_start();

//エラーメッセージの初期化
$errorMessage = "";

//ログインボタンが押された場合
if (isset($_POST["login"])) {


  //ユーザID入力チェック
  if (empty($_POST["userid"])) {
    $errorMessage = "ユーザIDが未入力です。";
  } else if (empty($_POST["password"])) {
    $errorMessage = "パスワードが未入力です。";
  }
    //echo "This is test2";
	echo $_POST["userid"];
	
	
  //ユーザIDとパスワードが入力されていたら認証する
  if (!empty($_POST["userid"]) && !empty($_POST["password"])) {
    //非推奨関数
    //$userid = mysql_real_escape_string($_POST["userid"]);
    $userid = $_POST["userid"];
    $sql = 'SELECT PASSWORD, LAST_NAME, FIRST_NAME,GENDER,
            USER_TYPE FROM USER_MASTER
            WHERE USER_ID = ?';
    try {
	$dbh = DbMgr::getDB();
	$stmt = $dbh->prepare($sql);
	$ret = $stmt->execute(array($userid));
        if (!$ret) {
          print("認証中にエラーが発生しました");
          exit();
        }

        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $data =   array($result['PASSWORD'], $result['LAST_NAME'],
                        $result['FIRST_NAME'],$result['USER_TYPE']);
						
		echo $result[LAST_NAME];
		echo $result[FIRST_NAME];
		echo $result['USER_TYPE'];

    } catch (Exception $e) {
	print('Error:'.$e->getMessage());
       die();
    }
    echo "This is test2";
	
    //画面から入力されたパスワードとデータベースから取得したパスワードのハッシュを比較
    //if (password_verify($_POST["password"], $result['PASSWORD'])) {
	if ($_POST["password"] == $result['PASSWORD']) {
		
      //echo "認証成功";
      session_regenerate_id(true);
      $_SESSION["USERID"] = $_POST["userid"];
      $_SESSION["LAST_NAME"] = $result["LAST_NAME"];
      $_SESSION["FIRST_NAME"] = $result["FIRST_NAME"];
	  $_SESSION["GENDER"] = $result["GENDER"];
      $_SESSION["USER_TYPE"] = $result["USER_TYPE"];
    echo "This is test3";
      if ($result["USER_TYPE"] == "1") {
        //管理者の場合、マスタメンテ画面へ
			header("Location: ./admin.php");
      } else if ($result["USER_TYPE"] == "2") {
        //学習者の場合、テスト選択ページへ
        header("Location: ./student/student_main.php");
      } else if ($result["USER_TYPE"] == "3") {
        //教職員の場合、クラス選択ページへ
        header("Location: ./teacher/teacher_main.php");
      }
    } else {
      //echo "認証失敗";
      $errorMessage = "ユーザIDあるいはパスワードに誤りがあります。";
    }

  }

} else {
  //何もしない
}
$smartyObj = new SmartySetup();
$smartyObj->assign( 'errorMessage', $errorMessage );
$smartyObj->display( 'login.tpl' );

?>
