<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
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

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/myPageHome.css">

<script src="${pageContext.request.contextPath}/resources/js/header.js"
	defer></script>

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
	font-family: 'Inkfree';
	src:
		url('${pageContext.request.contextPath}/resources/font/Inkfree.ttf')
		format('truetype');
}
</style>

</head>

<body>
	<%@include file="../common/header.jsp"%>

	<div class="top-img"></div>

	<main id="main" class="mypagev-view main" role="main">

		<!-- <h2 class="only-sr">마이페이지</h2> -->
		<div class="left-menu-layout clearfix">
			<nav class="left-menu">
				<h3>
					<a href="#">My Page</a>
				</h3>
				<ul style="text-align: center;">
					<li class="myPoint"><a
						href="${pageContext.request.contextPath}/myPage/myPagePoint.do">내포인트</a></li>
					<li class="survey"><a
						href="${pageContext.request.contextPath}/myPage/myPageSurvey.do">건강설문관리</a></li>
					<li class="payment"><a
						href="${pageContext.request.contextPath}/">결제관리</a></li>
					<li class="myPoint"><a
						href="${pageContext.request.contextPath}/">포인트몰</a></li>
					<li class=""><a href="${pageContext.request.contextPath}/">회원정보관리</a></li>
				</ul>
			</nav>
			<div class="right-contents mypage-contents">
				<div id="mypagev-home">
					<section class="mypagev-home-top">
						<div id="mypagev-home">
							<section class="mypagev-home-top">
								<div class="home-top-content">
									<h2>
										<mark> 모나리자</mark>
										님의 <em class="light"> Let Eat Vi </em>
									</h2>
									<div class="user-account">monaliza@davinchi.com</div>
								</div>
							</section>
							<section class="mypagev-home-menu">
								<div class="home-header">
									<div class="title">
										<strong>보유 포인트 : </strong><span><strong>
												&nbsp; 0</strong> P</span>
									</div>
								</div>
							</section>
							<section class="mypagev-home-latest">
								<div class="home-latest-header">
									<em class="title"> 최근 주문 내역 >> </em> <span><a
										href="/my/payment"></a></span>
								</div>
								<div class="home-latest-content fullbox" id="delivery-list-wrap">
								</div>
							</section>
							<hr>
							<section class="mypagev-home-latest">
								<div class="home-latest-header">
									<em class="title"> 최근 결제 내역 >> </em> <a href="/my/payment"></a>
								</div>
								<div class="home-latest-content fullbox" id="payment-list-wrap">
								</div>
							</section>
							<hr>
							<section class="mypagev-home-latest">
								<div class="home-latest-header">
									<em class="title"> 최근 영양 추천 >> </em> <a href="/my/survey"></a>
								</div>
								<div class="home-latest-content fullbox" id="survey-list-wrap">
								</div>
							</section>
						</div>
				</div>
	</main>

	<%@include file="../common/footer.jsp"%>
	
</body>

</html>