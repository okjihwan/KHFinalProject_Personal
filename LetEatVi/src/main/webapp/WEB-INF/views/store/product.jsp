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

    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>

<body>
    <header>
        <!-- Nav container -->
        <nav class="navbar">
            <!-- Logo with text -->
            <div class="navbar__logo">
                <i class="fas fa-route"></i>
                <a href="">페이지 제목</a>
            </div>
            <!-- Menu -->
            <ul class="navbar__menu">
                <li><a href="">Home</a></li>
                <li><a href="">메뉴1</a></li>
                <li><a href="">메뉴2</a></li>
                <li><a href="">메뉴3</a></li>
                <li><a href="">메뉴4</a></li>
            </ul>
            <!-- Icons -->
            <ul class="navbar__icons">

            </ul>
            <!-- Toggle button -->
            <a href="#" class="navbar__toggleBtn">
                <i class="fas fa-bars"></i>
            </a>
        </nav>
    </header>

    <section>
        <div class="container" style="min-width: 1500px;">
            <div class="row firstRow">
                <div class="col">
                    <img src="${pageContext.request.contextPath}/resources/images/비타민2.jpg" class="img-fluid selectProduct" alt="...">
                </div>
                <div class="col">
                    <div class="card border-primary mb-3" style="max-width: 100%;">
                        <div class="card-header cardHaederText" id="pname">TruVitamin</div>
                        <div class="card-body text-dark">
                            <div class="row">
                                <div class="col-2 card-text">판매가</div>
                                <div class="col-10 card-text" id="price">78000</div>
                            </div> <br>
                            <div class="row">
                                <div class="col-2 card-text">구매혜택</div>
                                <div class="col-10 card-text"><span class="badge badge-pill badge-primary">M</span> 마일리지
                                    적립</div>
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
                                <div class="col-2 card-text">가격</div>
                                <div class="col-10 card-text" id="priceArea">수량에 따른 가격 계산</div>
                            </div> <br><br>
                            <div class="row">
                                <div class="col-3 card-text"><button type="button" class="btn btn-secondary btn-lg"
                                        style="width:100%">장바구니</button></div>
                                <div class="col-3 card-text"><button type="button" class="btn btn-secondary btn-lg"
                                        style="width:100%">찜하기</button></div>
                                <div class="col-6 card-text"><button type="button" class="btn btn-dark btn-lg" id="payBtn"
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
                <div class="col">
                    제품 설명 <br><br>
                    <div class="card border-dark mb-3">
                        <div class="card-header">Detail Content</div>
                        <div class="card-body text-dark">
                            <p class="card-text"><img src="${pageContext.request.contextPath}/resources/images/상세비타민2.jpg" alt="" style="width:80%"></p>
                            <br><br><br><br><br><br><br><br><br><br>
                        </div>
                    </div>
                </div>
            </div>

            <br><br><br><br><br><br><br><br><br><br>

            <div class="row secondRow">
                <div class="col">
                    REVIEW
                </div>
            </div>
        </div>

        <br><br><br><br><br><br><br><br><br><br>

        <script>
            $(document).ready(function () {
                var check_sel = $("select[name=quantity]>option");

                $("[name=quantity]").on("click", function () {
                    var x = $("#price").val();
                    console.log(x);
                    for (var i = 1; i < check_sel.length; i++) {
                        if (check_sel[i].selected == true) {
                            $("#priceArea").text((check_sel[i].value * 78000) + "￦");
                        }
                    }
                });
            });
        </script>

		<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		
		<script>
			var IMP = window.IMP; // 생략가능
			
			$(function() {
			    IMP.init('imp77211071');
			}); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			
			$('#payBtn').on('click', function(){ 
			        IMP.request_pay({
			            pg : 'kakao',
			            pay_method : 'card',
			            merchant_uid : 'merchant_' + new Date().getTime(),
			            // 제품명
			            name : $('#pname').text(),
			            //
			            amount : parseInt($('#price').text()) * $('#quan').val(),
			            // 여기는 데이터베이스에 등록된 회원의 정보 가져와서 넣을 것
			            buyer_email : 'test@example.com',
			            buyer_name : '홍길동',
			            buyer_tel : '010-1111-2222',
			            buyer_addr : '서울시 강남구 역삼동',
			            buyer_postcode : '01234'
			        }, function(rsp) {
			            if (rsp.success) {
			                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
			                $.ajax({
			                    url : "/test/orderconfirm.do", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
			                    type : 'POST',
			                    dataType : 'json',
			                    data : {
			                        item : 'toy',
			                        code : 'P0001',
			                        quan : $('#quan').val(),
			                        imp_uid : rsp.imp_uid,
			                        pay_method : rsp.pay_method,
			                        price : rsp.paid_amount,
			                        status : rsp.status,
			                        title : rsp.name,
			                        pg_tid : rsp.pg_tid,
			                        buyer_name : rsp.buyer_name,
			                        paid_at : rsp.paid_at,
			                        receipt_url : rsp.receipt_url
			                    //기타 필요한 데이터가 있으면 추가 전달
			                    }
			                });
			                location.href="/test/views/iamport/orderConfirm.jsp?item=toy&pay_method="+rsp.pay_method
			                        +"&quan=" + $('#quan').val() + "&nick="+rsp.buyer_name + "&price="+ $('#price').text()
			                        +"&date="+rsp.paid_at+"&price="+rsp.paid_amount;
			            } else {
			                var msg = '결제에 실패하였습니다. <br>';
			                msg += '에러내용 : ' + rsp.error_msg;
			                $("#errorText").html(msg);
			                $("#errorModal").trigger("click");
			            }
			        });
			});
		</script>
    </section>
</body>

</html>