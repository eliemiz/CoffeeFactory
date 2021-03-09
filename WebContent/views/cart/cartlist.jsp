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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>

<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
      
   });
</script>
</head>
<body>
	<table width=70% height=70% cellspacing=0 cellpadding=0>
	<tr>
		<td valign=top>	
			<table>
				<tr>
					<td>
						<img src='${path}/resource/img/cart/tt_step.gif' align=absmiddle>
					</td>
					<td align=right><img src='${path}/resource/img/cart/tt_step1.gif'></td>
				</tr>
			</table>
			
	<table width=100% cellspacing=0 cellpadding=0>
		<tr height='1' bgcolor='#CCCCCC'><td colspan=8></td></tr>
			<tr height=25 align=center bgcolor='#FAFAFA'>
				<td></td>
				<td align=left>주문상품</td>
				<td>옵션</td>
				<td align=right>가격</td>
				<td align=right>적립금</td>
				<td>수량</td>
				<td align=right>소계</td>
				<td width=35></td>
			</tr>		
			
			<tr height='1' bgcolor='#CCCCCC'><td colspan=8></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td colspan=8></td></tr>
			
	<table cellspacing=0 cellpadding=0 width=100%>
		<tr height='50'>
			<td align=center>
				<img src='${path}/resource/img/cart/empty.gif'></td></tr>
		<tr height=1><td background='${path}/resource/img/cart/line_01.gif'></td></tr>
	</table>
			<p>
			<p align=right>
				<a href='/coffeeFactory/Index.jsp'><img src='${path}/resource/img/cart/btn_order_03.gif' align=absmiddle border=0></a>&nbsp;&nbsp;
			</p>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>