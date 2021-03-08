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
<link rel="stylesheet" href="${path}/resources/css/a00_com.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<div style="text-align: center;">
		<br>
		<br>
		<p class="title">REVIEW</p>
		<input align="center" type="button" value="글쓰기" class="btn btn_thatch"
			onclick="location.href='review_write.jsp'"><br>
	</div>
	<br>
	<br>
	<br>
	<div class="content_wrap">
		<div style="text-align: right;">
			<span><input id="name" type="radio" name="select"><label
				for="name">이름</label>&nbsp; <input id="title" type="radio"
				name="select" checked><label for="title">제목</label>&nbsp; <input
				id="contents" type="radio" name="select"><label
				for="content">내용</label>&nbsp; <input type="text" name="searchText"
				value="" /> <input style="background-color: #464646; color: white;"
				type="submit" value="검색" /></span>
		</div>
		<br>
		<table>
			<colgroup>
				<col width="50">
				<col width="30">
				<col width="140">
				<col width="*">
				<col width="150">
				<col width="150">
				<col width="150">
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><div class="th_center">번호</div></th>
					<th scope="col"><div class="th_center">&nbsp;</div></th>
					<th scope="col"><div class="th_center">Product</div></th>
					<th scope="col"><div class="th_center">제목</div></th>
					<th scope="col"><div class="th_center">작성자</div></th>
					<th scope="col"><div class="th_center">작성일</div></th>
					<th scope="col"><div class="th_center">점수</div></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><div class="td_center">8</div></td>
					<td><div class="td_center">
							<img src="" class="note">
						</div></td>
					<td><div class="td_center">
							<a href="../shop/shop_default.jsp"><img src="" class="img">
						</div></td>
					<td><div class="td_left">
							<a href="../board/review.jsp">[두부볼中,小]&nbsp;만족합니다!!</a>
						</div></td>
					<td><div class="td_center">ijk230</td>
					<td><div class="td_center">2021/02/08</div></td>
					<td><div class="td_center">13</div></td>
				</tr>
			</tbody>
		</table>
		<br>
		<div style="text-align: center;">
			<input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
			<input type="button" value="&nbsp;>&nbsp;" class="btn_normal">
			<input type="button" value=">>" class="btn_normal">
		</div>
	</div>
</body>
</html>