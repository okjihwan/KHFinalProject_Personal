<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, 
    initial-scale=1, shrink-to-fit=no">

    <title>Vitamin Login</title>

    <!-- Boot Strap link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" 
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" 
    crossorigin="anonymous">

    <!-- Cstumizing Css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/header.css" />
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/footer.css" />
</head>
<body>

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
        <li><a href="" class="menu-content">스토어</a></li>
        <li><a href="" class="menu-content">영양제</a></li>
        <li><a href="" class="menu-content">이벤트</a></li>
        <li><a href="" class="menu-content">스토리</a></li>
        <li><a href="" class="menu-content">장바구니</a></li>
      </ul>
    </nav>
  </header>
  <!-- header 끝 -->
  
    
    <div class="loginBox">


            <div class="logoBox">
                <img src="logo.jpg" id="logo">
            </div>


            <div class="formBox">
            <!-- form -->
            <form action="memberLoginEnd.do" method="post">
            <!-- 아이디 -->
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" name="userId" class="form-control"
                placeholder="아이디를 입력하세요.">
            </div>
            <!-- //아이디 -->

            <!-- 비밀번호 -->
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" name="password" class="form-control"
                placeholder="비밀번호를 입력하세요.">
            </div>
            <!-- //비밀번호 -->

            <!-- 로그인 버튼 -->
            <button class="btn btn-danger" type="submit" value="Submit" id="loginBtn"> 로그인 하기 </button>
            <!-- //로그인 버튼 -->
        </form>
        <!-- //form --> 

    </div> 
    </div> 

    <div class="findBox">
    <!-- 비밀번호 찾기, 회원가입 -->
    <nav><a href="#">비밀번호 찾기</a>
        <span>|</span>
        <a href="#" class="btn-signup">회원가입</a></nav>
    <!-- //비밀번호 찾기, 회원가입 -->
    </div>

    <div class="bigContainer">
    <div class="loginApiBox">
    <!-- 카카오톡 로그인 버튼 -->
    <button class="btn btn-warning" type="submit" value="Submit" id="loginBtn"> 카카오톡 로그인 하기 </button>
    <!-- // 카카오톡 로그인 버튼 -->

    <!-- 페이스북 로그인 버튼 -->
    <button class="btn btn-primary" type="submit" value="Submit" id="loginBtn"> 페이스북 로그인 하기 </button>
    <!-- // 페이스북 로그인 버튼 -->

    <!-- 네이버 로그인 버튼 -->
    <button class="btn btn-success" type="submit" value="Submit" id="loginBtn"> 네이버 로그인 하기 </button>
    <!-- // 네이버 로그인 버튼 -->
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
    <a href="#" class="scroll" style="position:fixed; bottom: 30px; right: 30px;"><img src="${pageContext.request.contextPath}/resources/assets/images/up.png"
        alt="Top" width="30px" height="30px"></a>
    <a href="" style="position: fixed; bottom: 180px; right: 26px;"><img src="${pageContext.request.contextPath}/resources/assets/images/kakao.png"
        style="width: 40px;"></a>
    <a href="" style="position: fixed; bottom: 124px; right: 29px;"><img src="${pageContext.request.contextPath}/resources/assets/images/store.png"
        style="width: 35px;"></a>
    <a href="" style="position: fixed; bottom: 72px; right: 31px;"><img src="${pageContext.request.contextPath}/resources/assets/images/shopping-cart.png"
        style="width: 35px;"></a>
  </footer>



    <!-- JQuery CDN-->
    <script src="https://code.jquery.com/jquery-2.2.4.js" 
    integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" 
    crossorigin="anonymous">
    </script>
</body>
</html>