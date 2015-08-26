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
<script type="text/javascript" src="js/jquery.js"></script>
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
         <li><a href="waiter.php">Waiter</a></li>
         <li><a href="cook.php">Cook</a></li>
         <li><a href="supplier.php">Supplier</a></li>
         <li><a href="order.php">Order</a></li>
		 <li><a href="expense.php">Expense</a></li>
		 <li><a href="generatereport.php">Generate Report</a></li>
      </ul>
   </div>
   <div id="topicPath">
      <a href="admin.php">Home</a> &raquo; カテゴリ &raquo; ページ
   <!-- /#topicPath --></div>
   <div id="contents">
      <div id="main">
         <h2>Search Criteria</h2>
		 <form name="datetest" method="post">
		 From Date: <input type="date" name="dateFrom" value="">
		  <input type="submit" name="submit" value="Login"/>
		 </form>
		 
		 
         <p>
            当CSSデザインテンプレートはライセンスフリーです。商用利用も無料でご利用いただけます。<br />
            ただし、jQueryはMITライセンスあるいはGPLv2ライセンスが適用されます。詳細は、<a href="http://jquery.org/license/jQuery">jQuery License</a>をご参考ください。jQueryのプラグインのライセンスはソースコードに記述しているのでそれに従ってください。（特に記載のないものに関してはライセンスフリーになります。）
         </p>
         <p>
            現在表示しているページに該当するメニューのa要素に｢class="active"｣を指定すると、メニューボタンの色が変わり、ナビゲーションの役割を果たします。
         </p>
         <h3>画像について</h3>
         <p>
            画像はCoolWebWindow作です。色の変更などの編集も可能です。ご自由にお使いください。
         </p>
         <h3>ページ上部への戻りリンクについて</h3>
         <p>
            ページ上部への戻りは、JavaScriptを用いて、なめらかにスクロールしながら移動するようにしております。
         </p>
         <h3>カスタマイズについて</h3>
         <p>
            カスタマイズはご自由になさってください。<br />
            制限はありません。
         </p>
         <p>
            その他、不具合などございましたら<br />
            <a href="http://www.coolwebwindow.com/" target="_blank">CoolWebWindow</a>にお知らせください。<br />
         </p>
         <h2>サンプルタグについて</h2>
         <p>
            以下、サンプルタグになります。ご利用の際は参考にしてみてください。
         </p>
         <h3>INFORMATION</h3>
         <dl class="information">
            <dt><span>2011-01-01</span></dt>
            <dd>
               <div>
                  テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト。<br />
               </div>
            </dd>
            <dt><span>2011-01-23</span></dt>
            <dd>
               <div>
                  テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト。<br />
               </div>
            </dd>
         </dl>
         <h3>h3タグ</h3>
         <h4>h4タグ</h4>
         <h5>h5タグ</h5>
         <h6>h6タグ</h6>
         <p>
            <em>強調（em）</em>
            <strong>より強い強調（strong）</strong>
            <ins>追加（ins）</ins>
            <del>削除（del）</del>
            <br />
            <a href="#">テキストアンカー</a>
         </p>
         <h4>リスト</h4>
         <h5>普通のリスト</h5>
         <ul>
            <li>普通のリスト1</li>
            <li>普通のリスト2</li>
            <li>普通のリスト3</li>
         </ul>
         <h5>番号付きリスト</h5>
         <ol>
            <li>番号付きリスト1</li>
            <li>番号付きリスト2</li>
            <li>番号付きリスト3<br />li要素の中はブロックレベルのタグを使用することが出来ます。例えば、&lt;p&gt;タグも記述することが出来ます。<br /></li>
         </ol>
         <h5>定義リスト</h5>
         <dl>
            <dt>定義リスト1</dt>
            <dd>定義した用語の説明</dd>
            <dt>定義リスト2</dt>
            <dd>定義した用語の説明</dd>
            <dt>定義リスト3</dt>
            <dd>定義した用語の説明<br />dd要素の中はブロックレベルのタグを使用することが出来ます。例えば、&lt;p&gt;タグも記述することが出来ます。しかし、dt要素にはインライン要素しか記述することができません。</dd>
         </dl>
         <h4>テーブル</h4>
         <table summary="">
            <tr><th>見出し1</th><th>見出し2</th><th>見出し3</th><th>見出し4</th><th>見出し5</th></tr>
            <tr><td>セル1</td><td>セル2</td><td>セル3</td><td>セル4</td><td>セル5</td></tr>
            <tr><td>セル1</td><td>セル2</td><td>セル3</td><td>セル4</td><td>セル5</td></tr>
            <tr><td>セル1</td><td>セル2</td><td>セル3</td><td>セル4</td><td>セル5</td></tr>
         </table>
      <!-- /#main --></div>
      <div id="sub">
         <div class="section">
            <h3>カテゴリ</h3>
            <ul>
               <li><a href="index.html">サブメニュー1</a></li>
               <li><a href="index.html">サブメニュー2</a></li>
               <li><a href="index.html">サブメニュー3</a></li>
            </ul>
         <!-- /.section --></div>
         <div class="section">
            <h3>カテゴリ</h3>
            <ul>
               <li><a href="index.html">サブメニュー4</a></li>
               <li><a href="index.html">サブメニュー5</a></li>
               <li><a href="index.html">サブメニュー6</a></li>
            </ul>
         <!-- /.section --></div>
      <!-- /#sub --></div>
      <div id="pageTop">
         <a href="#">ページのトップへ戻る</a>
      <!-- /#pageTop --></div>
   <!-- /#contents --></div>
   <div id="footer">
      <div class="copyright">Copyright &copy; 2011 YOUR SITE NAME All Rights Reserved.</div>
   <!-- /#footer --></div>
<!-- /#top --></div>
</body>
</html>