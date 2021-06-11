<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>마이페이지</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/myPage_Point.css">

<script src="${pageContext.request.contextPath}/resources/js/header.js" defer></script>

<style>
/* font url */
@import
	url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Song+Myung&display=swap')
	;

@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GongGothicMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'MapoGoldenPier';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'PrestigeEliteStd';
	src: url('${pageContext.request.contextPath}/resources/font/PrestigeEliteStd-Bd.otf') format('truetype');
}

@font-face {
	font-family: 'Inkfree';
	src: url('${pageContext.request.contextPath}/resources/font/Inkfree.ttf') format('truetype');
}
</style>

</head>

<body>
	<header>
		<!-- Nav container -->
		<nav class="navbar">
			<!-- 로고, 아이콘 -->
			<div class="navbar__logo">
				<a href="" class="menu-content"><img
					src="${pageContext.request.contextPath}/resources/images/LetEatVi_logo.jpg" style="width: 160px;"></a>
			</div>

			<!-- 검색창 -->
			<div class="search-wrapper">
				<div class="input-holder">
					<input type="text" class="search-input" />
					<button class="search-icon" onclick="searchToggle(this, event);">
						<span id="conan"></span>
					</button>
				</div>
				<span class="close" id="close" style="visibility: hidden;"
					onclick="searchToggle(this, event);"></span>
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

	<div class="top-img"></div>

	<main id="main" class="mypagev-view main" role="main">
		<div class="left-menu-layout clearfix">
			<nav class="left-menu">
				<h3>
					<a href="./myPage.jsp">My Page</a>
				</h3>
				<ul class="myPage_menu"
					style="text-align: center; padding-left: 0px;">
					<li class=""><a href="./myPage_Survey.jsp"
						style="font-size: 17px;">건강설문관리</a></li>
					<li class="myPoint"><a href="./myPage_Point.jsp"
						style="font-size: 17px;">포인트내역</a></li>
					<li class=""><a href="./myPage.jsp"
						style="font-size: 17px;">결제관리</a></li>
					<li class=""><a href="./myPage.jsp"
						style="font-size: 17px;">회원관리</a></li>
					<li class=""><a href="./myPage.jsp"
						style="font-size: 17px;">포인트몰</a></li>
				</ul>
			</nav>


			<div class="right-contents mypage-contents">
				<div id="mypagev-point">
					<div>
						<h2>포인트 적립 내역</h2>
					</div>
					<div class="point-title">
						<div class="inner">
							<strong>보유 포인트 : </strong> <span><strong><mark>
										10,000 </mark></strong> P</span>
						</div>
					</div>
					<div class="list-wrap">
						<ul class="list-layout point-list" id="item-list"
							style="padding-left: 0px;">
							<li class="empty">
								<p>포인트 내역이 없습니다.</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</main>


	<!-- footer -->
	<footer class="footer" style="margin-top: 150px;">
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
								<a href="refund.jsp">환불규정</a>&nbsp;|&nbsp;<a
									href="privacy.jsp">개인정보취급방침</a>
							</p>
							<!-- 주소 및 이메일 -->
							<div class="list-icon">
								<div>
									&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;서울특별시
									강남구 테헤란로14길 6 남도빌딩
								</div>

								<div>
									<i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;let_eat_vi @
									gmail.com
								</div>
								<p class="bottom">
									<span>KH정보교육원</span> Made by 영양실조</a> <i class="fa fa-copyright"></i>
									2021
								</p>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>

		<!-- 맨 위로 스크롤 버튼 -->
		<a href="#" class="scroll"
			style="position: fixed; bottom: 30px; right: 30px;"><img
			src="${pageContext.request.contextPath}/resources/images/up.png" alt="Top" width="30px" height="30px"></a>
		<a href="" style="position: fixed; bottom: 180px; right: 26px;"><img
			src="${pageContext.request.contextPath}/resources/images/kakao.png" style="width: 40px;"></a> <a
			href="" style="position: fixed; bottom: 124px; right: 29px;"><img
			src="${pageContext.request.contextPath}/resources/images/store.png" style="width: 35px;"></a> <a
			href="" style="position: fixed; bottom: 72px; right: 31px;"><img
			src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" style="width: 35px;"></a>
	</footer>

	<!-- 스크롤 효과 -->
	<script>
        var $target = $('.scroll');
        $target.on('click', function () {
            $('jsp, body').animate({ 'scrollTop': 0 }, 200);
            return false;
        });
    </script>
	<!-- footer 끝 -->
</body>

</jsp>