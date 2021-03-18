<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/>
<script type="text/javascript">
	$(document).ready(function(){
		var query = "${query}";
		if (${empty query}) {
			query = "main";
		} 
		
		$("#mypage-menu #" + query).css("font-weight", "bold");
	});

</script> 
<div id="mypage-menu">
	<table>
		<tr>
			<th>
				<img src="${img_path}/title_mypage.gif">
			</th>
		</tr>
		<tr>
			<td id="main">
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do">마이데스크</a>
			</td>
		</tr>
		<tr>
			<td id="order">
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do?query=order">주문/배송조회</a>
			</td>
		</tr>
		<tr>
			<td id="wish">
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do?query=wish">위시리스트</a>
			</td>
		</tr>
		<tr>
			<td id="qna">
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do?query=qna">나의 Q&A</a>
			</td>
		</tr>
		<tr>
			<td id="review">
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do?query=review">나의 Review</a>
			</td>
		</tr>
		<tr>
			<td id="modify">
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do?query=modify">회원정보변경/탈퇴</a>
			</td>
		</tr>
	</table>
</div>
				