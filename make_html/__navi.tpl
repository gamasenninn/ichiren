<!--PC用（801px以上端末）メニュー-->
<nav id="menubar">
<ul class="inner">
{% for k,v in data.iterrows() %}
<li><a href="{{v['url']}}">{{v['title']}}<span>{{v['title_en']}}</span></a></li>
{% endfor %}
</ul>
</nav>
<!--小さな端末用（800px以下端末）メニュー-->
<nav id="menubar-s">
<ul>
{% for k,v in data.iterrows() %}
<li><a href="{{v['url']}}">{{v['title']}}<span>{{v['title_en']}}</span></a></li>
{% endfor %}
</ul>
</nav>
