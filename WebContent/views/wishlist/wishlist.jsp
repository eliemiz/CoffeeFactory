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
  <table width=100% cellspacing=0 cellpadding=0>
	<tr>
		<td><img src='${path}/resource/img/wishlist/tt_wish.gif'></td>
	</tr>
	<tr><td height=7></td></tr>
	<tr><td height=3 bgcolor=eeeeee></td></tr>
	<tr><td height=7></td></tr>
</table>
	<table width=100% cellspacing=0 cellpadding=0>
	<tr>
		<td>
			<table cellspacing=0 cellpadding=0>
				<tr>
					<td><img src='${path}/resource/img/wishlist/dot_01.gif' align=absmiddle>
					<b>위시리스트</b>
					</td>
					<td style='display:none;'>
						<select name='type' onchange="selectBox(this)">
							<option value='1' selected>일반상품</option>
							<option value='2'>공동구매상품</option>
							<option value='3'>경매상품</option>
						</select>
					</td>
				</tr>
			</table>
		</td>
		<td align=right>
		<font color=138CE1>전체 <b>0</b>개</font>
		</td>
	</tr>
</table>
<table width=100% cellspacing=0 cellpadding=0>
	<tr height=28 bgcolor=#f3f3f3 align=center style='font-weight:bold;color:#6F6F6F;'>
		<td><img src='${path}/resource/img/wishlist/multiview.gif'></td>
		<td>이미지</td>
		<td>상품명</td>
		<td>가격</td>
		<td>적립금</td>
		<td></td>
		<td></td>
	</tr>
	<tr height=50 bgcolor=ffffff>
		<td colspan=7>&nbsp;<font color=c0c0c0>등록된 위시리스트가 없습니다.</font></td>
	</tr>
	<tr height=1 bgcolor='#dddddd'><td colspan='7'></td></tr>
</table>	

</body>
</html>