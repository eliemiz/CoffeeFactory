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
<link rel="stylesheet" href="${path}/resource/css/review/board.css">
<link rel="stylesheet" href="${path}/resource/css/review/common.css">
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
		<p class="title" style="font-size:20px;">상품후기</p>
	</div>
	<br>
	<br>
	<br>
	<div class="content_wrap">
		<table>
			<colgroup>
				<col width="60">
				<col width="160">
				<col width="*">
				<col width="150">
				<col width="150">
				<col width="150">
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><div class="th_center">번호</div></th>
					<th scope="col"><div class="th_center">Product</div></th>
					<th scope="col"><div class="th_center">제목</div></th>
					<th scope="col"><div class="th_center">작성자</div></th>
					<th scope="col"><div class="th_center">작성일</div></th>
					<th scope="col"><div class="th_center">평점</div></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><div class="td_center">1</div></td>
					<td><div class="td_center">
							<a href=""><img src="" class="img">
						</div></td>
					<td><div class="td_left">
							<a href="">첫구매 원두 아주 만족합니다!</a>
						</div></td>
					<td><div class="td_center">ijk230</td>
					<td><div class="td_center">2021/03/12</div></td>
					<td><div class="td_center">5</div></td>
				</tr>
				<tr>
					<td><div class="td_center">2</div></td>
					<td><div class="td_center">
							<a href=""><img src="" class="img">
						</div></td>
					<td><div class="td_left">
							<a href="">여기 원두 좋네요</a>
						</div></td>
					<td><div class="td_center">sldfk55</td>
					<td><div class="td_center">2021/03/11</div></td>
					<td><div class="td_center">5</div></td>
				</tr>
				<tr>
					<td><div class="td_center">3</div></td>
					<td><div class="td_center">
							<a href=""><img src="" class="img">
						</div></td>
					<td><div class="td_left">
							<a href="">나쁘지 않네요</a>
						</div></td>
					<td><div class="td_center">lee1324</td>
					<td><div class="td_center">2021/03/11</div></td>
					<td><div class="td_center">4</div></td>
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