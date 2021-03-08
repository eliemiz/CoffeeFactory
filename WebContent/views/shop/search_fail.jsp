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
</head>
<body>
<tbody><tr>
<td width="1"><img src=""></td>
<td></td>
<td></td>
<td width="1"><img src=""></td>
</tr>
<tr height="20" style="color:666666;">
<td> </td>
<td>
&nbsp;<span class="font-size2">•&nbsp;검색상품 : <font color="#333333"><b>0</b></font>개</span>
</td>
<td> </td>
</tr>
<tr>
<td><img src=""></td>
<td></td>
<td></td>
<td><img src="."></td>
</tr>
</tbody>
<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
<tbody><tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" align="left">
<tbody><tr>
<td style="padding-left:9px;"></td>
<td><img src="" border="0"></td>
<td style="padding-left:5px;"></td>
<td><a href="#." onclick="" onfocus="blur()"><img src="" border="0"></a></td>
<td style="padding-left:5px;"></td>
<td style="padding-left:5px;"></td>
<td><a href="#." onclick="" onfocus="blur()"><img src="" border="0"></a></td>
<td style="padding-left:15px;"></td>
<td>
<a href="#." onclick=""><img src="" align="absmiddle" border="0"></a>
</td>
</tr>
</tbody></table>
<map name="ListImg">
  <area shape="rect" coords="39,0,53,25" href="#." onclick="" onfocus="blur()">
  <area shape="rect" coords="54,0,69,25" href="#." onclick="" onfocus="blur()">
</map>
</td>
<td align="right" style="padding-right:9px;"><span style="font-size:8pt;color:999999;font-family:돋움,굴림;">결과내 재검색
<input type="text" name="keyword2" value="" style="width:90;height:18;border:1 solid #cccccc;color:#666666;font-size:8pt;font-family:돋움,굴림;padding:3 0 0 3;">
<img src="image/other/search2.gif" border="0" align="absmiddle" onclick="submit();" onfocus="blur()" style="cursor:hand;">
</span></td>
</tr>

</tbody></table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tbody><tr><td height="10"></td></tr>
<tr><td height="1" width="100%" bgcolor="dee2e4"></td></tr>
<tr><td height="10"></td></tr>
</tbody></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tbody><tr>
	<td valign="top" style="padding:6;padding-bottom:0">
		<table width="100%" border="0" cellspacing="6" cellpadding="0">
		<tbody><tr>
			<td><img src="" border="0"></td>
			<td width="100%">검색어를 입력해 주십시요</td>
		</tr>
		<tr>
			<td><img src="" border="0"></td>
			<td class="blackb">검색도움말</td>
		</tr>
		<tr>
			<td colspan="2" valign="top" bgcolor="CEDDEA" style="padding:3">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="FFFFFF">
				<tbody><tr>
					<td valign="bottom"><img src="" border="0"></td>
					<td width="100%" style="padding:18">
						<table width="100%" border="0" cellspacing="5" cellpadding="0">
						<tbody><tr valign="top">
							<td><img src="" border="0"></td>
							<td>정확한 상품명을 모르실 때는 확실히 아시는 단어만 입력하시기 바랍니다.</td>
						</tr>
						<tr valign="top">
							<td><img src="" border="0"></td>
							<td>상품군 카테고리를 선택하시거나 제조사, 가격대 등을 같이 입력하시면 더 정확한 검색결과를 보실 수 있습니다.</td>
						</tr>
						<tr valign="top">
							<td><img src="" border="0"></td>
							<td>검색을 통해 원하시는 상품을 못 찾았을 경우, 상세검색에서 “상품명+상품설명”을 선택하시면 더 많은 검색 결과를 보실 수 있습니다.</td>
						</tr>
						</tbody></table>
					</td>
				</tr>
				</tbody></table>
			</td>
		</tr>
		</tbody></table>
	</td>
</tr>
</tbody></table>
</td>
</body>
</html>