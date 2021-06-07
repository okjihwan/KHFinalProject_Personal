<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/productChoice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-x.y.z.js"></script>

    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
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
            <li><a href="" class="menu-content">${member.userId}님 환영합니다</a></li>
          </ul>
        </nav>
    </header>

    <section>
        <div class="container" style="min-width: 1500px;">
            <div class="row firstRow">
                <div class="col">
                    <img src="${pageContext.request.contextPath}/resources/images/${selectProduct.pname}.jpg" class="img-fluid selectProduct" style="width: 800px; height: 700px;">
                </div>
                <div class="col">
                    <div class="card border-secondary mb-3" style="max-width: 100%;">
                        <div class="card-header cardHaederText" id="pname">${selectProduct.pname}</div>
                        <div class="card-body text-dark">
                            <div class="row">
                                <div class="col-2 card-text">판매가</div>
                                <div class="col-10 card-text" id="price">${selectProduct.pprice}￦</div>
                            </div> <br>
                            
                            <div class="row">
                                <div class="col-2 card-text">구매혜택</div>
                                <div class="col-10 card-text"><span class="badge badge-pill badge-primary">M</span> 마일리지 적립</div>
                            </div> <br>
                            
                            <div class="row">
                                <div class="col-2 card-text">배송비</div>
                                <div class="col-10 card-text">5만원 이상 구매시 무료</div>
                            </div> <br>
                            
                            <div class="row">
                                <div class="col-2 card-text">수량</div>
                                <div class="col-10">
                                    <select class="custom-select" name="quantity" id="quan">
                                        <option selected>수량을 정해주세요</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                            </div> <br>
                            
                            <div class="row">
                                <div class="col-2 card-text" style="color: blue;">가격</div>
                                <div class="col-10 card-text" id="priceArea" style="color: blue;"></div>
                            </div> <br>
                            
                            <div class="row">
                                <div class="col-2 card-text" >적립금</div>
                                <div class="col-10 card-text" id="ReservesArea"></div>
                            </div> <br /><br />
                            
                            
                            <div class="row">
                                <div class="col-3 card-text"><button type="button" class="btn btn-secondary btn-lg" id=addChart onclick="test();"
                                        style="width:100%">장바구니</button></div>
                                <div class="col-3 card-text"><button type="button" class="btn btn-secondary btn-lg" id=addMypage
                                        style="width:100%">찜하기</button></div>
                                <div class="col-6 card-text"><button type="button" class="btn btn-dark btn-lg" onclick="goPayment();"
                                        style="width:100%">바로구매</button></div>
                            </div> <br>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="visibility: hidden;" id="errorModal">
                Launch demo modal
            </button>
            
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">오류 발생</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" id="errorText">
                            ...
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row secondRow">
                <div class="col">제품 설명 <br><br>
                    <div class="card border-dark mb-3">
                        <div class="card-header">Detail Content</div>
                        <div class="card-body text-dark">
                            <p class="card-text"><img src="${pageContext.request.contextPath}/resources/images/상세비타민2.jpg" alt="" style="width:80%"></p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <br><br><br><br><br><br><br><br><br><br>

        <script>
            $(document).ready(function () {
                var check_sel = $("select[name=quantity]>option");
            });

            $("[name=quantity]").on("click", function () {
                var check_sel = $("select[name=quantity]>option");
                for (var i = 1; i < check_sel.length; i++) {
                    if (check_sel[i].selected == true) {
                        $("#priceArea").text((check_sel[i].value * ${selectProduct.pprice}) + "￦");
                        $("#ReservesArea").text((check_sel[i].value * ${selectProduct.pprice} * 0.01) + "원 (1%)");
                    }
                }
            });
            
            function goPayment(){
            	var qno = $("select[name=quantity]").val();
            	console.log(qno);
            	location.href="${pageContext.request.contextPath}/store/goPayment.do?pno=${pno}&qno="+qno
            }
        </script>

    </section>
</body>

</html>