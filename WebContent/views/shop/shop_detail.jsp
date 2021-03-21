<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resource/css/shop/search.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
var hasAccountId = ${not empty account_id};
$(document).ready(function(){

    /*
   	$("#addP").click(function(){
	location.href="${path}/pay.do?account_id="+"${account.account_id}";
	});
	$("#addC").click(function(){
		location.href="${path}/cart.do?account_id="+"${account.account_id}";
	});
	$("#addW").click(function(){
		location.href="${path}/wish.do?account_id="+"${account.account_id}";
	});
    
    $(":radio").val($("input:checked").val());
    $("input:radio").click(function(){
       $("#main_price").val("");
       if($(this).prop("checked")){
          $(":span").val($(this).val());
       }
    }); */  
   
    $("input:radio").change(function(){
       // 1. alert 확인
       //alert("changed");
       
       // 2. value 값 확인
       var price = $(this).val();
      // alert(price);
       
       // 3. value 값 치환
       $("#main_price_type").text(price + "원");

/* 	   var cnt = $("#cnt option:selected").val();	   
	   var tot = 0;
	   tot += price*cnt;
	   $("#tot").text(tot+"원"); */
    });  
    
    $("#cnt").change(function(){
        // 1. 수량 변경 시 alert 확인
        // alert("count changed");
        
        // 2. 변경된 수량 value 값 확인
        var count = $(this).val();
//        alert(count);
        
        // 3. 현재 price 값 확인
        var price = $("[name=capacity]").val();
 //       alert(price);
        
        // 4. 총계 갱신
        var tot = price * count;
        $("#tot").text(tot + "원");
     });
 
});
function submitCartForm(go){
	var form = document.querySelector("#form1");
	var product_id = ${prod.product_id};
	
	// # price 값 설정
	var price = $("[name=capacity]:checked").attr("data-id");
	$("[name=price]").val(price);
	
	if(go=='addC'){
		// # proc 값 지정
		$("[name=proc]").val("addC");
		proc = addC;
		if(!confirm('장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?')){
			return false;
		} else {			
			form.action="${path}/cart.do";
		}
	} else if (go == 'addP'){
		$("[name=proc]").val("addP");
		proc = addP;
		if(!confirm('장바구니의 상품과 함께 구매됩니다.\n구매하시겠습니까?')){
			return false;
		} else {
			form.action="${path}/pay.do";
		}
		
	} else if (go == 'addW'){
		$("[name=proc]").val("addW");
		proc = addW;
		if(!confirm('관심상품에 담았습니다.\n위시리스트로 이동하시겠습니까?')){
			return false;
		} else {
			form.action="${path}/wish.do";
		}
	}
	
	form.submit();
}
</script>
<style type="text/css">
.product-tit {margin:20px 0 0;}

