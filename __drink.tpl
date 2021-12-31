
{% include '_header.html' %}
<body>

{% include '_navi.html' %}

<div id="main">

	<div class="container">
    <div class="text-center mt-3"><h2><span>日本酒(栃木銘酒)</span></h2></div>
		<div class="d-flex flex-wrap justify-content-center">
				{%- set ns=namespace(cnt=1) %}
		    {%- for k,v in data.iterrows() %}
		      {%- if v['subcateg'] == '栃木銘酒' %}
							<div class="card border-secondary text-white bg-dark mb-3 ml-3">
								<div class="card-body">
									<div class="h5 card-title">{{v['title']}}</div>
									<div class="card-text">
										<p>{{v.coment}}</p>
										{{v['price']}}{{v['add_letter']}}
									</div>
								</div>
							</div>
		          {{v['after_html']}}
							{%- set ns.cnt = ns.cnt + 1 %}
		      {%- endif %}
		    {%- endfor %}
		</div>
  </div>

	<div class="container">
    <div class="text-center mt-3"><h2><span>日本酒(全国銘酒)</span></h2></div>
		<div class="d-flex flex-wrap justify-content-center">
				{%- set ns=namespace(cnt=1) %}
		    {%- for k,v in data.iterrows() %}
		      {%- if v['subcateg'] == '全国銘酒' %}
							<div class="card border-secondary text-white bg-dark mb-3 ml-3">
								<div class="card-body">
									<div class="h5 card-title">{{v['title']}}</div>
									<div class="card-text">
										<p>{{v.coment}}</p>
										{{v['price']}}{{v['add_letter']}}
									</div>
								</div>
							</div>
		          {{v['after_html']}}
							{%- set ns.cnt = ns.cnt + 1 %}
		      {%- endif %}
		    {%- endfor %}
		</div>
  </div>

	<div class="container">
    <div class="text-center mt-3"><h2><span>焼酎</span></h2></div>
			<div class="row">
				 <div class="col-md">
					  <div class="h3 text-center">芋焼酎</div>
						<div class="d-flex flex-column justify-content-center">
						    {%- for k,v in data.iterrows() %}
						      {%- if v['subcateg'] == '芋焼酎' %}
											<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
												<div class="card-body">
													<div class="row">
															<span class="col h5 card-title">{{v['title']}}</span>
															<span class="card-text">
																{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
															</span>
													</div>
												</div>
											</div>
						          {{v['after_html']}}
						      {%- endif %}
						    {%- endfor %}
						</div>
				</div>
				<div class="col-md">
					 <div class="h3 text-center">プレミアム芋焼酎</div>
					 <div class="d-flex flex-column justify-content-center">
							{%- for k,v in data.iterrows() %}
								{%- if v['subcateg'] == 'プレ芋焼酎' %}
										<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
											<div class="card-body">
												<div class="row">
														<span class="col h5 card-title">{{v['title']}}</span>
														<span class="card-text">
															{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
														</span>
												</div>
											</div>
										</div>
										{{v['after_html']}}
								{%- endif %}
							{%- endfor %}
 					 </div>
  				 <div class="h3 text-center">麦焼酎・他</div>
					 <div class="d-flex flex-column justify-content-center">
							 {%- for k,v in data.iterrows() %}
								 {%- if v['subcateg'] == '麦焼酎' or v['subcateg'] == '黒糖焼酎' %}
										 <div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
											 <div class="card-body">
												 <div class="row">
														 <span class="col h5 card-title">{{v['title']}}</span>
														 <span class="card-text">
															 {{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
														 </span>
												 </div>
											 </div>
										 </div>
										 {{v['after_html']}}
								 {%- endif %}
							 {%- endfor %}
					 </div>
			 </div>
		 </div> <!-- row -->
  </div>

	<div class="container">
    <div class="text-center mt-3"><h2><span>ビール・洋酒・ワイン</span></h2></div>
			<div class="row">
				 <div class="col-md">
					  <div class="h3 text-center">ビール</div>
						<div class="d-flex flex-column justify-content-center">
						    {%- for k,v in data.iterrows() %}
						      {%- if v['subcateg'] == 'ビール' %}
											<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
												<div class="card-body">
													<div class="row">
															<span class="col h5 card-title">{{v['title']}}</span>
															<span class="card-text">
																{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
															</span>
													</div>
												</div>
											</div>
						          {{v['after_html']}}
						      {%- endif %}
						    {%- endfor %}
						</div>
						<div class="h3 text-center">ワイン</div>
						<div class="d-flex flex-column justify-content-center">
						    {%- for k,v in data.iterrows() %}
						      {%- if v['subcateg'] == 'ワイン' %}
											<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
												<div class="card-body">
													<div class="row">
															<span class="col h5 card-title">{{v['title']}}</span>
															<span class="card-text">
																{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
															</span>
													</div>
												</div>
											</div>
						          {{v['after_html']}}
						      {%- endif %}
						    {%- endfor %}
						</div>
				</div>
				<div class="col-md">
					 <div class="h3 text-center">ウィスキー・スコッチ</div>
					 <div class="d-flex flex-column justify-content-center">
							{%- for k,v in data.iterrows() %}
								{%- if v['subcateg'] == 'ウィスキー' or v['subcateg'] == 'スコッチ' %}
										<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
											<div class="card-body">
												<div class="row">
														<span class="col h5 card-title">{{v['title']}}</span>
														<span class="card-text">
															{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
														</span>
												</div>
											</div>
										</div>
										{{v['after_html']}}
								{%- endif %}
							{%- endfor %}
 					 </div>
  				 <div class="h3 text-center">リキュール</div>
					 <div class="d-flex flex-column justify-content-center">
							 {%- for k,v in data.iterrows() %}
								 {%- if v['subcateg'] == 'リキュール'%}
										 <div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
											 <div class="card-body">
												 <div class="row">
														 <span class="col h5 card-title">{{v['title']}}</span>
														 <span class="card-text">
															 {{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
														 </span>
												 </div>
											 </div>
										 </div>
										 {{v['after_html']}}
								 {%- endif %}
							 {%- endfor %}
					 </div>
			 </div>
		 </div> <!-- row -->
  </div>

	<div class="container">
    <div class="text-center mt-3"><h2><span>ソフトドリンク・甘味</span></h2></div>
			<div class="row">
				 <div class="col-md">
					  <div class="h3 text-center">ソフトドリンク</div>
						<div class="d-flex flex-column justify-content-center">
						    {%- for k,v in data.iterrows() %}
						      {%- if v['subcateg'] == 'ソフト' %}
											<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
												<div class="card-body">
													<div class="row">
															<span class="col h5 card-title">{{v['title']}}</span>
															<span class="card-text">
																{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
															</span>
													</div>
												</div>
											</div>
						          {{v['after_html']}}
						      {%- endif %}
						    {%- endfor %}
						</div>
				</div>
				<div class="col-md">
					 <div class="h3 text-center">甘味</div>
					 <div class="d-flex flex-column justify-content-center">
							{%- for k,v in data.iterrows() %}
								{%- if v['subcateg'] == '甘味' %}
										<div class="card border-secondary text-white bg-dark mb-3 ml-3 ">
											<div class="card-body">
												<div class="row">
														<span class="col h5 card-title">{{v['title']}}</span>
														<span class="card-text">
															{{v.coment}}	<span class="col text-center  pr-5">{{v['price']}}{{v['add_letter']}}</span>
														</span>
												</div>
											</div>
										</div>
										{{v['after_html']}}
								{%- endif %}
							{%- endfor %}
 					 </div>
			 </div>
		 </div> <!-- row -->
  </div>


</div>
<!--/#main-->

{% include '_footer.html' %}


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
