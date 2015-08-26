<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>ドリル</title>
<meta name="robots" content="noindex,nofollow">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<link rel="stylesheet" href="css/common.css" type="text/css" media="all">
<link rel="stylesheet" href="css/graph.css" type="text/css" media="all">

<script type="text/javascript">
function ChangeTab(tabname) {
// 全部消す
document.getElementById('tab1').style.display = 'none';
document.getElementById('tab2').style.display = 'none';
document.getElementById('tab3').style.display = 'none';
document.getElementById('tab4').style.display = 'none';
// 指定箇所のみ表示
if(tabname) {
document.getElementById(tabname).style.display = 'block';
}

}

// Toggle Tab Style on tab selection.   
function toggleClass(el){
	var kids = document.getElementById('tab_menu').children;
	for(var i = 0; i < kids.length; i++){
        kids[i].className = "tabnotselected NotSelectedTabimage";
    }
	el.className = "current_tab CurrentTabimage";
}

</script>

<script type="text/javascript">
<!--
    var json = '{{$study_json}}';
    var data = JSON.parse(json);
// -->
</script>

</head>

<body>
<div id="all">

<!-- header starts-->
<div id="allHeaderGreen">
<div class="header_green">
<div class="headerTitleContentsT clearfix">
<form action="" method="post">
<div class="headerTitleContentsLeft">
  <h1 class="headerTitle">○○○小学校　3年1組<br>学習履歴</h1>
</div>
<div class="headerTitleContentsRight clearfix">

<div style="display:table;">
<ul id="tab_menu" class="headerMenu clearfix">
<li class="current_tab CurrentTabimage" onclick="toggleClass(this)"><a onclick="ChangeTab('tab1'); return false;" href="#tab1">学習時間</a></li>
<li class="tabnotselected NotSelectedTabimage" onclick="toggleClass(this)"><a onclick="ChangeTab('tab2'); return false;" href="#tab2">ドリル番号</a></li>
<li class="tabnotselected NotSelectedTabimage" onclick="toggleClass(this)"><a  onclick="ChangeTab('tab3'); return false;" href="#tab3">問題数</a></li>
<li class="tabnotselected NotSelectedTabimage" onclick="toggleClass(this)"><a  onclick="ChangeTab('tab4'); return false;" href="#tab4">正答数</a></li>
</ul>
</div>

<div class="logoutButton">
<a href="#"><div class="headerTopButton">
  <p>ログアウト<img src="images/logout.png" width="22" height="22"></p></div></a>
</div>
  
  
</div><!--headerTitleContentsRight  ends-->
</div><!--headerTitleContentsT  ends-->
</div><!-- .header_green ends-->
</div><!-- #allHeaderGreen ends-->

<!-- header ends-->

<div id="allContentsGraph">

<div id="Contents">

<!-- 学習時間　Start  -->
<div class="mainContents" id="tab1">

<!-- 学習時間　Legend Start --> 
<div class="info_above_table">
<div class="info_text">
<p>上段</p>
<p class="gedantextcolor">(下段)</p>
</div>
<div class="info_text1">
<p>...実績値</p>
<p>...目標値</p>
</div>

<div class="info_arrow_image">
<div class="up_arrow_image"></div>
</div>

<div class="info_text1">
<p class="textintent">前回比</p>
<p>...上昇</p>
</div>

<div class="info_arrow_image">
<div class="down_arrow_image"></div>
</div>

<div class="info_text1">
<p class="textintent">前回比</p>
<p>...下降</p>
</div>

<div class="info_arrow_image">
<div class="same_arrow_image"></div>
</div>

<div class="info_text1">
<p class="textintent">前回比</p>
<p>...同一</p>
</div>

<div class="colorblock1">
</div>
<div class="info_image_text">
<p>...目標達成</p>
</div>

<div class="colorblock2">
</div>
<div class="info_image_text">
<p>...目標未達成</p>
</div>

</div>
<!-- 学習時間　Legend Ends --> 
<table border="1" width="100%" id="StudyTimeTable" class="fixedlayouttable">
      <tbody>

      <tr class="headerstyle">
	 {foreach from=$study_json.number|json_decode item=type}
      <th class="tb_roll_no_width">出席番号</th>
      <th class="tb_studentname_width">氏名</th>
	  <th class="tb_date_width table_drilldate_end"><div class="previous_arrow"><div class="date_previous_arrow_image"></div></div><div class="date_text">{$type}</div></th>
	  <th class="tb_date_width">{$type}</th>
      <th class="tb_date_width">{$type}</th>
	  <th class="tb_date_width">{$type}</th>
	  <th class="tb_date_width">{$type}</th>
	  <th class="tb_date_width">{$type}</th>
	  <th class="tb_date_width table_drilldate_end"><div class="date_text">{$type.6}</div><div class="previous_arrow"><div class="date_next_arrow_image"></div></div></th>
      </tr>
	 
	 <tr>
	 <!--出席番号  -->
	<td>{$type}</td>
	<!--氏名  -->
    <td class="table_studentname-align">{$type} </td>
	</tr>

 </tbody>

