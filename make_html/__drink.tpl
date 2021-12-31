<!DOCTYPE html>
<html lang="ja">
{% include '_header.html' %}
<body>

<header>
<div class="inner">
<h1><a href="index.html"><img src="images/logo.png" alt="和食" id="logo"><img src="images/logo-s.png" alt="和食" id="logo-s"></a></h1>
</div>
</header>

{% include '_navi.html' %}

<div id="contents" class="inner">

<h2 class="img"><img src="images/midashi_menu.jpg" alt="お飲み物"></h2>

<div id="main">

<section>

<h2>メニュー</h2>

<ul id="pagenav">
<li><a href="#menu1">日本酒</a></li>
<li><a href="#menu2">焼酎</a></li>
</ul>


<h3 id="menu1">日本酒メニュー</h3>
<p><div align="center"><h4><FONT SIZE=+2>栃木銘酒</FONT></h4></div></p>
<table border=0>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == '日本酒' and v['subcateg'] == '栃木銘酒' %}
	<tr>
		<td width=30%><h4>{{ v['title'] }}</h4></td>
		<td width=10%><h4>{{v['price']}}</h4></td>
		<td width=10%><p>{{ v['content'] }}</p></td>
		<td width=50%><p>{{ v['coment']}}</p></td>
	</tr>
   {% endif %}
{%- endfor %}
</table>

<p><div align="center"><h4><FONT SIZE=+2>全国銘酒</FONT></h4></div></p>
<table>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == '日本酒' and v['subcateg'] == '全国銘酒' %}
	<tr>
		<td width=30%><h4>{{ v['title'] }}</h4></td>
		<td width=10%><h4>{{v['price']}}</h4></td>
		<td width=10%><p>{{ v['content'] }}</p></td>
		<td width=50%><p>{{ v['coment']}}</p></td>
	</tr>
   {% endif %}
{%- endfor %}
</table>



<h3 id="menu2">焼酎メニュー</h3>

<table>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == '焼酎' %}
	<tr>
		<td><h4>{{ v['title'] }} {{v['price']}}</h4></td>
		<td><p>{{ v['content'] }}</p></td>
		<td><p>{{ v['coment']}}</p></td>
	</tr>
   {% endif %}
{%- endfor %}
</table>

<h3 id="menu3">ビール・洋酒・ワイン</h3>

<div class="left_box">
<table>
<tr>
<td colspan=3><font size=+2>ビール・洋酒</font></td>
</tr>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == 'お飲み物' and v['subcateg'] in ['ビール・洋酒'] %}
   <tr>
		<td width="70%"><h4>{{ v['title'] }} {{v['price']}}</h4></td>
		<td width="15%"><p>{{ v['content'] }}</p></td>
		<td width="15%"><p>{{ v['coment']}}</p></td>
   </tr>
   {% endif %}
{%- endfor %}
</tr>
<tr>
<td colspan=3><font size=+2>スコッチ</font></td>
</tr>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == 'お飲み物' and v['subcateg'] in ['スコッチ'] %}
   <tr>
		<td width="70%"><h4>{{ v['title'] }} {{v['price']}}</h4></td>
		<td width="15%"><p>{{ v['content'] }}</p></td>
		<td width="15%"><p>{{ v['coment']}}</p></td>
   </tr>
   {% endif %}
{%- endfor %}
</table>
</div>

<div class="right_box">
<table>
<tr>
<td colspan=3 ><font size=+2>サワー・リキュール・ワイン</font></td>
</tr>
{% for k,v in data.iterrows() -%}      
   {% if v['category'] == 'お飲み物' and v['subcateg'] in ['サワー','リキュール','ワイン'] %}
   <tr>
		<td width="70%"><h4>{{ v['title'] }} {{v['price']}}</h4></td>
		<td width="15%"><p>{{ v['content'] }}</p></td>
		<td width="15%"><p>{{ v['coment']}}</p></td>
   </tr>
   {% endif %}
{%- endfor %}
</table>
</div>