.mall-tab {margin:50px 0 0;}
.mall-tab ul {margin:0; padding:0; list-style:none; *zoom:1;}
.mall-tab ul:after {content:""; display:block; visibility:hidden; clear:both;}
.mall-tab ul li {float:left; width:25%; border-bottom:1px solid #ddd;}
.mall-tab ul button {position:relative; display:block; width:100%; margin:0; padding:15px 0px; color:#666; font-family:"notokr"; font-size:16px; font-weight:500; letter-spacing:-0.06em; cursor:pointer; outline:0 none; border:0; background:#fff;}
.mall-tab ul .on button {color:#674f3e;}
.mall-tab ul .on button:after {content:""; display:block; position:absolute; left:0; bottom:-1px; width:100%; height:3px; background:#674f3e;}
.mall-tab#tab1 {margin-bottom:3px;}
.mall-tab#tab2 {margin:30px 0 5px;}

.tab {
   margin-inline-start: auto;
   margin-inline-end: auto;
   -webkit-border-horizontal-spacing: 0px;
   -webkit-border-vertical-spacing: 0px;
}

.tabstart {
   width: 100%;
   margin-inline-start: auto;
   margin-inline-end: auto;
   -webkit-border-horizontal-spacing: 0px;
   -webkit-border-vertical-spacing: 0px;
}
a:link{text-decoration: none; font-color:#000000;} /* 클릭하지 않았을 때 링크 상태 */
a:visited{text-decoration: none; color: #000000;} /* 한 번 클릭했거나 들어가보았던 링크 상태 */
a:active{text-decoration: none; color: #000000;} /* 링크 부분에서 마우스를 누르고 있는 상태 */
a:hover{text-decoration: none; color: #EDA900;} /* 링크를 클릭하려고 마우스를 가져갔을 때 상태 */
</style>
</head>
<body>

<div style="height:230px;"><jsp:include page="../common/header.jsp"/></div>
<table class="content-wrap">
   <tbody>
      <tr>
         <td class="content-wrap-left"><img src="${path}/resource/img/shop/blank.gif" width="120" height="1"></td>
         <td class="content-wrap-center">
            <table width="100%" align="center" cellspacing="0" cellpadding="0" class="back_table">
               <tbody>
                  <tr>
                     <td valign="top">
                        <!-- 상단 배너 -->
<%--                         <table width="100%" cellspacing="0" cellpadding="0" border="0">
                           <tbody>
                              <tr>
                                 <td height="23">
                                    &nbsp;
                                    <span class="font-size1">
                                    <img src="${path}/resource/img/shop/dot_01.gif"/>
                                    현재 위치: <a href="${path}/index.do">Home</a> > <a href="${path}/shop_main.do">싱글오리진 원두커피</a> > <a href="${path}/shop_category.do">아시아&태평양</a>
                                    </span>
                                 </td>
                              </tr>
                           </tbody>
                        </table> --%>
                        <br style="line-height:0px;">
                        <table width="100%" align="center" cellspacing="0" cellpadding="0">
                           <tbody>
                              <tr><td height="1" bgcolor="ddddddd"></td></tr>
                              <tr><td height="20"></td></tr>
                              <tr>
                                 <td valign="top">
                                    <table width="98%" align="center" cellspacing="0" cellpadding="0" border="0">
                                       <tbody>
                                          <tr>
                                             <td width="300" style="padding-top:5px;" valign="top">
                                                <!-- <table width="250" height="260" align="center" cellspacing="0" cellpadding="0" border="0">
                                                   <tbody>
                                                      <tr>
                                                         <td bgcolor="white" align="center" height="250"> -->
                                                            <br><br>
                                                            <img src="${path}/resource/img/shop/${prod.thumbnail}" width="250" height="250">
                                                         <!-- </td>
                                                      </tr>
                                                   </tbody>
                                                </table> -->
                                                <!-- table로 이미지 확대 넣을건지? -->
                                             </td>
                                             <td><img src="${path}/resource/img/shop/blank.gif" height="1"/></td>
                                             <td valign="top">
                                                <form name="form1" method="post" id="form1">
                                                	<input type="hidden" name="product_id" value="${prod.product_id}"/> 
                                                	<input type="hidden" name="proc" value=""/>
                                                   <!-- 폼 오픈, Back때 input hidden으로 처리 -->
                                                   <!-- <div style="display:none;"></div> 가격 iframe, script,, -->
                                                   <table width="100%" cellspacing="0" cellpadding="0" style="color:#5B5B5B;" border="0">
                                                      <tbody>
                                                         <tr height="30">
                                                            <td></td>
                                                            <td colspan="2" style="font-weight:bold; font-size:12pt; font-family:돋움;">                                                               
                                                               ${prod.name}
                                                               <!-- img 인기상품 -->
                                                            </td>
                                                         </tr>
                                                         <tr height="1" bgcolor="#bababa">
                                                            <td></td>
                                                            <td></td>
                                                            <td width="70%"></td>
                                                         </tr>
                                                         <tr height="1" bgcolor="#e7e7e7"><td></td><td></td><td></td></tr>
                                                         <tr height="1" bgcolor="#f4f4f4"><td></td><td></td><td></td></tr>
                                                         <tr height="10" bgcolor="#bababa">
                                                            <td></td>
                                                            <td></td>
                                                            <td width="70%"></td>
                                                         </tr>
                                                         <tr height="25">
                                                            <td> </td>
                                                            <td><span class="opt_title1">제품 선택</span></td>
                                                            <td>      
                                                            <c:forEach var="pos" items="${po}">                     
                                                               <input type="radio" id ="capacity" name="capacity" value="${pos.capacity}" data-id="${pos.price}">${pos.capacity}
                                                               <input type="hidden" name="price"><span>(${pos.price}원)</span><br>                                                                                                             
                                                            </c:forEach>
                                                            </td>
                                                         </tr>
                                                         <tr height="25">
                                                            <td> </td>
                                                            <td><span class="opt_title1">판매가격</span></td>
                                                            <td>&nbsp;
                                                            <c:forEach var="pr" items="${po}" begin="1" end="1">   
                                                               <span id="main_price" class="money_color"></span>
                                                               <span id="main_price_type" class="money_color">${pr.price}원</span>
                                                            </c:forEach>
                                                            </td>
                                                         </tr>
                                                         <tr height="25">
                                                            <td> </td>
                                                            <td nowrap><span class="opt_title1">분쇄여부</span></td>
                                                            <td>&nbsp;                                                               
                                                               <select name="grind_id" class="select1">
                                                                  <option value="">선택하세요</option>
                                                                  <c:forEach var="grind" items="${grind}">
                                                                  <option value="${grind.grind_id}">${grind.grind_type}</option>
                                                                  </c:forEach>
                                                               </select>                                                               
                                                            </td>
                                                         </tr>
                                                         <tr height="25">
                                                            <td> </td>
                                                            <td><span class="opt_title1">제조사</span></td>
                                                            <td>&nbsp;${prod.company}</td>
                                                         </tr>
                                                         <tr height="25">
															<td> </td>
															<td><span class="opt_title1">구매수량</span></td>
															<td>															
																<select id="cnt" name="count">
																	<c:forEach begin="1" end="10" var="i">
																		<option value="${i}">${i}</option>
																	</c:forEach>
																</select> 																
															</td>
														</tr>
														<tr height="25">
                                                            <td> </td>
                                                            <td><span>총계 </span></td>
                                                            <!-- <td><input type="hidden" name="price" value=""><span id="tot"></span></td> -->
                                                            <td><span id="tot"></span></td>
                                                         </tr>
														 
                                                         <!-- 
                                                         <tr id="zend_price_tr" height="25" >
                                                            
                                                         </tr> 
                                                         <tr height="10"><td colspan="3"></td></tr>
                                                         <tr height="1" bgcolor="#C8C8C8"><td colspan="3"></td></tr>
                                                         <tr height="15"><td colspan="3"></td></tr> -->
                                                         <!-- 폼 클로즈 -->
                                                      </tbody>
                                                   </table>
                                                   <!-- description -->
                                                   <table width="100%" cellspacing="0" cellpadding="0" style="border:1 dotted aaaaaa; background:f7f7f7; padding:5pt; color:#5B5B5B;">
                                                      <tbody>
                                                         <tr>
                                                            <td>
                                                               <!-- Back: description 불러오기 -->
                                                               <!-- ※ 스페셜티커피 카테고리의 [파푸아뉴기니 블루마운틴 AA]와 동일한 제품으로, 프리미엄 원두입니다. -->
                                                               <br>
                                                            </td>
                                                         </tr>
                                                      </tbody>                                                
                                                   </table>
                                                   <br style="line-height:10px">
                                                   <!-- 구매하기/장바구니/위시리스트 -->

                                                   <table align="center">
                                                      <tbody>
                                                         <tr>
                                                            <td id="addP" onclick="submitCartForm('addP')" name="addP"><img src="${path}/resource/img/shop/buyBtn.gif" style="cursor:pointer;"></td>
															<td id="addC" onclick="submitCartForm('addC')" name="addC"><img src="${path}/resource/img/shop/cartBtn.gif" style="cursor:pointer;"></td>
															<td id="addW" onclick="submitCartForm('addW')" name="addW"><img src="${path}/resource/img/shop/wishBtn.gif" border="0"></td>
                                                         </tr>                                                         
                                                      </tbody>
                                                   </table>
                                                   <!-- div style="display:none;" 으로 form값 처리 -->
                                                </form>
                                             </td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </td>
                  </tr>
               </tbody>            
            </table>
            <!-- 상품상세 -->
            <div class="mall-tab" id="tab1">
               <ul>
                  <li class="on"><button type="button"><a href="#tab1">상품정보</a></button></li>
                  <li><button type="button"><a href="#tab2">배송안내</a></button></li>                
                  <li><button type="button"><a href="#tab3">고객 상품평</a></button></li>
                  <li><button type="button"><a href="#tab4">상품 Q&A</a></button></li>
               </ul>   
            </div>
            <table align="center" width="100%" cellspacing="0" background="${path}/resource/img/shop/tt_detail_bg.gif">
               <tbody>
                  <tr><td><img src="${path}/resource/img/shop/tt_detail.gif" border="0"/></td></tr><!-- 원래는 이미지임! -->
               </tbody>
            </table>
            <table id="pdetail" width="98%" align="center" cellspacing="0" cellpadding="0">
               <tbody>
                  <tr><td align="center" ></td></tr>
                  <tr>
                     <td style="line-height:150%; padding-left:20px">
                        <p align="center" style="text-align:center;">
                           <!-- 빈이미지(이벤트및공지) -->
                           <img src="${path}/resource/img/shop/${prod.description}"><br>
                           <!-- 상품상세설명 이미지 -->
                           <img src="${path}/resource/img/shop/detail_common1.jpg"><br>
                           <img src="${path}/resource/img/shop/detail_common2.jpg"><br>
                           <img src="">
                           <img src="">
                        </p>
                        <p></p>
                     </td>
                  </tr>
               </tbody>
            </table>
            <div class="mall-tab" id="tab2">
               <ul>
                  <li><button type="button"><a href="#tab1">상품정보</a></button></li>
                  <li class="on"><button type="button"><a href="#tab2">배송안내</a></button></li>                
                  <li><button type="button"><a href="#tab3">고객 상품평</a></button></li>
                  <li><button type="button"><a href="#tab4">상품 Q&A</a></button></li>
               </ul>   
            </div>
            <!-- 배송안내 -->
            <table class="tab" align="center" cellspacing="0" cellpadding="0">
               <tbody>
                  <tr>
                     <td>
                        <table border="0" cellsapcing="0" cellpadding="0">
                           <tbody>
                              <tr>
                                 <td>
                                    <table border="0" cellspacing="0" cellpadding="0" bgcolor="#f9f9f9">
                                       <tbody>
                                          <tr>
                                             <td><%-- <img src="${path}/resource/img/shop/s_ordercap1.gif"> --%></td>
                                          </tr>
                                          <tr>
                                             <td>                                 
                                                <table width="800" border="0" cellspacing="0" cellpadding="0">
                                                   <tbody>
                                                      <tr>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                         <td width="798">
                                                            <table width="798" border="0" cellspacing="0" cellpadding="0" height="5">
                                                               <tbody>
                                                                  <tr>
                                                                     <td width="137"></td><%--  background="${path}/resource/img/shop/s_ordercap_bg.gif" --%>
                                                                     <td width="661"></td>
                                                                  </tr>
                                                               </tbody>
                                                            </table>
                                                         </td>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                      </tr>
                                                      <tr>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                         <td width="798">
                                                            <table width="798" border="0" cellspacing="0" cellpadding="0" style="color:666666;">
                                                               <tbody>
                                                                  <tr>
                                                                     <td style="padding-top:10px;" valign="top" width="137" > <%-- background="${path}/resource/img/shop/s_ordercap_bg.gif" --%>
                                                                        <img src="${path}/resource/img/shop/s_ordericon1.gif">
                                                                     </td>
                                                                     <td width="10"></td>
                                                                     <td style="padding-top:10 0 15 10px; line-height:130%;">
                                                                        배송은 상품에 따라 차이가 있으나 1~4일 이내에 제품을 받으실 수 있습니다.<br>
                                                                        평일 오전 10시까지 주문 입금 확인된 원두 및 부자재에 한해 당일 발송됩니다.<br>
                                                                        <!-- 3만원 미만: 배송비 유료 (2,500원), 무료배송 표기상품은 금액에 상관없이 무료로 배송됩니다.<br>
                                                                        3만원 이상: 배송비 무료<br> -->
                                                                        * 주문 시 입력한 입금자명과 실제 입금자의 성명이 반드시 일치하여야 하며, <br>
                                                                           주문 후 3일 이내로 입금을 하셔야 합니다.<br>
                                                                        * 주문 후 3일 이내에 입금되지 않는 주문에 대해서는 자동 취소됩니다.<br>
                                                                        * 도서 산간 지역: 제주특별자치도 3,000원 추가, 울릉도 3,000원 추가 (기타지역 전화문의)<br>
                                                                     </td>
                                                                  </tr>
                                                               </tbody>
                                                            </table>
                                                         </td>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                      </tr>
                                                      <tr>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                         <td width="798">
                                                            <table width="798" border="0" cellspacing="0" cellpadding="0" style="color:666666;">
                                                               <tbody>
                                                                  <tr>
                                                                     <td style="padding-top:10px;" valign="top" width="137" ><%-- background="${path}/resource/img/shop/s_ordercap_bg.gif" --%>
                                                                        <img src="${path}/resource/img/shop/s_ordericon2.gif">
                                                                     </td>
                                                                     <td width="10"></td>
                                                                     <td style="padding-top:10 0 15 10px; line-height:130%;">
                                                                        고객의 변심에 의한 교환 및 반품인 경우, 배송비는 소비자 부담입니다.<br>
                                                                        상품의 이상에 의한 교환 및 반품의 경우, 배송비는 판매자 부담입니다.<br>
                                                                        문의: 031-123-4567;
                                                                     </td>
                                                                  </tr>
                                                               </tbody>
                                                            </table>
                                                         </td>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                      </tr>
                                                      <tr>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                         <td width="798">
                                                            <table width="798" border="0" cellspacing="0" cellpadding="0" style="color:666666;">
                                                               <tbody>
                                                                  <tr>
                                                                     <td style="padding-top:10px;" valign="top" width="137" > <%-- background="${path}/resource/img/shop/s_ordercap_bg.gif" --%>
                                                                        <img src="${path}/resource/img/shop/s_ordericon3.gif">
                                                                     </td>
                                                                     <td width="10"></td>
                                                                     <td style="padding-top:10 0 15 10px; line-height:130%;">
                                                                        1. 고객님의 책임의 사유로 상품 등이 멸실 또는 훼손된 경우<br>
                                                                        2. 사용 또는 일부 소비에 의해 상품의 가치가 현저히 감소한 경우<br>
                                                                        3. 시간 경과에 의해(제품수령 후 7일 이상 경과) 재판매가 어렵게 상품가치가 현저히 감소한 경우
                                                                     </td>
                                                                  </tr>
                                                               </tbody>
                                                            </table>
                                                         </td>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                      </tr>
                                                      <tr>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                         <td width="798">
                                                            <table width="798" border="0" cellspacing="0" cellpadding="0" height="3">
                                                               <tbody>
                                                                  <tr>
                                                                     <td width="137" ></td><%-- background="${path}/resource/img/shop/s_ordercap_bg.gif" --%>
                                                                     <td width="661"></td>
                                                                  </tr>
                                                               </tbody>
                                                            </table>
                                                         </td>
                                                         <td width="1" bgcolor="dfdfdf"></td>
                                                      </tr>
                                                   </tbody>
                                                </table>
                                             </td>
                                          </tr>
                                          <tr>
                                             <td><%-- <img src="${path}/resource/img/shop/s_ordercap2.gif"> --%></td>
                                          </tr>                              
                                       </tbody>
                                    </table>
                                 </td>
                              </tr>                  
                           </tbody>
                        </table>
                     </td>
                  </tr>
                  <tr><td height="10"></td>                     
                  </tr>
               </tbody>
            </table>
            <%-- 상품평 --%>
            <p>
               <table width="100%" align="center" cellspacing="0" cellpadding="0">
                  <tbody>
                     <tr>
                        <td>
                           <div class="mall-tab" id="tab3">
                              <ul>
                                 <li><button type="button"><a href="#tab1">상품정보</a></button></li>
                                 <li><button type="button"><a href="#tab2">배송안내</a></button></li>                
                                 <li class="on"><button type="button"><a href="#tab3">고객 상품평</a></button></li>
                                 <li><button type="button"><a href="#tab4">상품 Q&A</a></button></li>
                              </ul>
                           </div>
                           <jsp:include page="../review/review_shop.jsp"/>
                           <%-- Q&A (mall-tab 포함) --%>
                           <div class="mall-tab" id="tab4">
                              <ul>
                                 <li><button type="button"><a href="#tab1">상품정보</a></button></li>
                                 <li><button type="button"><a href="#tab2">배송안내</a></button></li>                
                                 <li><button type="button"><a href="#tab3">고객 상품평</a></button></li>
                                 <li class="on"><button type="button"><a href="#tab4">상품 Q&A</a></button></li>
                              </ul>   
                           </div>
                           <jsp:include page="../qna/qnalist.jsp"/>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </p>         
         </td>
         <td class="content-wrap-center-right"><img src="${path}/resource/img/shop/blank.gif"/></td>
         <td class="content-wrap-right" valign="top">
            <jsp:include page="../common/sidebar.jsp"/>
         </td>
      </tr>
   </tbody>
</table>
<div style="height:100px;"></div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>