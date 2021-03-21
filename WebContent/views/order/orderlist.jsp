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
				<img src='${path}/resource/img/cart/tt_order.gif'>
			</td>	
			</tr>
		<tr><td height=7></td></tr>
		<tr><td height=3 bgcolor=eeeeee></td></tr>
		<tr><td height=7></td></tr>
	</table>
<form method="post">
	<input type="hidden" name="proc" value="">
<table align="center" style="margin:auto; width:900px;" cellspacing=0 cellpadding=3>
	<tr>
		<td>
		<table class="content-wrap" style="width:1000px;"  cellspacing=0 cellpadding=0>

			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
				<img src='${path}/resource/img/cart/dot_01.gif' align=absmiddle>
				<b>주문/배송조회</b> 
				&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			<td>
			<font color=138CE1>전체<b>1</b>건</font>
			</td>
			</tr>
 		</table>
		</td>
		
	  </tr>
	
	
	<table align="center" style="margin:auto; width:900px;" cellspacing=0 cellpadding=0>
	<tr height=28 bgcolor=#f3f3f3 align=center style='font-weight:bold;color:#6F6F6F;'>
		<td>주문번호</td>
		<td align=right>결제금액&nbsp;</td>
		
		<td>결제수단</td>
		<td>거래상태</td>
		<td></td>
		<td>주문일시</td>
	</tr>
	
	<c:forEach var="order" items="${orderList}">
		<tr height=26 align=center style='font-family:돋움;'>
		<td width=100><img src='${path}/resource/img/cart/dot_02.gif' align=absmiddle>
		<a href='#.'><b>${order.order_id }</b></a></td>
		<td align=right><b style='color:#B31515;'>${poList.prcie}</b></td>
		
		<td><b>${order.pay}</b></td>
		<td>${order.state}</td>
		<td>
		</td>
		<td>${order.order_date}</td>
		</tr>
	</c:forEach> 
		
		<tr height=1 bgcolor=dddddd><td colspan='7'></td></tr>
	
	
	
	
	
	<!-- <tr height=50 bgcolor=ffffff>
		<td colspan='7'>&nbsp;<font color=c0c0c0>상품구입 내역이 없습니다.</font></td>
	</tr>
	<tr height=1 bgcolor=dddddd><td colspan='7'></td></tr> -->
	
	</table>
	<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
	</table>
	</form>	
	</table>
<jsp:include page="/views/common/footer.jsp" />		
</body>
</html>