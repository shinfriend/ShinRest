<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>マスタメンテナンス</title>
<meta name="robots" content="noindex,nofollow">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<link rel="stylesheet" href="css/common.css" type="text/css" media="all">
<link rel="stylesheet" href="css/master-maintenance.css" type="text/css" media="all">

<!-- JavaScript to Disable Keyboard Ends -->

</head>
<body>


<div id="allmaster">
<form method="post" action="">
<div id="pageContent">

<div id="pagetitle">
<br><br>
<span class="titlefont">ファイルをアップロード</span><br>

</div> <!-- pagetitle Ends here --> 


<div id="uploadselection">

<span class="uploadtitlefont">1.アップロード先を選択する</span><br>

<br>
<select name="masterselection" style="width:400px; height:40px;border:1px solid #000000;" >
  <option value="">選択してください</option>
  <option value="">学校マスタ</option>
  <option value="">ユーザーマスタ</option>
  <option value="">テストマスタ</option>
  <option value="">レコメンドマスタ</option>
  <option value="">小単元マスタ</option>
  <option value="">問題画像ファイル</option>
</select>

</div> <!-- uploadselection Ends here --> 

<div id="uploadfile">
<span class="uploadtitlefont">2.アップロードするファイルを選択する</span><br>
<br>
<form action="" method="post" enctype="multipart/form-data">
  <input type="file" name="upfile" style="width:400px; height:40px;border:1px solid #000000;"/><br />
  <br />
  <br><br><br>
  <button class="button4" type="submit">選択したファイルをアップロード</button>
</form>

</div>  <!-- uploadfile Ends here --> 

</div> <!-- PageContent Ends here --> 


</div> <!-- allmaster main Wrapper ends here --> 

</form>
</body>
</html>