</table>
	{/foreach}
</form>

</div><!-- .mainContents ends-->
<!-- 学習時間　ends here  -->


<!-- ドリル番号　Start Here  -->

<div class="mainContents" id="tab2">

<div class="info_above_table">

<div class="drill_no_mantenbox">
<div class="colorblock1">
</div>
<div class="info_image_text info_manten_text">
<p>...満点</p>
</div>
<div class="vertical_dotted_line"></div>
</div>


<div class="drill_no_kakunindrill_no_text">
<div class="info_text_kakunin_drill_middle">
<p>かくにんドリル番号</p>
</div>
</div>

<div class="drill_no_kakunindrill_no_lasttext">
<div class="vertical_dotted_line"></div>
<div class="info_text_kakunin_drill_last">
<p class="textalign_center">みなおしドリル</p>
<p class="textalign_center">取り組み数</p>
</div>
<div class="vertical_dotted_line"></div>
</div>

</div> <!-- info_above_table ends--> 

<table border="1" width="100%" class="fixedlayouttable">
  <tbody>
    <tr class="headerstyle">
      <th class="tb_roll_no_width">出席番号</th>
      <th class="tb_studentname_width">氏名</th>
	  <th colspan= "10" class="table_drilldate_wide">5月12日（月）</th>
	 <th class="table_drilldate_end_minaoushi"></th>
    </tr>
	
	 <tr>
    <td>1</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-3</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">14-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data"><a href="#">ほか</a></div></td>
    <td class="tb_data_bg_drillno_lastcol"><div class="tr_tb_text1_data tr_tb_text1_data_drillno_last_text">60問</div></td>
    </tr>
	 <tr>
    <td>2</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-3</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">14-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data"><a href="#">ほか</a></div></td>
    <td class="tb_data_bg_drillno_lastcol"><div class="tr_tb_text1_data tr_tb_text1_data_drillno_last_text">60問</div></td>
    </tr>

	
	 <tr>
    <td>3</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-3</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">14-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data">1-4</div></td>
	<td class="tr_drillnomiddlecell_text1_data_style tb_data_bg_not_manten"><div class="tr_drillnomiddlecell_text1_data"><a href="#">ほか</a></div></td>
    <td class="tb_data_bg_drillno_lastcol"><div class="tr_tb_text1_data tr_tb_text1_data_drillno_last_text">60問</div></td>
    </tr>


  </tbody>
</table>

</form>

</div><!-- .mainContents ends　-->
<!-- ドリル番号　Ends Here  -->

<!-- 問題数　Start Here  -->
<div class="mainContents" id="tab3">

<div class="info_above_table">

<!-- 問題数　Legend Starts Here  -->
<div class="info_text">
<p>上段</p>
<p class="gedantextcolor">(下段)</p>
</div>
<div class="info_text1">
<p>...実績値</p>
<p>...目標値</p>
</div>

<div class="info_arrow_image">
<div class="up_arrow_image"></div>
</div>

<div class="info_text1">
<p class="textintent">前回比</p>
<p>...上昇</p>
</div>

<div class="info_arrow_image">
<div class="down_arrow_image"></div>
</div>


<div class="info_text1">
<p class="textintent">前回比</p>
<p>...下降</p>
</div>

<div class="info_arrow_image">
<div class="same_arrow_image"></div>
</div>


<div class="info_text1">
<p class="textintent">前回比</p>
<p>...同一</p>
</div>

<div class="colorblock1">
</div>

<div class="info_image_text">
<p>...目標達成</p>
</div>
<div class="colorblock2">
</div>
<div class="info_image_text">
<p>...目標未達成</p>
</div>

</div> 
<!-- 問題数　Legend Ends Here  -->