<h3 id="menu4">ソフトドリンク・甘味</h3>

<div class="left_box">
<table>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == 'その他' and v['subcateg'] in ['ソフト'] %}
	<tr>
		<td><h4>{{ v['title'] }} {{v['price']}}</h4></td>
		<td><p>{{ v['content'] }}</p></td>
		<td><p>{{ v['coment']}}</p></td>
	</tr>
   {% endif %}
{%- endfor %}
</table>
</div>
<div class="right_box">
<table>
{% for k,v in data.iterrows() -%}
   {% if v['category'] == 'その他' and v['subcateg'] in ['甘味'] %}
	<tr>
		<td><h4>{{ v['title'] }} {{v['price']}}</h4></td>
		<td><p>{{ v['content'] }}</p></td>
		<td><p>{{ v['coment']}}</p></td>
	</tr>
   {% endif %}
{%- endfor %}
</table>
</div>

<div class="list">
<figure><img src="images/sample2.jpg" alt="メニュー名"></figure>
<h4>メニュー名 000円</h4>
<p>「おすすめ」のテキストはhtml側で直接入れ替え可能です。色などのスタイルはstyle.cssの「.option1」で変更可能。</p>
<span class="option1">おすすめ</span>
</div>


<h2>サムネイル表示もできます。</h2>
<p><a href="menu_sample.html">詳しくはこちらをご覧ください。</a><br>
左メニューの子メニュー（メニューサンプル）のリンク先にもなっています。<br>
お好きなレイアウトを使って下さい。</p>

<div class="photo">
<figure><img src="images/sample1.jpg" alt="メニュー名"></figure>
<h4>メニュー名 000円</h4>
<span class="option1">おすすめ</span>
</div>

<div class="photo">
<figure><img src="images/sample2.jpg" alt="メニュー名"></figure>
<h4>メニュー名 000円</h4>
</div>

<div class="photo">
<figure><img src="images/sample3.jpg" alt="メニュー名"></figure>
<h4>メニュー名 000円</h4>
</div>

</section>

</div>
<!--/#main-->

<div id="sub">

<nav class="box">
<h2>メニュー</h2>
<ul class="submenu">
<li><a href="index.html">ホーム</a></li>
<li><a href="info.html">ご案内</a></li>
<li><a href="menu.html">お品書き</a>
	<ul>
	<li><a href="menu_sample.html">メニューサンプル</a></li>
	<li><a href="menu_sample.html">メニューサンプル</a></li>
	<li><a href="menu_sample.html">メニューサンプル</a></li>
	<li><a href="menu_sample.html">メニューサンプル</a></li>
	</ul>
</li>
<li><a href="access.html">アクセス</a></li>
<li><a href="contact.html">ご予約・お問合せ</a></li>
<li><a href="recruit.html">スタッフ募集</a></li>
</ul>
</nav>

<section class="box">
<h2>店舗情報</h2>
<p class="c">TEL：03-0000-0000<br>
<span class="mini1">AM:10:00〜22:00<br>
水曜定休</span></p>
</section>

</div>
<!--/#sub-->

</div>
<!--/#contents-->

<footer>
<small>Copyright&copy; <a href="index.html">和食</a> All Rights Reserved.</small>
<span class="pr"><a href="https://template-party.com/" target="_blank">《Web Design:Template-Party》</a></span>
</footer>

<!--PAGE TOP（↑）ボタン-->
<p class="nav-fix-pos-pagetop"><a href="#">↑</a></p>

<!--メニュー開閉ボタン-->
<div id="menubar_hdr" class="close"></div>
<!--メニューの開閉処理条件設定　800px以下-->
<script>
if (OCwindowWidth() <= 800) {
	open_close("menubar_hdr", "menubar-s");
}
</script>

</body>
</html>
