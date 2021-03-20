<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
</style>

<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
      
   });
</script>
</head>
<body>
<jsp:include page="/views/common/header.jsp"/>
	<div style="height:250px;"></div>
	<table class="content-wrap">
	<tr>
		<td valign=top>	
			<table class="content-wrap" style="width:900px;">
				<tr>
					<td class="content-wrap-left">
						<img src='${path}/resource/img/cart/tt_step.gif'>
					</td>
					<td align="right"><img src='${path}/resource/img/cart/tt_step1.gif'></td>
				
				</tr>
			</table>	
				
	<table align="center" style="margin:auto; width:900px;" >
		<tr height='1' bgcolor='#CCCCCC'><td colspan=8></td></tr>
			<tr height=25 align=center bgcolor='#FAFAFA'>
				<td></td>
				<td class="content-wrap-left" colspan=2>주문상품</td>
				<td class="content-wrap-right">옵션</td>
				<td align=right>가격</td>
				<td>수량</td>
				<td class="content-wrap-right">소계</td>
				<td width=35></td>
			</tr>		
			
			<tr height='1' bgcolor='#CCCCCC'><td colspan=8></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td colspan=8></td></tr>
			
			<c:forEach var="cart" items="${cartList}">
			<tr align=center style='color:#5B5B5B;'>
				<td width=50><img src='${path}/resource/img/cart/shop1.jpg' border=0 width='50' height='50' hspace=5 vspace=5></td>
				<td align=left colspan=2>
				<a href=''>
				[스페셜티 커피] 파나마 에스메랄다 게이샤<br>일산커피공장 일산커피공장 파나마</a>
				<br><font color='#037CC1'>(선택상품 : <b>100g</b>)</font></td>
				<td><img src='${path}/resource/img/cart/btn_option.gif' style='cursor:pointer;'/></td>
			<td align=right style='color:#682E14;'>
			
			${cart.capacity} 
			</td>
			
			
			<td>
			
			<table cellspacing=0 cellpadding=0>
			<tr>
			<td><input type=text size=4 value='1' maxlength=5 style='border:1 solid #B0B0B0; text-align:center;' readonly></td>
				<td>
				<table cellspacing=0 cellpadding=1>
					<tr><td><img src='${path}/resource/img/cart/num_plus.gif' style='cursor:pointer;'></td></tr>
					<tr><td><img src='${path}/resource/img/cart/num_minus.gif' style='cursor:pointer;'></td></tr>
				</table>
				</td>
			</tr>
			
			</table>
			
			</td>
			<td align=right style='color:#9F196E;font-weight:bold;'>000원</td>
			<td>
			<input type="image" value="삭제" id="deleteButton" 
				src='${path}/resource/img/cart/btn_delete.gif' style='cursor:pointer;'></td>
			
			</tr>
			
			<tr height='1' bgcolor='#e7e7e7'><td colspan=8></td></tr>
			</c:forEach>
			
			
			<tr align=right height=30 bgcolor='#FAFAFA'>
				<td colspan=3 align=right></td>
				<td><font color='#CA6A40'></font></td>
				<td align=center>합계</td>
				<td align=center><font color='#FE4520'><b>51,000원</b></font></td>
				<td></td>
			</tr>
			<tr height=1><td colspan=8></td></tr>
			</table>
			
			<style>
				.order
				{
					border : 1 solid #7F9DB9;
				}
				.price
				{
					border : 1 solid #7F9DB9;
					text-align : right;	
				}
			</style>
			<br>
			<table style="width:700px;">
				<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='${path}/resource/img/cart/dot_02.gif'><b>고객님께서 결제하실 내역입니다.</b></td>
				</tr>
			</table>
			
			<table height=5><tr><td></td></tr></table>

			<table align="center" style="margin:auto; width:900px;"  cellspacing=1 cellpadding=2 bgcolor=dfdfdf>
			<tr height=35 bgcolor='#FAFAFA' align=center>
			<td>상품가격</td>
			<td bgcolor='#ffffff'>
			<font color='#FE4520'>51,000원</font>
			</td>
			
			
			
			<td>배송비</td>
			<td bgcolor='#ffffff'><font color='green'><span>무료배송</span></font></td>
			
			</tr>
			</table>
			
			
			
			
			<table height=5><tr><td></td></tr></table>


	
			
			<table><tr><td height=5></td></tr></table>
			
			
			
			
			<table width=100% cellspacing=0 cellpadding=0 style='border:1 dotted cccccc;background:f7f7f7;padding:5pt;'> 
			<tr><td align=center><font style='font-size:11pt;line-height:11pt;'>결제금액 &nbsp; : &nbsp;&nbsp; <font style='font-size:14pt;line-height:14pt;font-family:arial,돋움;'><b><span id='Lay_price_str'>51,000</span></font> 원</b></font> <span id='coupon_check'></span> </td></tr>
			</table> 
			
			
			
			<table align="center" style="margin:auto; width:900px;">
			<tr>
			<td><img src='${path}/resource/img/cart/tt_order_01.gif'></td>
			<td align=right>
			<img src='${path}/resource/img/cart/btn_order_05.gif' style='cursor:pointer;' onclick="location.href='${path}/views/cart/cartlist.jsp'">
			</td>
			</tr>
			</table>
			
			<table align="center" style="margin:auto; width:900px;" width=100% cellspacing=0 cellpadding=0>
			<tr height='1' bgcolor='#CCCCCC'><td></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td></td></tr>
			</table>
			
			<table align="center" style="margin:auto; width:900px;">
			<tr height=25>
			<td width=5></td>
			<td width=100 nowrap style='padding-top:5px;'><img src='${path}/resource/img/cart/dot_012.gif'> 결제수단 선택</td>
			<td width=5></td>
			<td width=80%> 
		<form id="pay-inner" method="post">
			<table cellspacing=0 cellpadding=0 border=0>
			<tr>
			<td>
			
			<span style='display:;'>
			<input type=radio name='pay_type' value='1'><b>무통장 입금</b>
			</span>
			
			<span style='display:;'>
			<input type=radio name='pay_type' value='2'><b>신용카드</b>
			</span>
			
			<span style='display:;'>
			<input type=radio name='pay_type' value='3'><b>계좌이체</b>
			</span>
			
			<span style='display:;'>
			<input type=radio name='pay_type' value='4'><b>휴대폰</b>
			</span>
			
			
			</td>
			</tr>
			</table>
			
			</td>
			</tr>
			
			
			<tr height=30><td colspan=4>
			<table width=100% cellspacing=0 cellpadding=0>
			<tr height='1' bgcolor='#CCCCCC'><td></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td></td></tr>
			</table>
			</td></tr>
			
			<tr height=30>
			<td width=5></td>
			<td width=100 nowrap><img src='${path}/resource/img/cart/dot_012.gif'> 주문 고객성명</td>
			<td width=5></td>
			<td width=80%><input type=text name='' value="홍길동" class='order'></td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 이메일</td>
			<td></td>
			<td><input type=text name='' size=40 value="Test@test.com" class='order'></td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 전화번호</td>
			<td></td>
			<td>
			
			<input type=text name='' size=4 value="" class='order' maxlength=4> -
			<input type=text name='' size=4 value="" class='order' maxlength=4> -
			<input type=text name='' size=4 value="" class='order' maxlength=4>
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 휴대전화</td>
			<td></td>
			<td>
			<input type=text name='' size=4 value="" class='order' maxlength=4> -
			<input type=text name='' size=4 value="" class='order' maxlength=4> -
			<input type=text name='' size=4 value="" class='order' maxlength=4>
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=75>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 주문자 주소</td>
			<td></td>
			<td>
			
			<table width=100% cellspacing=0 cellpadding=0 border=0><tr><td>
			
			<input type=text> -
			<input type=text>
			<img src='${path}/resource/img/cart/btn_zip.gif' align=absmiddle style='cursor:pointer;' onclick="">
			<br>
			<input type=text name='' id='' size=40 value="" class='order'><br>
			<input type=text name='' id='' size=40 value="" class='order'>
			
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			</td>
			<td valign='top' align='right'>
			</td>
			</tr>
	
			</table>
			
			<tr height=85>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 배송시 요청사항</td>
			<td></td>
			<td>
			<textarea name='OD_TB_MSG' rows=5 cols=50 class=order></textarea>
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=20>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 구매내용 확인</td>
			<td></td>
			<td style='color:#999999;'><input type='checkbox' name='zagree3'> 주문 제품의 제품명, 제품가격, 배송정보를 확인하였으며, 구매에 동의합니다. (전자상거래법 제8조 제2항)
			</td>
			</tr>
			
			<tr height=85>
			<td></td>
			<td></td>
			<td></td>
			<td><span ><input type='image' src='${path}/resource/img/cart/cart_buy.gif' onclick="location.href='${path}/views/cart/orderfin.jsp'"></span></td>
			</tr>
			</table>
		
			
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
			</table>
	<jsp:include page="/views/common/footer.jsp" />	
</body>
</html>