<table border="1" width="100%" class="fixedlayouttable">
  <tbody>
    <tr class="headerstyle">
      <th class="tb_roll_no_width">出席番号</th>
      <th class="tb_studentname_width">氏名</th>
      <th class="tb_date_width table_drilldate_end"><div class="previous_arrow"><div class="date_previous_arrow_image"></div></div><div class="date_text">5月12日(日)</div></th>
	  <th class="tb_date_width">5月12日(火)</th>
      <th class="tb_date_width">5月13日(水)</th>
	  <th class="tb_date_width">5月14日(木)</th>
	  <th class="tb_date_width">5月15日(金)</th>
	  <th class="tb_date_width">5月16日(土)</th>
	 <th class="tb_date_width table_drilldate_end"><div class="date_text">5月12日(土)</div><div class="previous_arrow"><div class="date_next_arrow_image"></div></div></th>
    </tr>
	
	
    <tr>
    <td>1</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">6問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>2</td>
    <td class="table_studentname-align">横澤　附金原</td>
    <td >&nbsp;</td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td><div class="tr_tb_text_data"><div class="tr_tb_text1_data">-</div><div class="tr_tb_text2_data">（10問）</div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>3</td>
    <td class="table_studentname-align">金子　霊</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
 <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
 <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>4</td>
    <td class="table_studentname-align">江田　環</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td>5</td>
     <td class="table_studentname-align">一万田　海化</td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>6</td>
    <td class="table_studentname-align">河内　愛</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>7</td>
    <td class="table_studentname-align">雄幸　負</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>8</td>
    <td class="table_studentname-align">外島　恵美</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">6問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>9</td>
    <td class="table_studentname-align">凸版　テスト</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td>10</td>
    <td class="table_studentname-align">ACN　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">100問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="down_arrow_image"></div></div></td>
    </tr>
    <tr>
    <td>11</td>
    <td class="table_studentname-align">玉井家　山王</td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160問</div><div class="tr_tb_text2_data">（10問）</div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
     </tr>
    <tr>
    <td>12</td>
    <td class="table_studentname-align">伊都　下降</td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
     <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="same_arrow_image"></div></div></td>
 <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60問</div><div class="tr_tb_text2_data">（10問）</div><div class="tr_tb_image"><div class="up_arrow_image"></div></div></td>
    <td>&nbsp;</td>
    </tr>
	
	
  </tbody>
</table>

</form>

</div><!-- .mainContents ends-->

<!-- 問題数　Ends Here  -->

<!-- 正答数　Start Here  -->
<div class="mainContents" id="tab4">


<!-- 正答数　Legend Start Here  -->
<div class="info_above_table">
<div class="info_arrow_image">
<div class="up_arrow_image"></div>
</div>

<!-- 正答数　Start Here  -->
<div class="info_text1">
<p class="textintent">前回比</p>
<p>...上昇</p>
</div>

<div class="info_arrow_image">
<div class="down_arrow_image"></div>
</div>

<div class="info_text1">
<p class="textintent">前回比</p>
<p>...下降</span></p>
</div>

<div class="info_arrow_image">
<div class="same_arrow_image"></div>
</div>

<div class="info_text1">
<p class="textintent">前回比</p>
<p>...同一</p>
</div>

<div class="colorblock1">
</div>
<div class="info_percentag_text">
<p>100%～80%</p>
</div>
<div class="colorblock3">
</div>
<div class="info_percentag_text">
<p>79%～50%</p>
</div>

<div class="colorblock2">
</div>
<div class="info_percentag_text">
<p>49%～0%</p>
</div>

<div class="info_setouritsu_legend_text">
<p>※取り組み数４問未満は</p>
<p class="textintent">グレー表記になります</p>
</div>

</div> 
<!-- 正答数　Legend Ends Here  -->

<table border="1" width="100%" class="fixedlayouttable">
  <tbody>
    <tr class="headerstyle">
      <th class="tb_roll_no_width">出席番号</th>
      <th class="tb_studentname_width">氏名</th>
      <th class="tb_date_width table_drilldate_end"><div class="previous_arrow"><div class="date_previous_arrow_image"></div></div><div class="date_text">5月12日(日)</div></th>
	  <th class="tb_date_width">5月12日(火)</th>
      <th class="tb_date_width">5月13日(水)</th>
	  <th class="tb_date_width">5月14日(木)</th>
	  <th class="tb_date_width">5月15日(金)</th>
	  <th class="tb_date_width">5月16日(土)</th>
	 <th class="tb_date_width table_drilldate_end"><div class="date_text">5月12日(土)</div><div class="previous_arrow"><div class="date_next_arrow_image"></div></div></th>
    </tr>
	
	<tr>
    <td>2</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	
  	<tr>
    <td>3</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	
	
	<tr>
    <td>4</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>5</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>6</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>7</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>8</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>9</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>10</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>11</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>12</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	<tr>
    <td>13</td>
    <td class="table_studentname-align">堀芝内　ジェファーソン</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data ">6%</div><div class="tr_tb_image"></div></td>
     <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image "><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_mitassei"><div class="tr_tb_text1_data">160%</div><div class="tr_tb_image"><div class="same_arrow_image tb_setousu_image"></div></div></td>
    <td>&nbsp;</td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="up_arrow_image tb_setousu_image"></div></div></td>
    <td class="tb_data_bg_target_tassei"><div class="tr_tb_text1_data">60%</div><div class="tr_tb_image"><div class="down_arrow_image tb_setousu_image"></div></div></td>
    </tr>
	
  </tbody>
</table>

</form>

</div><!-- .mainContents ends-->
<!-- 正答数　Ends  Here  -->

<!-- Default TAB1 Setting(学習時間　tab1) -->
<script type="text/javascript"><!--
// デフォルトのタブを選択
ChangeTab('tab1');
// -->
</script>

</div> <!-- #Contents ends-->

</div> <!-- #allContentsGraph ends-->
</div><!-- #all ends-->

</body>
</html>