<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Let Eat VI</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <script src="../assets/js/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
    integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
    crossorigin="anonymous"></script>

  <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet" />

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/mainPage.css">

  <script src="${pageContext.request.contextPath}/resources/assets/js/header.js" defer></script>
  <script src="${pageContext.request.contextPath}/resources/assets/js/header_search_box.js" defer></script>
  <script src="${pageContext.request.contextPath}/resources/assets/js/mainPage.js" defer></script>

  <style>
    /* font url */
    @import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Song+Myung&display=swap');

    @font-face {
      font-family: 'S-CoreDream-3Light';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    @font-face {
      font-family: 'GongGothicMedium';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    @font-face {
      font-family: 'MapoGoldenPier';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }
  </style>
</head>
<body>

<!-- 

LAST-UPDATE : 2021-06-02 
구현 사항 : 기본 틀 ( 메인, 로그인, 회원가입 )

 -->



  	<!-- 로그인처리  ( 로그인,회원가입 버튼 ) 지우지 마세요! -->

	
	
	
<header>
    <!-- Nav container -->
    <nav class="navbar">
      <!-- 로고, 아이콘 -->
      <div class="navbar__logo">
        <a href="" class="menu-content"><img src="${pageContext.request.contextPath}/resources/assets/images/LetEatVi_logo.jpg" style="width: 160px;"></a>
      </div>

      <!-- 검색창 -->
      <div class="search-wrapper">
        <div class="input-holder">
          <input type="text" class="search-input" />
          <button class="search-icon" onclick="searchToggle(this, event);"><span id="conan"></span></button>
        </div>
        <span class="close" id="close" style="visibility: hidden;" onclick="searchToggle(this, event);"></span>
      </div>

      <!-- 메뉴 -->
      <ul class="navbar__menu">
        <li><a href="${pageContext.request.contextPath}/store/goStore.do" class="menu-content">스토어</a></li>
        <li><a href="" class="menu-content">영양제</a></li>
        <li><a href="" class="menu-content">이벤트</a></li>
        <li><a href="" class="menu-content">스토리</a></li>
        <li><a href="" class="menu-content">장바구니</a></li>
      </ul>
    </nav>
  </header>
  <!-- header 끝 -->
  


  <div class="main-img">
    <div class="main-title">
      <br><br><br><br><br><br><br><br><br>
      <h1>내 몸에 필요한 영양제 <br> 궁금하세요?</h1>
    </div>
    <div style="margin-top: 90px;">
      <a href="#" class="vitamin-btn">CHECK</a>
    </div>
  </div>
  
	<div>
	       <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="location.href='${pageContext.request.contextPath}/member/memberLogin.do'">로그인</button>
	       &nbsp;
	       <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="location.href='${pageContext.request.contextPath}/member/memberEnroll.do'">회원가입</button>
	</div>

  <div class="slide-box">
    <p class="content-slide-fix">어떻게 선택하셨었나요?</p>
    <ul class="slider-container simple-list" id="slider">
      <li class="slide">
        <blockquote>
          <div class="content-slide-img">
            <img src="${pageContext.request.contextPath}/resources/assets/images/parcel.png">
            <p class="slide-text">영양제가 너무 다양해서 <br> 뭘 골라야 할지 모르겠어요.</p>
        </blockquote>

        <cite>" 다양한 영양제들 때문에 선택장애 오셨던 분들 "</cite>
      </li>
      <li class="slide">
        <blockquote>
          <div class="content-slide-img">
            <img src="${pageContext.request.contextPath}/resources/assets/images/chemistry.png">
            <p class="slide-text">성분표를 봐도 모르겠고 <br> 어떤 성분이 좋은거죠?</p>
        </blockquote>

        <cite>" 성분표를 봐도 뭐가 뭔지 모르겠는 분들 "</cite>
      </li>
      <li class="slide">
        <blockquote>
          <div class="content-slide-img">
            <img src="${pageContext.request.contextPath}/resources/assets/images/power.png">
            <p class="slide-text">제 몸상태에 딱 맞게 <br> 맞춤형으로 먹고싶어요!</p>
        </blockquote>

        <cite>" 현재 몸상태에 맞춰서 영양제를 추천받고 싶으신 분들 "</cite>
      </li>
    </ul>

    <button id="prev"></button>
    <button id="next"></button>

  </div>
 


  <p class="vi-content">이젠 렛잇비가 선택해줄게요.</p>

  <div class="row rowrow" style="margin-top: 120px;">
    <div class="col col-icon"><img src="${pageContext.request.contextPath}/resources/assets/images/investigation.png"></div>
    <div class="col col-icon"><img src="${pageContext.request.contextPath}/resources/assets/images/shopping-bag.png"></div>
    <div class="col col-icon"><img src="${pageContext.request.contextPath}/resources/assets/images/infinity.png"></div>
  </div>
  <div class="row rowrow" style="margin-top: 30px;">
    <div class="col col-content">
      <p class="content-first">01</p>
      <p class="content-second">건강설문</p>
      <p class="content-third">
        몸을 위해 3분만 투자하세요! <br>
        지금 몸상태에 딱 맞게 영양제를 추천해드려요.
      </p>
    </div>
    <div class="col col-content">
      <p class="content-first">02</p>
      <p class="content-second">성분쇼핑</p>
      <p class="content-third">
        어려운 성분 분석도 한 번에! <br>
        내 몸에 적합한 성분을 보면서 쇼핑할 수 있어요.
      </p>
    </div>
    <div class="col col-content">
      <p class="content-first">03</p>
      <p class="content-second">건강관리</p>
      <p class="content-third">
        평생 건강 지킴이, 렛잇비 <br>
        건강 관리를 쉽고 빠르게 경험해보세요.
      </p>
    </div>
  </div>

  <div class="container fourth-area">
    <img src="${pageContext.request.contextPath}/resources/assets/images/medic-563425.jpg" style="width: 85%;">
    <p>
      렛잇비만의 성분 분석을 통해서 약국에 가지 않아도 내 몸에 필요한 영양제를 추천 받을 수 있어요. <br>
      우리 몸에 꼭 필요한 영양소를 챙기세요.
    </p>
  </div>
  <br><br><br><br><br><br><br><br><br><br>
  <div class="container fourth-area">
    <img src="${pageContext.request.contextPath}/resources/assets/images/vegetables-2977888.jpg" style="width: 85%; height: 500px;">
    <p>
      영양소가 부족하면 우리 몸에 나타나요! 매일 필요 영양소를 섭취하기 어렵다면 영양제로 채워보세요. <br>
      지금 바로 <b style="font-weight: bolder; color: #E87A54;">렛잇비</b>에서 구매해보세요.
    </p>
  </div>


  <div class="fifth-area">
    <div style="text-align: center; padding-top: 110px; font-size: 55px;">
      <p>건강설문으로 <br>
        필요한 영양 성분을 찾으세요.</p>
      <div style="line-height: 50%;"><br></div>
      <a href="#" class="investigation-btn">지금 시작하기</a>
    </div>
  </div>

  <div class="container sixth-area">
    <div class="row pill-search">
      <div class="col">
        <p class="lev-content">
          <big style="font-size: 60px; font-weight: bolder;"> Let's Eat Vitamin </big><br> 똑똑한 생활 습관 <b> 렛 잇 비 </b>
        </p>
      </div>
    </div>
    <div class="row pill-search">
      <div class="col pill-search-box">
        <input type="text">
        <input type="submit" class="submit-btn" value="&#f00e">
      </div>
    </div>
    <div class="row pill-search">
      <div class="col pill-search-btn">
        <button style="margin-right: -4.5px; border-right-color: rgba(0, 0, 0, 0); border-top-left-radius: 10px; border-bottom-left-radius: 10px;">
          <img src="${pageContext.request.contextPath}/resources/assets/images/healthcare.png"
          style="width: 40px; margin-bottom: 10px;"><br>
          피로 / 기운
        </button>
        <button style="margin-right: -4px; border-right-color: rgba(0, 0, 0, 0);">
          <img src="${pageContext.request.contextPath}/resources/assets/images/intestine.png" style="width: 40px; margin-bottom: 10px;"><br>
          장 / 간
        </button>
        <button style="margin-right: -2.5px; border-right-color: rgba(0, 0, 0, 0);">
          <img src="${pageContext.request.contextPath}/resources/assets/images/bone.png" style="width: 40px; margin-bottom: 10px;"><br>
          관절 / 뼈
        </button>
        <button style="margin-left: -2px; border-right-color: rgba(0, 0, 0, 0);">
          <img src="${pageContext.request.contextPath}/resources/assets/images/visible.png" style="width: 40px; margin-bottom: 10px;"><br>
          눈 건강
        </button>
        <button style="margin-left: -4.3px; border-right-color: rgba(0, 0, 0, 0);">
          <img src="${pageContext.request.contextPath}/resources/assets/images/skin-care.png" style="width: 40px; margin-bottom: 10px;"><br>
          피부 / 모발
        </button>
        <button style="margin-left: -3.7px; border-top-right-radius: 10px; border-bottom-right-radius: 10px;">
          <img src="${pageContext.request.contextPath}/resources/assets/images/botox.png" style="width: 40px; margin-bottom: 10px; margin-right: 10px;"><br>
          면역력 / 노화
        </button>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row rowarea">
      <div class="col selfi-area">
        <img class="selfi" src="${pageContext.request.contextPath}/resources/assets/images/Blair.jpeg">
      </div>
      <div class="col selfi-area">
        <img class="selfi" src="${pageContext.request.contextPath}/resources/assets/images/Minji.jpeg">
      </div>
    </div>
    <div class="row rowarea">
      <div class="col text-area">
        <p>구도욱</p>
      </div>
      <div class="col text-area">
        <p>곽민지</p>
      </div>
    </div>
    <div class="row rowarea">
      <div class="col selfi-area">
        <img class="selfi" src="${pageContext.request.contextPath}/resources/assets/images/Gwhan.jpeg">
      </div>
      <div class="col selfi-area">
        <img class="selfi" src="${pageContext.request.contextPath}/resources/assets/images/Davi.jpeg">
      </div>
    </div>
    <div class="row rowarea">
      <div class="col text-area">
        <p>박지환</p>
      </div>
      <div class="col text-area">
        <p>노다비</p>
      </div>
    </div>
    <div class="row rowarea">
      <div class="col selfi-area">
        <img class="selfi" src="${pageContext.request.contextPath}/resources/assets/images/lcwon.jpeg">
      </div>
      <div class="col selfi-area">
        <img class="selfi" src="${pageContext.request.contextPath}/resources/assets/images/Blair.jpeg">
      </div>
    </div>
    <div class="row rowarea">
      <div class="col text-area">
        <p>이철원</p>
      </div>
      <div class="col text-area">
        <p>전소연</p>
      </div>
    </div>
  </div>

 









  <br><br>
  <!-- footer -->
  <footer class="footer" style="margin-top: 300px;">
    <div class="top">
      <div class="container">
        <div class="row">
          <article class="col-md-12 col-sm-10">
            <!-- 페이지 주제 -->
            <div class="about content">
              <p class="sub">렛 잇 비</p>
              <!-- 이름 및 환불규정, 개인정보취급방침 -->
              <p class="name">
                KH정보교육원&nbsp;|&nbsp;대표자:
                유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;노다비&nbsp;곽민지<br />
                <a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a href="privacy.html">개인정보취급방침</a>
              </p>
              <!-- 주소 및 이메일 -->
              <div class="list-icon">
                <div>&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;서울특별시 강남구 테헤란로14길 6 남도빌딩</div>

                <div><i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;let_eat_vi @ gmail.com</div>
                <p class="bottom"><span>KH정보교육원</span> Made by 영양실조</a> <i class="fa fa-copyright"></i> 2021</p>
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>

    <!-- 맨 위로 스크롤 버튼 -->
    <a href="#" class="scroll" style="position:fixed; bottom: 30px; right: 30px;"><img src="${pageContext.request.contextPath}/resources/assets/images/up.png"
        alt="Top" width="30px" height="30px"></a>
    <a href="" style="position: fixed; bottom: 180px; right: 26px;"><img src="${pageContext.request.contextPath}/resources/assets/images/kakao.png"
        style="width: 40px;"></a>
    <a href="" style="position: fixed; bottom: 124px; right: 29px;"><img src="${pageContext.request.contextPath}/resources/assets/images/store.png"
        style="width: 35px;"></a>
    <a href="" style="position: fixed; bottom: 72px; right: 31px;"><img src="${pageContext.request.contextPath}/resources/assets/images/shopping-cart.png"
        style="width: 35px;"></a>
  </footer>

  <!-- 스크롤 효과 -->
  <script>
    var $target = $('.scroll');
    $target.on('click', function () {
      $('html, body').animate({ 'scrollTop': 0 }, 200);
      return false;
    });
  </script>
  <!-- footer 끝 -->


</body>
</html>