<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
</style>
</head>
<body>
	<header>
		<!-- Nav container -->
		<nav class="navbar">
			<!-- 로고, 아이콘 -->
			<div class="navbar__logo">
				<a href="http://localhost:8088/leteatvi/" class="menu-content"><img
					src="${pageContext.request.contextPath}/resources/images/LetEatVi_logo.jpg"
					style="width: 160px;"></a>
			</div>

			<!-- 검색창 -->
			<div class="search-wrapper">
				<div class="input-holder">
					<input type="text" class="search-input">
					<button class="search-icon" onclick="searchToggle(this, event);">
						<span id="conan"></span>
					</button>
				</div>
				<span class="close" id="close" style="visibility: hidden;"
					onclick="searchToggle(this, event);"></span>
			</div>

			<!-- 메뉴 -->
			<ul class="navbar__menu">
				<li><a
					href="${pageContext.request.contextPath}/store/goStore.do"
					class="menu-content">스토어</a></li>
				<li><a href="" class="menu-content">영양제</a></li>
				<li><a href="${pageContext.request.contextPath}/story/goStory.do" class="menu-content">스토리</a></li>
				<li><a href="" class="menu-content">장바구니</a></li>
				<li><a href="${pageContext.request.contextPath}/member/memberLogin.do" class="menu-content">Login</a></li>
				<li><a href="${pageContext.request.contextPath}/member/memberEnroll.do" class="menu-content">Join</a></li>
			</ul>
		</nav>
	</header>
	<!-- header 끝 -->

</body>
</html>