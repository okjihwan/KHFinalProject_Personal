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
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/test.css" />

    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
    <div class="img">
        <div class="content">
            <p class="headFirstContent">건강한 삶을 찾아 떠나는 당신</p>
            <p class="headSecondContent">[홈페이지 이름]으로 오세요</p>
        </div>
        <div class="img-cover"></div>
    </div>

    <div class="blankArea"></div>

    <section>
        <div class="container" style="margin-top: 120px; margin-bottom: 100px;">
            <div class="row category">
                <div class="col-sm categoryblank">
                    <a href="">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/all-inclusive.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            All
                        </div>
                    </a>
                </div>
                <div class="col-sm categoryblank">
                    <a href="">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/all-inclusive.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            활력 & 피로
                        </div>
                    </a>
                </div>
                <div class="col-sm categoryblank">
                    <a href="">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/all-inclusive.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            피부 & 모발
                        </div>
                    </a>
                </div>
                <div class="col-sm categoryblank">
                    <a href="" class="categoryMenu">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/all-inclusive.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            면연력
                        </div>
                    </a>
                </div>
                <div class="col-sm categoryblank">
                    <a href="">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/liver.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            장 & 간
                        </div>
                    </a>
                </div>
                <div class="col-sm categoryblank">
                    <a href="">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/broken-bone.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            뼈
                        </div>
                    </a>
                </div>
                <div class="col-sm categoryblank">
                    <a href="">
                        <div class="categoryMenu">
                            <img src="${pageContext.request.contextPath }/resources/images/eye.png" alt="" style="width: 50px; height: 50px;">
                        </div>
                        <div class="categoryText">
                            눈
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="firstText">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                            aria-controls="home" aria-selected="true">추천순</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                            aria-controls="profile" aria-selected="false">판매순</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                            aria-controls="contact" aria-selected="false">인기순</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                            aria-controls="contact" aria-selected="false">낮은 가격순</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                            aria-controls="contact" aria-selected="false">높은 가격순</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                            aria-controls="contact" aria-selected="false">평점순</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <!-- <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"></div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div> -->
                </div>
            </div>

			<c:forEach items="${allProduct}" var="p">
				<td>${p.pno}</td>
				<td>${p.pcName}</td>
				<td>${p.pName}</td>
				<td>${p.pPrice}</td>
				<td>${p.pContent}</td>
			</c:forEach>

			<div class="card-deck bestProduct">
            
                <div class="card border-secondary cardSetCss">
                    <div class="card-header bg-transparent border-secondary cardHeadText">TruVitamin</div>
                    <img src="${pageContext.request.contextPath }/resources/images/비타민2.jpg" class="card-img-top bestProductImg" alt="...">
                    <div class="card-body">
                        <p><b>[BEST]</b></p>
                        <p>늙고 병든 당신을 위한 비타민 <br>건강 챙기셔야죠?</p>
                        <p><b>78,000￦</b></p>
                    </div>
                    <div class="card-footer border-secondary">
                        <div class="row bestProductFooterText">
                            <div class="col-6" style="text-align: left;">
                                <button type="button" class="btn btn-light popover-dismiss" data-container="body"
                                    data-toggle="popover" data-placement="bottom" data-content="장바구니에 추가하였습니다.">
                                    ADD TO CART
                                </button>
                            </div>
                            <div class="col-3 choiceProduct1">
                            	<small class="text-muted">
                            		<i class="far fa-heart fa-3x"></i>
                            	</small>
                            </div>
                            <div class="col-3" onclick="location.href='${pageContext.request.contextPath}/store/selectProduct.do'">
                            	<small class="text-muted">
                            		<i class="fas fa-search fa-3x"></i>
                            	</small>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="card border-secondary cardSetCss">
                    <div class="card-header bg-transparent border-secondary cardHeadText">Sleep-inducing vitamin</div>
                    <img src="${pageContext.request.contextPath }/resources/images/비타민3.jpg" class="card-img-top bestProductImg" alt="...">
                    <div class="card-body">
                        <p><b>[BEST]</b></p>
                        <p>잠 못드는 당신에게 필요한 비타민</p>
                        <p><b>29,000￦</b></p>
                    </div>
                    <div class="card-footer border-secondary">
                        <div class="row bestProductFooterText">
                            <div class="col-6" style="text-align: left;"><button type="button" class="btn btn-light">ADD TO CART</button></div>
                            <div class="col-3 choiceProduct2"><small class="text-muted"><i
                                        class="far fa-heart fa-3x"></i></small>
                            </div>
                            <div class="col-3"><small class="text-muted"><a href=""><i
                                            class="fas fa-search fa-3x"></i></a></small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card border-secondary cardSetCss">
                    <div class="card-header bg-transparent border-secondary cardHeadText">Antioxidant</div>
                    <img src="${pageContext.request.contextPath }/resources/images/비타민4.jpg" class="card-img-top bestProductImg" alt="...">
                    <div class="card-body">
                        <p><b>[BEST]</b></p>
                        <p>늙어보여서 고민이시라구요? <br>당장 구매하세요</p>
                        <p><b>108,000￦</b></p>
                    </div>
                    <div class="card-footer border-secondary">
                        <div class="row bestProductFooterText">
                            <div class="col-6" style="text-align: left;"><button type="button" class="btn btn-light">ADD
                                    TO
                                    CART</button></div>
                            <div class="col-3 choiceProduct3"><small class="text-muted"><i
                                        class="far fa-heart fa-3x"></i></small>
                            </div>
                            <div class="col-3"><small class="text-muted"><a href="${pageContext.request.contextPath}/store/selectProduct.do"><i
                                            class="fas fa-search fa-3x"></i></a></small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(".choiceProduct1").on("click", function () {
                console.log($(".choiceProduct1 i").css("color"));
                // $(".choiceProduct1 i").css("color", "red");
                $(".choiceProduct1 i").toggleClass("select");
            });
            $(".choiceProduct2").on("click", function () {
                // $(".choiceProduct2 i").css("color", "red");
                $(".choiceProduct2 i").toggleClass("select");
            });
            $(".choiceProduct3").on("click", function () {
                // $(".choiceProduct3 i").css("color", "red");
                $(".choiceProduct3 i").toggleClass("select");
            });

            $('.popover-dismiss').popover({
                trigger: 'focus'
            })
        </script>

    </section>

    <br><br><br><br><br><br><br><br><br><br>
</body>

</html>