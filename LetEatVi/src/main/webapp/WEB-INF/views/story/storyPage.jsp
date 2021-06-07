<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/css/storypagecss.css">
    <link rel="stylesheet" href="../assets/css/header.css" />
    <link rel="stylesheet" href="../assets/css/footer.css" />
    <title>Story Page</title>

    
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

<script src="../assets/js/header.js" defer></script>
<script src="../assets/js/header_search_box.js" defer></script>


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
<header>
    <!-- Nav container -->
    <nav class="navbar">
      <!-- 로고, 아이콘 -->
      <div class="navbar__logo">
        <a href="" class="menu-content"><img src="../assets/images/LetEatVi_logo.jpg" style="width: 160px;"></a>
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
        <li><a href="" class="menu-content">스토어</a></li>
        <li><a href="" class="menu-content">영양제</a></li>
        <li><a href="" class="menu-content">이벤트</a></li>
        <li><a href="" class="menu-content">스토리</a></li>
        <li><a href="" class="menu-content">장바구니</a></li>
      </ul>
    </nav>
  </header>
  <!-- header 끝 -->

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
        <div class="main">
            <div class="wrapper">
                <div class="contentsbox">
                    <div class="content" onclick="location.href='https://itembbal.com/%EB%8B%A4%EC%9D%B4%EC%96%B4%ED%8A%B8-%EC%8B%9D%EB%8B%A8-%EC%B6%94%EC%B2%9C-%EA%B1%B4%EA%B0%95%ED%95%9C-%EB%8B%A4%EC%9D%B4%EC%96%B4%ED%8A%B8-%EC%8B%9D%EB%8B%A8-%EC%A7%9C%EA%B8%B0/';">
                        <div class="ctimg"><img id="img1" src="../resources/images/diet.JPG" alt=""></div>
                        <div class="cttext">
                            <p class="cate" style = "color : #ff1493">Life</p>
                            <h3>건강하게 다이어트를 할 수 있을까..?</h3>
                            <p id="text">물론!! 가능하지!!<br>
                                건강한 다이어트 식단을 짜보자!</p>
                             <span class="moresee">더 보기...</span>        
                        </div>
                    </div>
                    
                    <div class="content" onclick="location.href='https://krtopic.com/145'" >
                        <div class="ctimg"><img id="img1" src="../resources/images/skin.png" alt=""></div>
                        <div class="cttext">
                            <p class="cate" style = "color : #ff1493">Life</p>
                            <h3>나의 피부는 영유아 때로 돌아갈 수 있을까..?</h3>
                            <p id="text">영유아까지는 모르겠지만!<br>
                                지금보단 훨씬 좋은 피부를 만들어보자!</p>
                             <span class="moresee">더 보기...</span>   
                                
                        </div>
                    </div>

                    <div class="content"  onclick="location.href='https://breffee.net/bbs/board.php?bo_table=zbove_43&wr_id=12'">
                        <div class="ctimg"><img id="img1" src="../resources/images/TRUE.jpg" alt=""></div>
                        <div class="cttext">
                            <p class="cate" style = "color : #ff1493">Life</p>
                            <h3>우리가 알고있던 건강상식들이 정말 TRUE일까..?</h3>
                            <p id="text">과학적으로 입증되지 않은 건강상식들을 쳐내자!<br>
                                잘못된 건강상식 4가지!</p>
                             <span class="moresee">더 보기...</span>     
                        </div>
                    </div>

                    <div class="content"  onclick="location.href='https://www.bbc.com/korean/news-45423465'">
                        <div class="ctimg"><img id="img1" src="../resources/images/choi.JPG" alt=""></div>
                        <div class="cttext">
                            <p class="cate" style = "color : #ff1493">Life</p>
                            <h3>채식주의자로 살면 더 건강할까..?</h3>
                            <p id="text">야채만 먹으면 건강해질까?<br>
                                채식에 대한 진실을 파해쳐보자!</p>
                             <span class="moresee">더 보기...</span>   
                        </div>
                    </div>

                      <div class="content" onclick="location.href='https://post.naver.com/viewer/postView.nhn?volumeNo=15759796&memberNo=24108940&searchKeyword=%EB%B9%84%ED%83%80%EB%AF%BC&searchRank=1';">
                        <div class="ctimg"><img id="img1" src="../resources/images/nono.png" alt=""></div>
                        <div class="cttext">
                            <p class="cate" style = "color : #ff1493">Nutrition</p>
                            <h3>비타민에 대한 잘못된 상식</h3>
                            <p id="text">우리가 알고있던 비타민에 대한<br>
                                잘못된 상식 4가지를 알아보자!</p>
                             <span class="moresee">더 보기...</span>   
                        </div>
                    </div>
                    <div class="content" onclick="location.href='https://steptohealth.co.kr/10-benefits-of-bananas-for-health/';">
                        <div class="ctimg"><img id="img2" src="../resources/images/banana.JPG" alt=""></div>
                        <div class="cttext">
                            <p class="cate" style = "color : #ff1493">Nutrition</p>
                            <h3>바나나 먹으면 나한테 바나나?</h3>
                            <p id="text">달달한 바나나가<br>
                                이런 효능들까지 있었다구?</p>
                             <span class="moresee">더 보기...</span>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    
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
    <a href="#" class="scroll" style="position:fixed; bottom: 30px; right: 30px;"><img src="../assets/images/up.png"
        alt="Top" width="30px" height="30px"></a>
    <a href="" style="position: fixed; bottom: 180px; right: 26px;"><img src="../assets/images/kakao.png"
        style="width: 40px;"></a>
    <a href="" style="position: fixed; bottom: 124px; right: 29px;"><img src="../assets/images/store.png"
        style="width: 35px;"></a>
    <a href="" style="position: fixed; bottom: 72px; right: 31px;"><img src="../assets/images/shopping-cart.png"
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