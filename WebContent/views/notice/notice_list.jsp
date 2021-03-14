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

<jsp:include page="../common/header.jsp" />
<div style="height:222px;"></div>
<br><br>
 <table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	<div style="text-align: left;">
	
<img src="${path}/resource/img/notice/not_title.png" class="title"/>

<div>
	<form class="form1">
	<table align="center" style="margin:auto;" >
		<col width="96"><col width="640"><col width="98"><col width="70"><col width="150">
		<tr><td colspan="5" class="td_left4">자료수 : 10개</td></tr>
		<tr><th class="th_center">번호</th><th class="th_center">제목</th><th class="th_center">등록인</th><th class="th_center">조회</th><th class="th_center">등록일</th></tr>
		<tr onclick="location.href='notice_read.do'"><td class="td_center1"><img src="${path}/resource/img/notice/notice.png" class="notice" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_left2">감사 인사</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center1">1004</td><td class="td_center1">2021.03.09</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">108</td><td class="td_left1" name="title">롯데카드 할부 이벤트</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">1112</td><td class="td_center2" name="regist_date">2020.11.12</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">107</td><td class="td_left1" name="title">삼일절 휴무공지</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">301</td><td class="td_center2" name="regist_date">2021.03.01</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">106</td><td class="td_left1" name="title">삼성카드 할부 이벤트</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">205</td><td class="td_center2" name="regist_date">2021.02.05</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">105</td><td class="td_left1" name="title">신제품 할인 이벤트</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">130</td><td class="td_center2" name="regist_date">2021.01.30</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">104</td><td class="td_left1" name="title">드럼백 라인업 변경</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">115</td><td class="td_center2" name="regist_date">2021.01.15</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">103</td><td class="td_left1" name="title">신년맞이 할인 이벤트</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">122</td><td class="td_center2" name="regist_date">2020.12.28</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">102</td><td class="td_left1" name="title">크리스마스 행사 이벤트</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">124</td><td class="td_center2" name="regist_date">2020.12.23</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center2" name="notice_id">101</td><td class="td_left1" name="title">배송 지연 공지</td><td class="td_center1"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center2" name="views">101</td><td class="td_center2" name="regist_date">2020.10.12</td></tr>
		<tr onclick="location.href='${path}/notice_read.do'"><td class="td_center3" name="notice_id">100</td><td class="td_left3" name="title">여름휴가 공지</td><td class="td_center3"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center3" name="views">71</td><td class="td_center3" name="regist_date">2020.07.10</td></tr>	
		<tr><td colspan="4" class="td_left4"><img src="${path}/resource/img/notice/leftarrow.png" class="arrow" style="vertical-align:middle; margin-bottom:4px;">&nbsp;&nbsp;&nbsp;
			이전&nbsp;&nbsp;|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;2&nbsp;&nbsp;|&nbsp;&nbsp;3&nbsp;&nbsp;|&nbsp;&nbsp;4&nbsp;&nbsp;|&nbsp;&nbsp;5&nbsp;&nbsp;|&nbsp;&nbsp;다음
			&nbsp;&nbsp;&nbsp;<img src="${path}/resource/img/notice/rightarrow.png" class="arrow" style="vertical-align:middle; margin-bottom:3px;">
			</td>
			<td class="td_right">
			<input type="button" value="글쓰기" class="btn_btn1" onclick="location.href='${path}/notice_write.do'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='${path}/notice.do'"/></td></tr>
		<tr><td colspan="5" class="td_search1">
			<select name="search"><option>전체</option><option>제목</option><option>내용</option></select>&nbsp;<input type="text" size="30"/>&nbsp;<input type="submit" value="찾기" class="btn_btn1"/></td></tr>
	</table>
	</form>
</div>

</td>
			<td class="content-wrap-center-right">
			</td>
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
		</tr>
	</table>
	<br><br>
<jsp:include page="../common/footer.jsp" />

</body>
</html>