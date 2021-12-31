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

<div id="main">

<section id="new">
<h2>お知らせ・NEW</h2>
<dl>
{% for k,v in data.iterrows() %}
   {% if v['subcateg'] == 'NEW' %}
	<dt>{{ v['date']}}</dt>
	<dd>{{v['title']}}</dd>
   {% endif %}
{% endfor %}
</dl>
</section>

<section>

<h2>トピックス</h2>

<h3 id="menu1">○○○○</h3>
{% for k,v in data.iterrows() %}
   {% if v['subcateg'] == 'トピックス' %}
	<div class="list">
	<figure><img src="images/sample1.jpg" alt="メニュー名"></figure>
	<h4>{{ v['title'] }}</h4>
	<p>{{ v['content'] }}</p>
	</div>
   {%endif%}
{% endfor %}


<h3>利用規約のご案内</h3>
<p>このテンプレートは、<a href="https://template-party.com/">Template Party</a>にて無料配布している『居酒屋・創作和食サイト向け 無料ホームページテンプレート tp_foods7』です。必ずダウンロード先のサイトの<a href="https://template-party.com/read.html">利用規約</a>をご一読の上でご利用下さい。</p>
<p><strong class="color1">■HP最下部の著作表示『Web Design:Template-Party』は無断で削除しないで下さい。</strong><br>
わざと見えなく加工する事も禁止です。</p>
<p><strong class="color1">■下部の著作を外したい場合は</strong><br>
<a href="https://template-party.com/">Template-Party</a>の<a href="https://template-party.com/member.html">ライセンス契約</a>を行う事でHP下部の著作を外す事ができます。</p>

<h3>テンプレートに梱包されているjavascriptファイル（jsファイル）について</h3>
<p>当テンプレートに梱包されているjavascriptファイルは全て<a href="http://www.crytus.co.jp/">有限会社クリタス様</a>提供のものです。jsファイルは改変せずにご利用下さい。<br>
また、当サイトのテンプレート「以外」に使いたいなど、「プログラムのみ」を使う場合は<a href="https://template-party.com/free_program/openclose_license.html">こちらの規約</a>をお守り下さい。</p>

<h3>当テンプレートの詳しい使い方は</h3>
<p><a href="info.html">こちらをご覧下さい。</a></p>

</section>

</div>
<!--/#main-->

<div id="sub">

<nav class="box">
<h2>メニュー</h2>
<ul class="submenu">
<li><a href="index.html">ホーム</a></li>
<li><a href="info.html">ご案内</a></li>
<li><a href="menu.html">お品書き</a></li>
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
