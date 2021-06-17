<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store</title>
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
	href="${pageContext.request.contextPath}/resources/css/payment.css" />

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

.buyProductText {
	font-weight: bold;
	font-size: 20px;
}
@font-face {
    font-family: 'Eulyoo1945-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2102-01@1.0/Eulyoo1945-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
	font-family: 'IBMPlexSansKR-Regular'; src :
	url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
	format( 'woff');
	font-weight: normal;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>

	<div class="top-img">
		<div class="main-title">
			<h1>
				내 몸에 필요한 영양제 <br> 궁금하세요?
			</h1>
		</div>
	</div>

	<div class="container-fluid" style="margin-top: 50px;">
		<div class="card-header payment_title"
		style="background-color: rgba(0, 0, 0, 0); padding-bottom: 20px;">주문 / 결제</div>
		<div class="row" style="margin-top: 10px;">
			<div class="col-2"></div>
			<div class="col-2 buyProductText"></div>
			<div class="col-2 buyProductText">상품 정보</div>
			<div class="col-2 buyProductText">수량</div>
			<div class="col-2 buyProductText">판매가</div>
			<div class="col-2 buyProductText">최종금액</div>
			<div class="col-1"></div>
		</div>

		<c:forEach items="${cartList}" var="c" varStatus="st">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-2">
				<img class="pay_product_img" style="margin-left: 60px;"
					src="${pageContext.request.contextPath}/resources/images/${c.pname}.jpg">
			</div>
			<div class="col-1"></div>
			<div class="col-2" style="margin-top: 85px;">${c.pcontent}</div>
			<div class="col-2" style="margin-top: 85px;">
				<img
					src="${pageContext.request.contextPath}/resources/images/minus.png"
					style="width: 20px;" id="minusQuantity"> &nbsp;<span
					id="quantity"> ${c.cquantity} </span>&nbsp; <img
					src="${pageContext.request.contextPath}/resources/images/add.png"
					style="width: 20px;" id="addQuantity">
			</div>
			<div class="col-2" style="margin-top: 85px;">${c.pprice}</div>
			<div class="col-2" id="finalPrice" style="margin-top: 85px;">${c.pprice}</div>
		</div>
		<br>
		</c:forEach>

		<hr style="border: 2px solid gray; margin: 100px 0px;">

		<form method="post" action="insertPaymentInfo.do" id="insertFrm">
			<div class="row">
				<div class="col-2"></div>

				<div class="col-8" style="border: 1px solid lightgray;">
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3">
							<button type="button" class="btn btn-dark btn-lg"
								onclick="equalMemberinfo();">회원 정보와 동일</button>
						</div>
					</div>
					<br> <br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-4 card-text"
							style="font-size: 22px; font-weight: bold;">주문자 정보</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">이름</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="orderPerson" id="orderPerson" placeholder="주문인" aria-label="Username" aria-describedby="basic-addon1" value="">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">이메일</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="orderEmail" id="orderEmail" placeholder="이메일" aria-label="Username" aria-describedby="basic-addon1" value="">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">연락처</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="orderPhone"	id="orderPhone" placeholder="연락처" aria-label="Username" aria-describedby="basic-addon1" value="">
						</div>
					</div>
					<br>

				</div>

			</div>
			<br>

			<div class="row">
				<div class="col-2"></div>

				<div class="col-8" style="border: 1px solid lightgray;">
					<br>
					<div class="row">
						<div class="col-1"></div>
						<div class="col-4 card-text"
							style="font-size: 22px; font-weight: bold;">배송지 정보</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">수령인</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="receiptPerson" id="receiptPerson" placeholder="수령인" aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">연락처</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="receiptPhone" id="receiptPhone" placeholder="연락처" aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">배송지</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="receiptAddress" id="receiptAddress" placeholder="배송지" aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;"
							id="pleaseRequest">요청사항</div>
						<div class="col-7 card-text">
							<div class="input-group">
								<textarea class="form-control" name="pleaseRequest" aria-label="With textarea"></textarea>
							</div>
						</div>
					</div>
					<br> <br>
				</div>

				<div class="col-2"></div>

			</div>
			<br>

			<div class="row" style="text-align: center;">
				<div class="col-2"></div>

				<div class="col-8" style="border: 1px solid lightgray;">
					<br>

					<div class="row">
						<div class="col-2 card-text"
							style="font-size: 22px; font-weight: bold;">주문 상품</div>
					</div>
					<br> <br>

					<div class="row">
						<div class="col-2 buyProductText">상품 금액</div>

						<div class="col-1"></div>

						<div class="col-2 buyProductText">배송비</div>

						<div class="col-1"></div>

						<div class="col-2 buyProductText">할인 금액</div>

						<div class="col-1"></div>

						<div class="col-2 buyProductText">결제 금액</div>
					</div>
					<br> <br>

					<div class="row">
						<div class="col-2 buySumProductPrice">100</div>

						<div class="col-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/add.png"
								style="width: 30px;">
						</div>

						<div class="col-2 buyProductText">무료</div>

						<div class="col-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/minus.png"
								style="width: 30px;">
						</div>

						<div class="col-2 buyProductText">0</div>

						<div class="col-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/equal.png"
								style="width: 30px;">
						</div>

						<div class="col-2 buyTotalProductPrice">100</div>
					</div>
					<br> <br>


					<div class="row">
						<div class="col-2 card-text" style="margin-top: 8px;">쿠폰</div>
						<div class="col-9">
							<select class="custom-select" name="cupon" id="cupon">
								<option selected>쿠폰을 선택해주세요</option>
								<option value="1">데이터 베이스에</option>
								<option value="2">등록된 쿠폰 항목</option>
								<option value="2">가져와서 등록</option>
							</select>
						</div>
					</div>
					<br> <br>
					
					<input type="hidden" name="orderId" id="setOrderId"/>
					<input type="hidden" name="paidAmount" id="setPaidAmout"/>
					<input type="hidden" name="pno" id="pno"/>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-5 card-text">
							<button type="button" class="btn btn-dark btn-lg" id="payBtnCancle" style="width: 100%">주문취소</button>
						</div>
						<div class="col-5 card-text">
							<button type="button" class="btn btn-dark btn-lg" id="payBtn"
								style="width: 100%">주문하기</button>
						</div>
						<div class="col-1"></div>
					</div>
					<br> <br>
				</div>
			</div>
			<br>
		</form>
	</div>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary paySuccess" data-toggle="modal" data-target="#exampleModal" style="display:none">
	  Launch demo modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" style="margin-top: 150px;">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	       	결제가 완료되었습니다.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary">Save changes</button>
	      </div>
	    </div>
	  </div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>

	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<script>
			var IMP = window.IMP;
			
			$(function() {
			    IMP.init('imp77211071');
			}); 
			
			$('#payBtn').on('click', function(){ 
				
/* 				$("#setOrderId").text(orderId);
                $("#setPaidAmout").text(paidAmount);
                $("#pno").text(${selectProduct.pno});
                
                console.log(orderId);
                console.log(paidAmount);
                console.log(${selectProduct.pno});  */
                
				console.log("결제 진행");
			        IMP.request_pay({
			        	// 필수 항목
			            merchant_uid : 'merchant_' + new Date().getTime(),
			            amount : parseInt($('.buyTotalProductPrice').text()),
			            buyer_tel : '${member.phone}',
			            
			            // 추가 항목
			            name : '${selectProduct.pname}'
			        }, function(rsp) {
			            if (rsp.success) {
			            	
			            	var msg = '결제가 완료되었습니다.';
			                msg += '고유ID : ' + rsp.imp_uid;
			                msg += '결제 금액 : ' + rsp.paid_amount;
			                
			                var orderId = rsp.imp_uid; 
			                var paidAmount = rsp.paid_amount;
			                
			                console.log(orderId);
			                console.log(paidAmount);
			                
			                $("#setOrderId").text(roderId);
			                $("#setPaidAmout").text(paidAmount);
			                
			                $('#insertFrm').submit();
			                
			                 $.ajax({
			                    url : "/store/insertPaymentInfo.do",
			                    type : 'POST',
			                    dataType : 'json',
			                    data : { }, 
			                    success : function(data){
					               // 결제 완료 페이지 연결
			                    	$(".paySuccess").on.trigger("click");
			                	}
			               }); 
			                    
			            } else {
			                var msg = '결제에 실패하였습니다. <br>';
			                msg += '에러내용 : ' + rsp.error_msg;
			                $("#errorText").html(rsp.error_msg);
			                $("#errorModal").trigger("click");
			            }
			            
			            alert(msg);
			        });
			});
		</script>

	<script>
			$("#minusQuantity").on("click", function () {
				
  				if($("#quantity").text() > 1){
					$("#quantity").text($("#quantity").text() - 1);
					$("#finalPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
					$(".buyTotalProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
					$(".buySumProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
				}  
			});
			
			$("#addQuantity").on("click", function () {
				
				$("#quantity").text(parseInt($("#quantity").text()) + 1);
				$("#finalPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
				$(".buyTotalProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
				$(".buySumProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
			});
		</script>
		
		<script>
			 $(document).ready(function () {
				 $("#finalPrice").text((${qno} * ${selectProduct.pprice}) + "￦");
				 $(".buyTotalProductPrice").text((${qno} * ${selectProduct.pprice}) + "￦");
				 $(".buySumProductPrice").text((${qno} * ${selectProduct.pprice}) + "￦");
	         });
		</script>
		
		<script>
			function equalMemberinfo(){
				console.log("${member.userName}");
				console.log("${member.email}");
				console.log("${member.phone}");
				
				$("#orderPerson").attr("value", "${member.userName}");
				$("#orderEmail").attr("value", "${member.email}");
				$("#orderPhone").attr("value", "${member.phone}");
			}
		</script>
	<%@include file="../common/footer.jsp"%>
</body>
</html>