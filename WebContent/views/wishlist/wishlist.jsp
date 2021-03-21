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
			<td><img src='${path}/resource/img/cart/tt_wish.gif'></td>
		</tr>
		<tr><td height=7></td></tr>
		<tr><td height=3 bgcolor=eeeeee></td></tr>
		<tr><td height=7></td></tr>
	</table>
<form id="wishForm" method=get>
<input type="hidden" name="proc" value="">
<table align="center" style="margin:auto; width:900px;" cellspacing=0 cellpadding=3>
  
	<tr>
		<td>
		<table align="center" style="margin:auto; width:900px;"  cellspacing=0 cellpadding=0>
			<td>
				<img src='${path}/resource/img/cart/dot_01.gif' align=absmiddle>
				<b>위시리스트</b> &nbsp; 
			</td>
			<td align=right>
			<font color=138CE1>전체 <b>1</b>건</font>
		</td>
		</tr>
 		</table>
		</td>
		
	  </tr>
	
	
	<table align="center" style="margin:auto; width:900px;" cellspacing=0 cellpadding=0>
	<tr height=28 bgcolor=#f3f3f3 align=center style='font-weight:bold;color:#6F6F6F;'>
		<td><img src='${path}/resource/img/cart/multiview.gif'></td>
		<td>이미지</td>		
		<td>상품명</td>
		<td></td>
		<td>가격</td>
		<td></td>
		<td></td>
	</tr>
	
	<c:forEach var="wish" items="${wishList}">
	<tr height=26 align=center style='font-family:돋움;'>
	<td><input type=checkbox value='1881:860'></td>
	<td><img src='${path}/resource/img/${prodList.thumbnail}' border=0 width='65' hspace=5 vspace=5 style='cursor:pointer;'></td>
	<td align=center>
		<a href=''>
		${prodList.name}</a>
		<br><font color=gray><a href='' target='_blank'><font color=gray>스페셜티커피 외</font></a> > 
		<a href='' target='_blank'><font color=gray>스페셜티</font></a></font>
		</td>
	<td></td>
	<td align=center><b style='color:#B31515;'>${poList.price} 원</b></td>
	</tr>
	
	<tr height=1 bgcolor=dddddd><td colspan='7'></td></tr>
	</c:forEach>
	
	
	
	
	
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
	<br>
			<p align=center>
			<a href='/coffeeFactory/Index.jsp'><img src='${path}/resource/img/cart/btn_order_03.gif' align=absmiddle border=0></a>&nbsp;&nbsp;
			<a><input type="image" value="삭제" id="deleteButton" 
				src='${path}/resource/img/cart/btn_order_02.gif' style='cursor:pointer;' align=absmiddle border=0></a>&nbsp;&nbsp;
			
<jsp:include page="/views/common/footer.jsp" />		
</body>
<script type="text/javascript">
var proc = document.querySelector('[name=proc]'); 
var deleteButton = document.querySelector('#deleteButton');
	deleteButton.onclick = function(){
		proc.value = 'delete';
		if(confirm('삭제하시겠습니까?')){
			wishForm.submit();
		}
	}
</script>
</html>