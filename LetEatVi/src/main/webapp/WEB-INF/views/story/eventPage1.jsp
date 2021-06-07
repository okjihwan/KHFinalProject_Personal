<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <script type="text/javascript" src="../resources/assets/jquery-1.11.3.min.js"></script> 
    <script type="text/javascript" src="../resources/assets/jQueryRotateCompressed.js"></script>
    <link rel="stylesheet" href="../resources/css/storypagecss.css">
    <title>EventPage1</title>
    <style>
        #letteboard{
          margin:50px 50px;z-index:10;
        }
        #n_id{position:absolute;left:325px;z-index:20;}
    </style>
</head>
<body>
    <div class ="whole">
        <div class="top">
          
                <h1 class="topwords" >Let eat VI story</h1>
                <p class="topwords2" id="text">읽다보면 나도 모르게<br>
                건강하다는 느낌이 들거같은<br>
                @그런 기분...</p>
            
            <div class="nav">
                <nav>
                    <span class="navspan">
                        <a href="storypage.html">All</a>
                    </span>
                    <span class="navspan">
                        <a href="Life.html">Life</a>
                    </span>
                    <span class="navspan">
                        <a href="Nutrition.html">Nutrition</a>
                    </span>
                    <span class="navspan">
                        <a href="Event.html">Event</a>
                    </span>
                </nav>
            </div>
        </div>

<div>
   
<img src="../resources/images/roulettte1.JPG" id="letteboard">
<img src="../resources/images/niddle.png" id="n_id">
<br />
<input type='button' value='시작' id='start_btn'></input>

<div id="result_id"></div>
<div id="result_id2"></div>
<div id="result_id3"></div>
<script>
window.onload = function(){
	
	var pArr = ["다음기회에","꽝!","아쉽네요ㅠ","오늘은 아닌걸로","5:당첨!","아이고..ㅠ"];

	$('#start_btn').click(function(){
		rotation();
	});

	function rotation(){
		$("#letteboard").rotate({
		  angle:0, 
		  animateTo:360 * 5 + randomize(0, 360),
		  center: ["50%", "50%"],
		  easing: $.easing.easeInOutElastic,
		  callback: function(){ 
						var n = $(this).getRotateAngle();
						endAnimate(n);
					},
		  duration:5000
	   });
	}

	function endAnimate($n){
		var n = $n;
		$('#result_id').html("<p>움직인각도:" + n + "</p>");
		var real_angle = n%360;
		var part = Math.floor(real_angle/60);
	
		$('#result_id2').html("<p>상품범위:" + part + "</p>");

		if(part < 1){
			$('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>");
			return;
		}

		if(part >= 10){
			$('#result_id3').html("<p>당첨내역:" + pArr[pArr.length-1] + "</p>");
			return;
		}

		$('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>");
	}

	function randomize($min, $max){
		return Math.floor(Math.random() * ($max - $min + 1)) + $min;
	}
};
</script>

</div>
</div>

</body>
</html>