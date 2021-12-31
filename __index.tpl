
{% include '_header.html' %}
<body>

{% include '_navi.html' %}

<div id="main">

  <div class="container-fluid fluid2"><!-- 全体を囲むコンテナ -->
    <div class="carousel slide" data-ride="carousel" >
      <div class="carousel-inner">
        <div class="carousel-item active item">
          <img src="slide_img/pic1.jpg" alt="First slide">
        </div>
        <div class="carousel-item item" >
          <img src="slide_img/pic2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item item">
          <img src="slide_img/pic3.jpg" alt="Third slide">
        </div>
        <div class="carousel-item item">
          <img src="slide_img/pic4.jpg" alt="Third slide">
        </div>
        <div class="carousel-item item">
          <img src="slide_img/pic5.jpg" alt="Third slide">
        </div>
        <div class="carousel-item item">
          <img src="slide_img/pic6.jpg" alt="Third slide">
        </div>
      </div>
    </div>
  </div>

  {% for k,v in data.iterrows() %}
    {% if v['subcateg'] == '店紹介' %}
      <div class="container">
        <div class="text-center mt-3"><h2><span>{{v['title']}}</span></h2></div>
        <div class="row mt-3">
          <div class="col-md text-center">
            <div class="item">
              <span class="blur">
                <img class="mr-3 mt-3" src="{{v['image']}}" alt="" border="0" />
              </span>
            </div>
          </div>
          <div class="col-md ml-5">
            {{v['content']}}
          </div>
        </div>
      </div>
      {% endif %}
  {% endfor %}

  <div class="container">
    <div class="text-center mt-3"><h2><span>トピックス</span></h2></div>
    {% for k,v in data.iterrows() %}
      {% if v['subcateg'] == 'トピックス' %}

          <div class="row mt-3">
            <div class="col-md text-center {{v['img_order']}}">
              <div class="item">
                <span class="blur">
                <img class="mr-3 mt-3 " src="{{v['image']}}" alt="" border="0" />
              </span>
              </div>
            </div>
            <div class="col-md ml-5 mt-3">
              <div class="h4 mb-2">{{v['title']}}</div>
              <div>{{v['content']}}</div>
            </div>
          </div>
          {{v['after_html']}}
      {% endif %}
    {% endfor %}
  </div>

  <div class="container">
    <div class="text-center mt-3"><h2><span>くつろぎの空間</span></h2></div>
    {% for k,v in data.iterrows() %}
      {% if v['subcateg'] == 'スペース' %}

          <div class="row mt-3">
            <div class="col-md text-center {{v['img_order']}}">
              <div class="item">
                <img class="mr-3 mt-3 " name="myimg" src="{{v['image']}}" alt="" border="0" />
              </div>
              {{v['after_html']}}
            </div>
            <div class="col-md ml-5 mt-3">
              <div class="h5 mb-2">{{v['title']}}</div>
              <div>{{v['content']}}</div>
            </div>
          </div>
      {% endif %}
    {% endfor %}
    <br/><br/><br/><br/>
  </div>

</div>


{% include '_footer.html' %}



<script>
    function gazou(mySrc){
    document.myimg.src=mySrc;
    }
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>
