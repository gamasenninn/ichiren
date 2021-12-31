
{% include '_header.html' %}
<body>

{% include '_navi.html' %}

<style>
		.cspan {
		   background-color: rgba( 26, 26, 26, 0.55 );
		   color: white;
		}
</style>
<div id="main">

	<div class="container">
    <div class="text-center mt-3"><h2><span>ランチメニュー</span></h2></div>
    {%- for k,v in data.iterrows() %}
      {%- if v['subcateg'] == 'ランチ' %}
          <div class="row mt-3">
            <div class="col-md text-center {{v['img_order']}}">
              <div class="item">
                <img class="mr-3 mt-3 " src="{{v['image']}}" alt="" border="0" />
              </div>
            </div>
            <div class="col-md ml-5 mt-3">
              <div class="h4 mb-2 text-center">{{v['title']}}</div>
              <div>{{v['content']}}</div>
							<div class="mt-2"><span class="h3">{{v['price']}}</span>{{v['add_letter']}}</div>
							<div class="mt-3">{{v['set_menu']}}</div>
							<div class="mt-2"><span class="h3">{{v['set_price']}}</span>{{v['add_letter2']}}</div>
            </div>
          </div>
          {{v['after_html']}}
      {%- endif %}
    {%- endfor %}
  </div>
	<div class="container">
    <div class="text-center mt-3"><h2><span>御膳メニュー</span></h2></div>
    {%- for k,v in data.iterrows() %}
      {%- if v['subcateg'] == '御膳' %}
          <div class="row mt-3">
            <div class="col-md text-center {{v['img_order']}}">
              <div class="item">
                <img class="mr-3 mt-3 " src="{{v['image']}}" alt="" border="0" />
              </div>
            </div>
            <div class="col-md ml-5 mt-3">
              <div class="h4 mb-2 text-center">{{v['title']}}</div>
              <div>{{v['content']}}</div>
							<div class="mt-2"><span class="h3">{{v['price']}}</span>{{v['add_letter']}}</div>
							<div class="mt-3">{{v['set_menu']}}</div>
							<div class="mt-2"><span class="h3">{{v['set_price']}}</span>{{v['add_letter2']}}</div>
            </div>
          </div>
          {{v['after_html']}}
      {%- endif %}
    {%- endfor %}
  </div>

<div class="container">
    <div class="text-center mt-3"><h2><span>おまかせ料理</span></h2></div>


	<div class="row">
		   <div class="col-sm">
				 <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
					  <div class="carousel-inner">

							{%- set ns=namespace(cnt=0) %}
							{%- for k,v in data.iterrows() %}
						      {%- if v['category'] == 'おまかせ' and v['subcateg'] == 'SLIDE' %}

										  {%- if ns.cnt == 0 %}
									    			<div class="carousel-item active text-center">
											{%- else %}
														<div class="carousel-item text-center">
											{%- endif %}

												<div class="item">
													<img src="{{v['image']}}" />
												</div>

												<p>
													{{v['title']}}<br/>
												  {{v['content']}}
												</p>
									    </div>
											{% set ns.cnt = ns.cnt + 1 %}
									{%- endif %}
							{%- endfor %}

					  </div>
					  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a>
				</div>
		 </div>
		 <div class="col-sm">
			 {%- for k,v in data.iterrows() %}
					 {%- if v['category'] == 'おまかせ' and v['subcateg'] == 'HEAD' %}
					 		{{v['content']}}
					 {%- endif %}
			 {%- endfor %}

		 </div>
  </div>
</div>






	<div class="container">
    <div class="text-center mt-3"><h2><span>焼揚物・天婦羅</span></h2></div>
		<div class="d-flex flex-wrap justify-content-center">
				{%- set ns=namespace(cnt=1) %}
		    {%- for k,v in data.iterrows() %}
		      {%- if v['category'] == '焼揚天物' %}
							<div class="card border-secondary text-white bg-dark mb-3 ml-3">
								<div class="card-body">
									<div class="h5 card-title">{{v['title']}}</div>
									<div class="card-text">{{v['price']}}{{v['add_letter']}}</div>
								</div>
							</div>
		          {{v['after_html']}}
							{% set ns.cnt = ns.cnt + 1 %}
		      {%- endif %}
		    {%- endfor %}
		</div>
  </div>



	<div class="container">
    <div class="text-center mt-3"><h2><span>手打ち蕎麦</span></h2></div>
			<div class="row">
				<div class="col-md">
						<div class="item">
							<img class="mr-3 mt-3 mb-3" src="img/m_soba.jpg" alt="" border="0" />
						</div>
				</div>
				<div class="col-md">
						当店の蕎麦は知る人ぞ知る上永野でとれた蕎麦粉だけを使っています。<br/>

						<div class="d-flex flex-wrap justify-content-center">
						    {%- for k,v in data.iterrows() %}
						      {%- if v['category'] == '蕎麦' %}
											<div class="card border-secondary text-white bg-dark mb-3 ml-3">
												<div class="card-body">
													<div class="h5 card-title">{{v['title']}}</div>
													<div class="card-text">{{v['price']}}{{v['add_letter']}}</div>
												</div>
											</div>
						          {{v['after_html']}}
						      {%- endif %}
						    {%- endfor %}
						</div>
				</div>
			</div>
  </div>

	<div class="container">
    <div class="text-center mt-3"><h2><span>単品メニュー</span></h2></div>
		<div class="d-flex flex-wrap justify-content-center">
		    {%- for k,v in data.iterrows() %}
		      {%- if v['category'] == '単品' %}
							<div class="card border-secondary text-white bg-dark mb-3 ml-3">
								<div class="card-body">
									<div class="h5 card-title">{{v['title']}}</div>
									<div class="card-text">{{v['price']}}{{v['add_letter']}}</div>
								</div>
							</div>
		          {{v['after_html']}}
		      {%- endif %}
		    {%- endfor %}
		</div>
  </div>


</div>
<!--/#main-->
{% include '_footer.html' %}

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>
