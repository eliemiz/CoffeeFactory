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
			
<form id="cartForm" method="post">
	<input type="hidden" name="proc" value="">
	<table align="center" style="margin:auto; width:900px;" >
		
		<tr height='1' bgcolor='#CCCCCC'><td colspan=8></td></tr>
			<tr height=25 align=center bgcolor='#FAFAFA'>
				<td></td>
				<td class="content-wrap-left" colspan=2>주문상품</td>
				<td class="content-wrap-right">옵션</td>
				<td>가격</td>
				<td>수량</td>
				<td class="content-wrap-right">소계</td>
				<td width=35></td>
			</tr>		
			
			<tr height='1' bgcolor='#CCCCCC'><td colspan=8></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td colspan=8></td></tr>
			
<%-- <% pageContext.setAttribute("test", "테스트1, 테스트2, 테스트3, 테스트4, 테스트5]"); %>
<% pageContext.setAttribute("test2", "test1, test2, test3, Test4, test5"); %> --%>
			<c:forEach var="cart" items="${cartList}">
				<c:forEach var="prod" items="${prodList}">
					<c:forEach var="po" items="${poList}">
			<tr align=center style='color:#5B5B5B;'>
				<td width=50><img src='${path}/resource/img/shop/${prod.thumbnail}' border=0 width='50' height='50' hspace=5 vspace=5></td>
				<td align=left colspan=2>
				<a href=''>
				${prod.name}</a>
				<br><font color='#037CC1'>(선택상품 : <b>${po.capacity}</b>)</font></td>
				<td>${prod.category}</td>
			<td align=right style='color:#682E14;'>
			
			${po.price} 원
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
			<td align=right style='color:#9F196E;font-weight:bold;'>${po.price}원</td>
			<td>
			<input type="image" value="삭제" id="deleteButton" 
				src='${path}/resource/img/cart/btn_delete.gif' style='cursor:pointer;'></td>
			
			</tr>
			
			<tr height='1' bgcolor='#e7e7e7'><td colspan=8></td></tr>
			</c:forEach>
			</c:forEach>
			</c:forEach>
			
			
			
			<tr align=right height=30 bgcolor='#FAFAFA'>
				<td colspan=3 align=right></td>
				<td><font color='#CA6A40'></font></td>
				<td align=center>합계</td>
				<td align=center><font color='#FE4520'><b>000원</b></font></td>
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
			<font color='#FE4520'>000원</font>
			</td>
			
			
			
			<td>배송비</td>
			<td bgcolor='#ffffff'><font color='green'><span>무료배송</span></font></td>
			<td>결제금액 </td>
			<td bgcolor='#ffffff'><font color='red'><b><span>000</span>원</b></font></td>
			</tr>
			</table>

			
			<br>
			<p align=center>
			<a href='#.'><img src='${path}/resource/img/cart/btn_order_01.gif' align=absmiddle border=0 
				onclick="location.href='${path}/views/cart/pay.jsp'"></a>&nbsp;&nbsp;
			<a href='#.'><img src='${path}/resource/img/cart/btn_order_04.gif' align=absmiddle border=0></a>&nbsp;&nbsp;
			<a href='/coffeeFactory/Index.jsp'><img src='${path}/resource/img/cart/btn_order_03.gif' align=absmiddle border=0></a>&nbsp;&nbsp;
			
			
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
	</table>		
</form>
</td></tr></table>
<jsp:include page="/views/common/footer.jsp" />	

</body>
<script type="text/javascript">
var proc = document.querySelector('[name=proc]'); 
var deleteButton = document.querySelector('#deleteButton');
	deleteButton.onclick = function(){
		proc.value = 'delete';
		if(confirm('삭제하시겠습니까?')){
			cartForm.submit();
		}
	}
</script>
</html>