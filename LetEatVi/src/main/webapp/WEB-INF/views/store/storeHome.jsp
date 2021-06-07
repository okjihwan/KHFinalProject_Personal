<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>store</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
      integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
      integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
      crossorigin="anonymous"></script>
  
    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet" />
  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/test.css">
  
    <script src="${pageContext.request.contextPath}/resources/js/header.js" defer></script>
    <script src="${pageContext.request.contextPath}/resources/js/header_search_box.js" defer></script>
    <script src="${pageContext.request.contextPath}/resources/js/mainPage.js" defer></script>
  
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
    <header>
        <!-- Nav container -->
        <nav class="navbar" style="background: white; opacity: 1; box-shadow: rgba(0, 0, 0, 0.14) 0px 0px 6px 0px;">
          <!-- 로고, 아이콘 -->
          <div class="navbar__logo">
            <a href="" class="menu-content"><img src="${pageContext.request.contextPath}/resources/images/LetEatVi_logo.jpg" style="width: 160px;"></a>
          </div>
    
          <!-- 검색창 -->
          <div class="search-wrapper">
            <div class="input-holder">
              <input type="text" class="search-input">
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
            <li><a href="" class="menu-content">${member.userId} 님 환영합니다</a></li>
          </ul>
        </nav>
    </header>

    <div class="main-img" style="border-bottom: 2px solid black;">
        <div class="main-title">
          <br><br><br><br><br><br><br><br><br>
          <h1>내 몸에 필요한 영양제 <br> 궁금하세요?</h1>
        </div>
    </div>

	<section>
		<div class="mainText">[Store Page]</div>

		<div class="subText">
			건강을 되찾고 싶은 당신! <br /> 지금 당장 구매하세요!
		</div>

		<div class="blankArea"></div>

		<div class="container"
			style="max-width: 1350px; margin-bottom: 120px;">
			<nav class="gnb-menu">

				<a href="">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText" onclick="selectCartegory(0);">All</div>
				</a>

				<div onclick="selectCartegory(1);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">활력 & 피로</div>
				</div>

				<a href="">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText" onclick="selectCartegory(2);">피부 &
						모발</div>
				</a> <a href="">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText" onclick="selectCartegory(3);">면연력</div>
				</a> <a href="">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/liver.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText" onclick="selectCartegory(4);">장 & 간
					</div>
				</a> <a href="">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/broken-bone.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText" onclick="selectCartegory(5);">뼈</div>
				</a> <a href="">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/eye.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText" onclick="selectCartegory(6);">눈</div>
				</a>
			</nav>
		</div>

		<div class="container" style="max-width: 1600px;">

			<c:forEach items="${productList}" var="p" varStatus="st">
				<c:if test="${ st.count % 3 == 1 }">
					<div class="card-deck bestProduct">
				</c:if>
				<div class="card border-secondary cardSetCss">
					<img
						src="${pageContext.request.contextPath }/resources/images/${p.pname}.jpg"
						class="card-img-top bestProductImg" alt="...">
					<div class="card-body cardText">
						<p>
							<b>[${p.pname}]</b>
						</p>
						<p>${p.pcontent}</p>
						<p>
							<b>${p.pprice}￦</b>
						</p>
					</div>
					<div class="card-footer border-secondary">
						<div class="row bestProductFooterText">
							<div class="col-6" style="text-align: left;">
								<button type="button" onclick="addCart(${p.pno})"
									class="btn btn-light popover-dismiss" data-container="body"
									data-toggle="popover" data-placement="bottom"
									data-content="장바구니에 추가하였습니다." style="width: 150px;">ADD TO CART</button>
							</div>

							<div class="col-3 choiceProduct${st.count}"
								onclick="checkProduct(${st.count})">
								<small class="text-muted"> <i class="far fa-heart fa-3x"></i>
								</small>
							</div>

							<div class="col-3"
								onclick="location.href='${pageContext.request.contextPath}/store/selectProduct.do?pno=${p.pno}'">
								<small class="text-muted"> <i
									class="fas fa-search fa-3x"></i>
								</small>
							</div>
						</div>
					</div>
				</div>
				<c:if
					test="${ (st.count % 3 == 0) or st.count == allProduct.size() }">
		</div>
		</c:if>
		</c:forEach>
		<br />
		<c:out value="${pageBar}" escapeXml="false" />
		</div>

		<script>
        function checkProduct(value){
            $(".choiceProduct" + value +" i").toggleClass("select");
        }
            $('.popover-dismiss').popover({
                trigger: 'focus'
            })
        </script>

		<script>
			function addCart( pno ){
				var cart = [];
				console.log(pno + "번 제품 장바구니 추가");
				
				$.ajax({
		            url  : "${pageContext.request.contextPath}/store/addCart.do",
		            data : { pno, userId : '${member.userId}' }, 
		            type : "get",
		            success : function(data){
		                console.log(data);
		            }
	        	}); 
			}
		</script>

		<script>
			function selectCartegory(cno){
				console.log(cno);
				
					$.ajax({
			            url  : "${pageContext.request.contextPath}/store/selectCategory.do",
			            data : { cno },
			            type : "get",
			            success : function(data){
			                console.log(data);
			            }
		        	}); 
			}
		</script>
	</section>

	<br><br><br><br><br><br><br><br><br><br>
</body>

</html>