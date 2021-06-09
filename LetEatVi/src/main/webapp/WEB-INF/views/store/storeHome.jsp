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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
  
    <script src="${pageContext.request.contextPath}/resources/js/header.js" defer></script>
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

    <div class="main-img" style="border-bottom: 2px solid black; background-image: url(${pageContext.request.contextPath}/resources/images/main_cover3.jpg);">
        <div class="main-title">
          <br><br><br><br><br><br><br><br><br>
          <h1 style="margin-top: -100px;">내 몸에 필요한 영양제 <br> 궁금하세요?</h1>
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

				<div onclick="selectCartegory(0);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">All</div>
				</div>

				<div onclick="selectCartegory(1);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">활력 & 피로</div>
				</div>

				<div onclick="selectCartegory(2);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">피부 & 모발</div>
				</div>
						
				<div onclick="selectCartegory(3);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">면역력</div>
				</div> 
				
				<div onclick="selectCartegory(4);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/liver.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">장 & 간
					</div>
				</div> 
				
				<div onclick="selectCartegory(5);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/broken-bone.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">뼈</div>
				</div> 
				
				<div onclick="selectCartegory(6);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/eye.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">눈</div>
				</div>
			</nav>
		</div>

		<div class="container row mx-auto" id="productListDiv" style="max-width: 1600px;">
			<c:forEach items="${productList}" var="p" varStatus="st">
			<div class="card-deck bestProduct col-4 mx-auto ${ p.pcName }">
				<div class="card border-secondary cardSetCss productDiv${p.pno}">
					<img src="${pageContext.request.contextPath }/resources/images/${p.pname}.jpg" class="card-img-top bestProductImg" style="width : 100%;" alt="..." id="img${p.pno}">
					
					<div class="card-body cardText">
						<p><b id="name${p.pno}">[${p.pname}]</b></p>
						<p id="content${p.pno}">${p.pcontent}</p>
						<p><b id="price${p.pno}">${p.pprice}￦</b></p>
					</div>
					
					<div class="card-footer border-secondary">
						<div class="row bestProductFooterText">
							<div class="col-9" style="text-align: left;">
								<button type="button" onclick="addCart(${p.pno})" class="btn btn-light popover-dismiss" data-container="body"
									data-toggle="popover" data-placement="bottom" data-content="장바구니에 추가하였습니다." style="width: 250px;">ADD TO CART
								</button>
							</div>

							<div class="col-3" onclick="selectProduct(${p.pno})" id="selectProduct${p.pno}" class="test${p.pno}">
								<small class="text-muted"> 
									<i class="fas fa-search fa-3x"></i>
								</small>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			</c:forEach><br />
		</div><br />
		<c:out value="${pageBar}" escapeXml="false" />
		
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
                유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;노다비&nbsp;곽민지<br>
                <a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a href="privacy.html">개인정보취급방침</a>
              </p>
              <!-- 주소 및 이메일 -->
              <div class="list-icon">
                <div>&nbsp;<i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;서울특별시 강남구 테헤란로14길 6 남도빌딩</div>

                <div><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;let_eat_vi @ gmail.com</div>
                <p class="bottom"><span>KH정보교육원</span> Made by 영양실조 <i class="fa fa-copyright" aria-hidden="true"></i> 2021</p>
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>

    <!-- 맨 위로 스크롤 버튼 -->
    <a href="#" class="scroll" style="position:fixed; bottom: 30px; right: 30px;"><img src="${pageContext.request.contextPath}/resources/images/up.png" alt="Top" width="30px" height="30px"></a>
    <a href="" style="position: fixed; bottom: 180px; right: 26px;"><img src="${pageContext.request.contextPath}/resources/images/kakao.png" style="width: 40px;"></a>
    <a href="" style="position: fixed; bottom: 124px; right: 29px;"><img src="${pageContext.request.contextPath}/resources/images/store.png" style="width: 35px;"></a>
    <a href="" style="position: fixed; bottom: 72px; right: 31px;"><img src="${pageContext.request.contextPath}/resources/images/shopping-cart.png" style="width: 35px;"></a>
  </footer>

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
				$.ajax({
			           url  : "${pageContext.request.contextPath}/store/selectCategory.do",
			           data : { cno },
			           type : "get",
			           success : function(result){
			        	   $('#productListDiv').empty();
			                
			                for(var i = 0 ; i < result.length; i++){
			                	var productOne = '<div class="card-deck bestProduct col-4 mx-auto ' + result[i].pcName + '">'
			                				+'<div class="card border-secondary cardSetCss productDiv' + result[i].pno + '">'
			                    		    +'<img src="${pageContext.request.contextPath }/resources/images/' + result[i].pname
			                    		    + '.jpg" class="card-img-top bestProductImg" style="width : 100%;" id="img' + result[i].pno + '">'
			                    		    + '<div class="card-body cardText"><p><b id="name' + result[i].pno + '">[' + result[i].pname + ']</b></p>'
											+ '<p id="content' + result[i].pno + '">' + result[i].pcontent + '</p>'
											+ '<p><b id="price' + result[i].pno + '">' +  result[i].pprice + '￦</b></p>'
									    	+ '</div>'
									    	+ '<div class="card-footer border-secondary">'
											+ '<div class="row bestProductFooterText">'
											+ '<div class="col-9" style="text-align: left;"> '
											+ '<button type="button" onclick="addCart(' +result[i].pno +')" class="btn btn-light popover-dismiss" data-container="body'
											+ 'data-toggle="popover" data-placement="bottom" data-content="장바구니에 추가하였습니다." style="width: 250px;">ADD TO CART'
											+ '</button>'
											+ '</div>'
											+ '<div class="col-3" onclick="selectProduct(' +result[i].pno + ')" id="selectProduct' +result[i].pno + '" class="test' +result[i].pno + '">'
											+ '<small class="text-muted">'
											+ '<i class="fas fa-search fa-3x"></i>'
											+ '</small>'
											+ '</div>'
											+ '</div>'
											+ '</div>'
											+ '</div>'
											+ '</div>';
											+ '<br>';
			                     $('#productListDiv').append(productOne);
			                }
			            }
		        	}); 
			}
		</script>
		
		<script>
			function selectProduct(value){
				console.log("onclick pno 값: " + value);
			}
		</script>
		
	</section>

	<br><br><br><br><br><br><br><br><br><br>
</body>

</html>