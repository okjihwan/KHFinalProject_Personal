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
	href="${pageContext.request.contextPath}/resources/css/myPageSurvey.css">

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
					<li class=""><a href="./myPage.jsp" style="font-size: 17px;">결제관리</a></li>
					<li class=""><a href="./myPage.jsp" style="font-size: 17px;">회원관리</a></li>
					<li class=""><a href="./myPage.jsp" style="font-size: 17px;">포인트몰</a></li>
				</ul>
			</nav>


			<div class="right-contents mypage-contents">
				<div id="mypagev-point">
					<div>
						<h2>나의 건강설문 관리</h2>
					</div>
					<div class="point-title">
						<div class="inner">
							<p>
								최근 설문 날짜 : 2021.05.23 <br>
							<hr>
							<strong> 추천 영양 성분 : 루테인 외 3종 </strong>
							</p>
						</div>
					</div>

					<div class="list-wrap">
						<ul class="list-layout point-list" id="item-list">
							<li class="empty">
								<p>건강 설문 다시 하기 >></p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@include file="../common/footer.jsp"%>

</body>

</jsp>