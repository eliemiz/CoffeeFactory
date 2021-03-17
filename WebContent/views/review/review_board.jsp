<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resource/css/notice.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	 <div style="height:222px;"></div>
	 <table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	 
	 
	<div style="text-align: left; ">
		<img src="${path}/resource/img/review/review.png" />
	</div>
<div>
	<form class="form1">
		<table align="center" style="border-collapse: collapse; margin:auto;" >
			<col width="96">
			<col width="640">
			<col width="98">
			<col width="70">
			<col width="150">

			<tr >
				<th class="th_center">번호</th>
				<th class="th_center">제목</th>
				<th class="th_center">아이디</th>
				<th class="th_center">등록일</th>
				<th class="th_center">평점</th>
			</tr>

			<tr>
				<td class="td_center3">번호</td>
				<td class="td_left3" style="cursor:pointer;">제목</td>
				<td class="td_center3">아이디</td>
				<td class="td_center3">등록일</td>
				<td class="td_center3">평점</td>
			</tr>
		
		
			<tr>
<tr><td colspan="4" class="td_left4"><img src="${path}/resource/img/notice/leftarrow.png" class="arrow">
&nbsp;&nbsp;1&nbsp;&nbsp;
			<img src="${path}/resource/img/notice/rightarrow.png" class="arrow">
			</td>
			<td class="td_right">
			
			<input type="button" value="메인화면" class="btn_btn1" 
			onclick="location.href='${path}/index.do'" style="cursor:pointer;"/></td></tr>
		
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
	
	<jsp:include page="/views/common/footer.jsp"/>
</body>
</html>