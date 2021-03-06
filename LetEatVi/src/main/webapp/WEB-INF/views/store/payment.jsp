<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />

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
    .buyProductText{ font-weight: bold; font-size: 20px; }
  </style>
</head>
<body>
    <header>
        <!-- Nav container -->
        <nav class="navbar" style="background: white; opacity: 1; box-shadow: rgba(0, 0, 0, 0.14) 0px 0px 6px 0px;">
          <!-- ??????, ????????? -->
          <div class="navbar__logo">
            <a href="" class="menu-content"><img src="${pageContext.request.contextPath}/resources/images/LetEatVi_logo.jpg" style="width: 160px;"></a>
          </div>
    
          <!-- ????????? -->
          <div class="search-wrapper">
            <div class="input-holder">
              <input type="text" class="search-input">
              <button class="search-icon" onclick="searchToggle(this, event);"><span id="conan"></span></button>
            </div>
            <span class="close" id="close" style="visibility: hidden;" onclick="searchToggle(this, event);"></span>
          </div>
    
          <!-- ?????? -->
          <ul class="navbar__menu">
            <li><a href="" class="menu-content">?????????</a></li>
            <li><a href="" class="menu-content">?????????</a></li>
            <li><a href="" class="menu-content">?????????</a></li>
            <li><a href="" class="menu-content">?????????</a></li>
            <li><a href="" class="menu-content">????????????</a></li>
          </ul>
        </nav>
    </header>

    <div class="container-fluid" style="margin-top: 150px;">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-1" style="font-weight: bold; font-size: 24px;">
                ?????? / ??????
            </div>
            <div class="col-8"></div>
            <div class="col-2" style="font-weight: bold; font-size: 24px;">
                ?????? ?????? ???...
            </div>
        </div>

        <hr style="border: 2px solid gray; margin: 50px 0px;">

        <div class="row" style="margin: 100px 0px;">
            <div class="col-2"></div>
            <div class="col-2 buyProductText"></div>
            <div class="col-2 buyProductText">
                ?????? ??????
            </div>
            <div class="col-2 buyProductText">
                ??????
            </div>
            <div class="col-2 buyProductText">
                ?????????
            </div>
            <div class="col-2 buyProductText">
                ????????????
            </div>
            <div class="col-1"></div>
        </div>

        <div class="row">
            <div class="col-1"></div>
            <div class="col-2">
                <img src="${pageContext.request.contextPath}/resources/images/${selectProduct.pname}.jpg" alt="" style="width: 100%; height: 200px;">
            </div>
            <div class="col-1"></div>
            <div class="col-2" style="margin-top: 85px;">${selectProduct.pcontent}</div>
            <div class="col-2" style="margin-top: 85px;">
                <img src="${pageContext.request.contextPath}/resources/images/minus.png" style="width: 20px;" id="minusQuantity"> 
                &nbsp;<span id="quantity"> ${qno} </span>&nbsp;
                <img src="${pageContext.request.contextPath}/resources/images/add.png" style="width: 20px;" id="addQuantity">
            </div>
            <div class="col-2" style="margin-top: 85px;">${selectProduct.pprice}</div>
            <div class="col-2" id="finalPrice" style="margin-top: 85px;">${selectProduct.pprice}</div>
        </div>  <br>
        
        <%-- 
        <div class="row">
            <div class="col-1"></div>
            <div class="col-2">
                <img src="${pageContext.request.contextPath}/resources/images/?????????3.jpg" alt="" style="width: 100%; height: 200px;">
            </div>
            <div class="col-1"></div>
            <div class="col-2" style="margin-top: 85px;">?????? ??????</div>
            <div class="col-2" style="margin-top: 85px;">
                <img src="${pageContext.request.contextPath}/resources/images/minus.png" style="width: 20px;"> &nbsp;
                1 &nbsp;
                <img src="${pageContext.request.contextPath}/resources/images/add.png" style="width: 20px;">
            </div>
            <div class="col-2" style="margin-top: 85px;">15000???</div>
            <div class="col-2" style="margin-top: 85px;">15000???</div>
        </div> --%>

        <hr style="border: 2px solid gray; margin: 100px 0px;">

        <div class="row">
            <div class="col-2"></div>

            <div class="col-8" style="border: 1px solid lightgray;"><br>
            
			<form method="post" action="${pageContext.request.contextPath}/store/checkPayment.do">                
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-4 card-text" style="font-size: 22px; font-weight: bold;">????????? ??????</div>
                </div> <br>

                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">??????</div>
                    <div class="col-7 card-text" ><input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1"></div>
                </div> <br>
                
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">?????????</div>
                    <div class="col-7 card-text" ><input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1"></div>
                </div> <br>
                
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">?????????</div>
                    <div class="col-7 card-text" ><input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1"></div>
                </div> <br><br>
            </div>

        </div> <br>

        <div class="row">
            <div class="col-2"></div>

            <div class="col-8" style="border: 1px solid lightgray;">
                <br>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-4 card-text" style="font-size: 22px; font-weight: bold;">????????? ??????</div>
                </div> <br>

                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">?????????</div>
                    <div class="col-7 card-text" ><input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1"></div>
                </div> <br>
        
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">?????????</div>
                    <div class="col-7 card-text" ><input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1"></div>
                </div> <br>
                
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">?????????</div>
                    <div class="col-7 card-text" ><input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1"></div>
                </div> <br>

                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-3 card-text" style="margin-top: 8px;">????????????</div>
                    <div class="col-7 card-text" ><div class="input-group">
                        <textarea class="form-control" aria-label="With textarea"></textarea>
                      </div></div>
                </div> <br><br>
            </div>

            <div class="col-2"></div>

        </div> <br>

        <div class="row" style="text-align: center;">
            <div class="col-2"></div>

            <div class="col-8" style="border: 1px solid lightgray;"> <br>

                <div class="row">
                    <div class="col-2 card-text" style="font-size: 22px; font-weight: bold;">?????? ??????</div>
                </div> <br><br>

                <div class="row">
                    <div class="col-2 buyProductText">
                        ?????? ??????
                    </div>

                    <div class="col-1"></div>

                    <div class="col-2 buyProductText">
                        ?????????
                    </div>
                    
                    <div class="col-1"></div>

                    <div class="col-2 buyProductText">
                        ?????? ??????
                    </div>

                    <div class="col-1"></div>

                    <div class="col-2 buyProductText">
                        ?????? ??????
                    </div>
                </div>  <br><br>

                <div class="row">
                    <div class="col-2 buyProductText">
                        42000
                    </div>

                    <div class="col-1">
                        <img src="${pageContext.request.contextPath}/resources/images/add.png" style="width: 30px;">
                    </div>

                    <div class="col-2 buyProductText">
                        ??????
                    </div>
                    
                    <div class="col-1">
                        <img src="${pageContext.request.contextPath}/resources/images/minus.png" style="width: 30px;">
                    </div>

                    <div class="col-2 buyProductText">
                        0
                    </div>

                    <div class="col-1">
                    	<img src="${pageContext.request.contextPath}/resources/images/equal.png" style="width: 30px;">
                    </div>

                    <div class="col-2 buyTotalProductText">
                        42000
                    </div>
                </div> <br><br>
			</form>                

                <div class="row">
                    <div class="col-2 card-text" style="margin-top: 8px;">??????</div>
                    <div class="col-9">
                        <select class="custom-select" name="cupon" id="cupon">
                            <option selected>????????? ??????????????????</option>
                            <option value="1">????????? ????????????</option>
                            <option value="2">????????? ?????? ??????</option>
                            <option value="2">???????????? ??????</option>
                        </select>
                    </div>
                </div> <br><br>

                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-5 card-text"><button type="button" class="btn btn-dark btn-lg" id="payBtnCancle"
                            style="width:100%">????????????</button></div>
                    <div class="col-5 card-text"><button type="button" class="btn btn-dark btn-lg" id="payBtn"
                            style="width:100%">????????????</button></div>
                    <div class="col-1"></div>
                </div> <br><br>

            </div>
        </div> <br>       
    </div>

    <br><br><br><br><br>
    
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		
		<script>
			var IMP = window.IMP; // ????????????
			
			$(function() {
			    IMP.init('imp77211071');
			}); // 'iamport' ?????? ???????????? "????????? ????????????"??? ??????
			
			$('#payBtn').on('click', function(){ 
				console.log("?????? ??????");
			        IMP.request_pay({
			        	// ?????? ??????
			            merchant_uid : 'merchant_' + new Date().getTime(),
			            amount : parseInt($('#price').text()) * $('#quan').val(),
			            buyer_tel : '${member.phone}',

			            // ?????? ??????
			            
			        }, function(rsp) {
			            if (rsp.success) {
			                //[1] ??????????????? ???????????? ????????? ?????? jQuery ajax??? imp_uid ????????????
			                $.ajax({
			                    url : "/test/orderconfirm.do", //cross-domain error??? ???????????? ????????? ????????? ??????????????? ??????
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
			                    //?????? ????????? ???????????? ????????? ?????? ??????
			                    }
			                });
			                location.href="/test/views/iamport/orderConfirm.jsp?item=toy&pay_method="+rsp.pay_method
			                        +"&quan=" + $('#quan').val() + "&nick="+rsp.buyer_name + "&price="+ $('#price').text()
			                        +"&date="+rsp.paid_at+"&price="+rsp.paid_amount;
			            } else {
			                var msg = '????????? ?????????????????????. <br>';
			                msg += '???????????? : ' + rsp.error_msg;
			                $("#errorText").html(msg);
			                $("#errorModal").trigger("click");
			            }
			        });
			});
		</script>
		
		<script>
			$("#minusQuantity").on("click", function () {
				
  				if($("#quantity").text() > 1){
					$("#quantity").text($("#quantity").text() - 1);
					$("#finalPrice").text($("#quantity").text() * ${selectProduct.pprice} + "???");
				}  
			});
			
			$("#addQuantity").on("click", function () {
				console.log($("#quantity").text() + 1);
				
				$("#quantity").text(parseInt($("#quantity").text()) + 1);
				$("#finalPrice").text($("#quantity").text() * ${selectProduct.pprice} + "???"); 
			});
		</script>
		
		<script>
			 $(document).ready(function () {
				 $("#finalPrice").text((${qno} * ${selectProduct.pprice}) + "???");
				 $("#buyTotalProductText").text((${qno} * ${selectProduct.pprice}) + "???");
	         });
		</script>
		
</body>
</html>