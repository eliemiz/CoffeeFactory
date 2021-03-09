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
<link rel="stylesheet" href="${path}/resources/css/a00_com.css">
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
			<td>&nbsp;<span class="font-size2">•&nbsp;검색상품 : <font color="#333333"><b>0</b></font>개</span>
			</td>
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
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tbody>
				<tr><td height="10"></td></tr>
				<tr><td height="1" width="100%" bgcolor="dee2e4"></td></tr>
				<tr><td height="10"></td></tr>
		</tbody>
	</table>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td valign="top" style="padding:6;padding-bottom:0">
	<table width="100%" border="0" cellspacing="6" cellpadding="0">
		<tbody>
			<tr>
				<td><img src="${path}/resource/img/shop/dot_02.gif" border="0"></td>
				<td width="100%">검색어를 입력해 주십시요</td>
			</tr>
			<tr>
				<td><img src="${path}/resource/img/shop/dot_02.gif" border="0"></td>
				<td class="blackb">검색도움말</td>
			</tr>
			<tr>
				<td colspan="2" valign="top" bgcolor="CEDDEA" style="padding:3">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="FFFFFF">
		<tbody><tr>
				<td valign="bottom"><img src="${path}/resource/img/shop/str_01.gif" border="0"></td>
				<td width="100%" style="padding:18">
	<table width="100%" border="0" cellspacing="5" cellpadding="0">
		<tbody><tr valign="top">
				<td><img src="${path}/resource/img/shop/dot_03.gif" border="0"></td>
					<td>정확한 상품명을 모르실 때는 확실히 아시는 단어만 입력하시기 바랍니다.</td>
				</tr>
				<tr valign="top">
					<td><img src="${path}/resource/img/shop/dot_03.gif" border="0"></td>
					<td>상품군 카테고리를 선택하시거나 제조사, 가격대 등을 같이 입력하시면 더 정확한 검색결과를 보실 수 있습니다.</td>
				</tr>
				<tr valign="top">
					<td><img src="${path}/resource/img/shop/dot_03.gif" border="0"></td>
					<td>검색을 통해 원하시는 상품을 못 찾았을 경우, 상세검색에서 “상품명+상품설명”을 선택하시면 더 많은 검색 결과를 보실 수 있습니다.</td>
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
					</td>
				</tr>
		</tbody>
	</table>
</td>
</body>
</html>