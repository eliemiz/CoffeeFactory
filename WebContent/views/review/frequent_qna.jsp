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
<link rel="stylesheet" href="${path}/resource/css/review.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>

<div style="text-align: center;">
		<br>
		<br>
		<p class="title" style="font-size:20px;">상품후기</p>
	</div>
	<br>
	<br>
	<br>
	<div class="content_wrap">
		<div style="text-align: right;">
			<span><input type="text" name="searchText"
				value="" /> <input style="background-color: #464646; color: white;"
				type="submit" value="검색" /></span>
		</div>
		<br>
		<table>
			<colgroup>
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><div class="th_center"></div></th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><div class="td_left">원두 보관은 어떻게 하나요?</div></td>
				
				</tr>
			
			</tbody>
		</table>
		<br>
		<div style="text-align: center;">
			<input type="button" value="<<" class="btn_normal">
			<input type="button" value="&nbsp;<&nbsp;" class="btn_normal">
			<input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
			<input type="button" value="&nbsp;>&nbsp;" class="btn_normal">
			<input type="button" value=">>" class="btn_normal">
		</div>
	</div>
</body>
</html>