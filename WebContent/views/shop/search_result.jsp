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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
<style>
td, p {
    font-family: 맑은 고딕,Malgun Gothic,돋움,Dotum,굴림;
    font-size: 9pt;
    font-style: normal;
    line-height: 15pt;
}	

table[Attributes Style] {
    width: 100%;
    -webkit-border-horizontal-spacing: 0px;
    -webkit-border-vertical-spacing: 0px;
    border-top-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;
}
table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    white-space: normal;
    line-height: normal;
    font-weight: normal;
    font-size: medium;
    font-style: normal;
    color: -internal-quirk-inherit;
    text-align: start;
    border-color: grey;
    font-variant: normal;
}

</style>
</head>
<body>
	<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr>
				<td height="23">
					&nbsp;<img src="${path}/resource/img/shop/dot_01.gif"/>
					현재위치 : <a href="">Home</a>> <a href="">검색결과</a>
				</td>
			</tr>
		</tbody>
	</table>
	<table width="100%" cellspacing="0" cellpadding="0">
		<tbody><tr height="1" bgcolor="#DEE2E4"><td></td></tr>
			<tr height="5"><td></td></tr>
		</tbody>
	</table>
	<table width="100%" cellspacing="1" cellpadding="3">
		<tbody>
			<tr>
				<td>
				<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle">
				<a href="shop_front_main.jsp">싱글오리진 원두커피 <span class="font-size2">(1)</span></a>
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
		<form action="search.php" name="result_form"></form>
				<!-- 
				<input type="hidden" name="query" value="result">
				<input type="hidden" name="where" value="all">
				<input type="hidden" name="keyword" value="케냐">
				<input type="hidden" name="p" value="1">
				<input type="hidden" name="viewType" value="1">
				<input type="hidden" name="price1" value="">
				<input type="hidden" name="price2" value="">
				<input type="hidden" name="cat_num1" value="">
				<input type="hidden" name="cat_num2" value="">
				<input type="hidden" name="cat_num3" value="">
				<input type="hidden" name="xsort" value="">
				-->
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
	<!--
	<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
		  
		<tbody><tr>
			<td>
		
	<table cellpadding="0" cellspacing="0" border="0" align="left">
		<tbody>
			<tr>
				<td style="padding-left:9px;"></td>
				<td><img src="" border="0"></td>
				<td style="padding-left:5px;"></td>
				<td><a href="#." onclick="" onfocus="blur()"><img src="" border="0"></a></td>
				<td style="padding-left:5px;"></td>
				<td style="padding-left:5px;"></td>
				<td><a href="#." onclick="" onfocus="blur()"><img src="" border="0"></a></td>
				<td style="padding-left:15px;"></td>
				<td><a href="#." onclick=""><img src="" align="absmiddle" border="0"></a></td>
			</tr>
		</tbody>
	</table>
	
		</tbody>
	</table>
	-->	
				</td>
			</tr>
		</tbody>
	</table>
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
	<table style="table-layout:fixed" align="center" width="187" cellspacing="0" cellpadding="0" border="0" id="" >
		<tbody><tr><td height="12"></td></tr>					
			<tr align="center">
				<td height="187">
				<a href=""><img src="${path}/resource/img/shop/shop_papua.jpg" border="0" width="185" class="product_img_border"></a></td>
			</tr>
			<tr align="center">
				<td valign="top" style="word-break:break-all;line-height:120%;padding-top:3px;">				 
					<a href="shop_front_detail.jsp"><span class="product_name_color">파푸아뉴기니 블루마운틴 AA</span></a>
					<br>&nbsp;<img src="" align="absmiddle">
				</td>
			</tr>
			<tr align="center">
				<td>
					<img src="" border="0" align="absmiddle" onclick="" style="cursor:pointer;">
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
			<p>
			<br>
			</p></td>
			</tr>
		</tbody>
	</table>
		</td>
</body>
</html>