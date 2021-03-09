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
<link rel="stylesheet" href="${path}/resource/css/notice.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
<!-- 헤더 삽입 -->
<img src="${path}/resource/img/notice/not_title.png" class="title"/><br>
	<form class="form1">
	<table align="center">
		<col width="670"><col width="380">
		<tr><td colspan="2" class="td_right4">
			<input type="button" value="수정하기" class="btn_btn1" onclick="location.href='notice_revise.jsp'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='notice_list.jsp'"/>
			</td></tr>
		<tr><th class="td_left7">TITLE</th>
			<td class="td_left8">
				<input type="text" id="title" name="title"/>
				</td>
			  <tr>
		<tr><th class="td_left7">첨부파일</th>
			<td class="td_left8">첨부파일
				</td>
			  <tr>	  
		<tr><th class="td_left7">CONTENT</th>
			<td class="td_left8">
				<input type="text" id="title" name="title"/>
				</td>
			  <tr>           
	</table>
	</form>

<!-- 푸터 삽입 -->
</body>
</html>