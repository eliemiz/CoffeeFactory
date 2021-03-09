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
<style>

</style>
</head>
<body>
<!-- 헤더 삽입 -->
<img src="${path}/resource/img/notice/not_title.png" class="title"/>

	
	<form class="form1">
	<table align="center">
		<col width="96"><col width="640"><col width="98"><col width="70"><col width="150">
		<tr><td colspan="5" class="td_left4">자료수 : 10개</td></tr>
		<tr><th class="th_center">번호</th><th class="th_center">제목</th><th class="th_center">등록인</th><th class="th_center">조회</th><th class="th_center">등록일</th></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center1"><img src="${path}/resource/img/notice/notice.png" class="notice"></td><td class="td_left2">감사 인사</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center1">조회</td><td class="td_center1">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">카드 할부 이벤트</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center2">번호</td><td class="td_left1">제목</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center2">조회</td><td class="td_center2">등록일</td></tr>
		<tr onclick="location.href='notice_read.jsp'"><td class="td_center3">번호</td><td class="td_left3">제목</td><td class="td_center3"><img src="${path}/resource/img/notice/admin.png" class="admin"></td><td class="td_center3">조회</td><td class="td_center3">등록일</td></tr>	
		<tr><td colspan="4" class="td_left4"><img src="${path}/resource/img/notice/leftarrow.png" class="arrow">&nbsp;&nbsp;&nbsp;
			이전&nbsp;&nbsp;|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;2&nbsp;&nbsp;|&nbsp;&nbsp;3&nbsp;&nbsp;|&nbsp;&nbsp;4&nbsp;&nbsp;|&nbsp;&nbsp;5&nbsp;&nbsp;|&nbsp;&nbsp;다음
			&nbsp;&nbsp;&nbsp;<img src="${path}/resource/img/notice/rightarrow.png" class="arrow">
			</td>
			<td class="td_right">
			<input type="button" value="글쓰기" class="btn_btn1" onclick="location.href='notice_write.jsp'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='notice_list.jsp'"/></td></tr>
		<tr><td colspan="5" class="td_search1">
			<select name="search"><option>전체</option><option>제목</option><option>내용</option></select>&nbsp;<input type="text" size="30"/>&nbsp;<input type="button" value="찾기" class="btn_btn1"/></td></tr>
	</table>
	</form>

<!-- 푸터 삽입 -->
</body>
</html>