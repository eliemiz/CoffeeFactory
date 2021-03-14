<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<div id="mypage-menu">
	<table>
		<tr>
			<th>
				<img src="${img_path}/title_mypage.gif">
			</th>
		</tr>
		<tr>
			<td>
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage.do">마이데스크</a>
			</td>
		</tr>
		<tr>
			<td>
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage_order.do">주문/배송조회</a>
			</td>
		</tr>
		<tr>
			<td>
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage_wish.do">위시리스트</a>
			</td>
		</tr>
		<tr>
			<td>
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage_qna.do">나의 Q&A</a>
			</td>
		</tr>
		<tr>
			<td>
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage_review.do">나의 Review</a>
			</td>
		</tr>
		<tr>
			<td>
				<img src="${img_path}/dot_m1.gif"> <a href="${path}/mypage_modify.do">회원정보변경/탈퇴</a>
			</td>
		</tr>
	</table>
</div>
				