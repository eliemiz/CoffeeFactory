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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
<jsp:include page="/views/common/header.jsp"/>
	 <div style="height:222px;"></div>
	 <table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr>
				<td height="30">
					&nbsp;<img src="${path}/resource/img/shop/dot_01.gif"/>
					현재위치 : <a href="${path}/">Home</a>> <a href="">검색결과</a>
				</td>
			</tr>
		</tbody>
	</table>
	<table width="100%" cellspacing="0" cellpadding="0">
		<tbody>
			<tr height="1" bgcolor="#DEE2E4"><td></td></tr>
		    <tr height="5"><td></td></tr>
		</tbody>
	</table>
	<table width="100%" cellspacing="1" cellpadding="3">
		<tbody>
			<tr>
				<td>
				<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle">
				<a href="${path}/shop_main.do">싱글오리진 원두커피 <span class="font-size2">(1)</span></a>
				</td>
			</tr>
		</tbody>
	</table>							
	<table width="100%" cellspacing="0" cellpadding="0">
		<tbody>
			<tr height="5"><td></td></tr>
			<tr height="1" bgcolor="#DEE2E4"><td></td></tr>
		</tbody>
	</table>							
			<br style="line-height:10px;">							
	<table bgcolor="#f2f2f2" width="100%" cellspacing="0" cellpadding="0">
		<form action="" name=""></form>
				<tr height="20" style="color:666666;">
				<td> </td>
				<td>
				&nbsp;<span class="font-size2">•&nbsp;검색상품 : <font color="#333333"><b>1</b></font>개</span>							
				</td>
				<td align="right">
	<table cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr>
				<td>
					<span style="font-size:8pt;font-family:돋움,굴림;color:999999;">•&nbsp;상품표시 </span>&nbsp;
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
		</tbody>
	</table>
				</td>
				<td> </td>
			</tr>
	</table>
			<br style="line-height:10px;">
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tbody>
			<tr><td height="10"></td></tr>
			<tr><td height="1" width="100%" bgcolor="dee2e4"></td></tr>
			<tr><td height="10"></td></tr>
		</tbody>
	</table>					
	<table width="100%" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>					
				<td valign="top">
	<table style="table-layout:fixed" width="187" cellspacing="0" cellpadding="0" border="0" id="" >
		<tbody><tr><td height="12"></td></tr>					
			<tr align="center">
				<td height="187">
				<a href=""><img src="${path}/resource/img/shop/shop_papua.jpg" border="0" width="185" class="product_img_border"></a></td>
			</tr>
			<tr align="center">
				<td valign="top" style="word-break:break-all;line-height:120%;padding-top:3px;">				 
					<a href="${path}/shop_detail.do"><span class="product_name_color">파푸아뉴기니 블루마운틴 AA</span></a>
					<br>&nbsp;<img src="" align="absmiddle">
				</td>
			</tr>
			<tr align="center">
				<td>
					<span class="money_color2"><b><b>12,000</b>원</b></span>
				</td>
			</tr>
			<tr><td height="7"></td></tr>
		</tbody>
	</table>
				</td>
				<td><img src="" width="185"></td>
				<td><img src="" width="185"></td>
			</tr>
			<tr height="3" bgcolor="#F7F7F7"><td colspan="4"></td></tr>
		</tbody>
	</table>
	<table width="100%">
		<tbody>
			<tr>
				<td></td>
				<td align="center"><b><script language="javascript">getPageLink1(10,1,1,'');</script>
				<img src="${path}/resource/img/shop/prev1.gif" border="0" align="ABSMIDDLE">
				<img src="${path}/resource/img/shop/cutln.gif" border="0" align="ABSMIDDLE">
				<font color="RED">1</font><img src="${path}/resource/img/shop/cutln.gif" border="0" align="ABSMIDDLE">
				<img src="${path}/resource/img/shop/next1.gif" border="0" align="ABSMIDDLE"></b></td>
				<td align="right"></td>
			</tr>
		</tbody>
	</table>
			</td>
			<td class="content-wrap-center-right">
			</td>
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>			
		</tr>
	</table>
<div style="height:100px;"></div>
<jsp:include page="/views/common/footer.jsp"/>
</body>
</html>