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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
			
			${cart.capacity} 원
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
			<td align=right style='color:#9F196E;font-weight:bold;'>40,000원</td>
			<td>&nbsp;<img src='${path}/resource/img/cart/btn_delete.gif' style='cursor:pointer;'></td>
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

			<table style="margin:auto; width:900px;" cellspacing=1 cellpadding=2 bgcolor=dfdfdf>
			<tr height=35 bgcolor='#FAFAFA' align=center>
			<td>상품가격</td>
			<td bgcolor='#ffffff'>
			<font color='#FE4520'>51,000원</font>
			</td>
			
			
			
			<td>배송비</td>
			<td bgcolor='#ffffff'><font color='green'><span>무료배송</span></font></td>
			<td>결제금액 </td>
			<td bgcolor='#ffffff'><font color='red'><b><span>51,000</span>원</b></font></td>
			</tr>
			</table>
			
			<br>
			<p align=center>
			<a href='#.'><img src='${path}/resource/img/cart/btn_order_01.gif' align=absmiddle border=0 
				onclick="location.href='${path}/views/cart/pay.jsp'"></a>&nbsp;&nbsp;
			<a href='#.'><img src='${path}/resource/img/cart/btn_order_04.gif' align=absmiddle border=0></a>&nbsp;&nbsp;
			<a href='/coffeeFactory/Index.jsp'><img src='${path}/resource/img/cart/btn_order_03.gif' align=absmiddle border=0></a>&nbsp;&nbsp;
			<a href='#.'><img src='${path}/resource/img/cart/btn_order_02.gif' align=absmiddle border=0></a>
			
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
	</table>
</td></tr></table>
<jsp:include page="/views/common/footer.jsp" />	

</body>
</html>