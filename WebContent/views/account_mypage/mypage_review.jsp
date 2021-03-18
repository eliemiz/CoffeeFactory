<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<div id="mypage-wrap">
	<img src="${img_path}/tt_comment.gif">
	<table id="mypage-table">
		<tr>
			<td colspan="3" class="td-left">나의 Review</td>
			<td colspan="2" class="td-right">전체 5개</td>
		</tr>
		<tr>
			<th><input type="checkbox"></th>
			<th>사진</th>
			<th>상품명</th>
			<th>제목</th>
			<th>등록일</th>
		</tr>
		<c:forEach var="review" items="${reviewList}">
			<tr>
				<td class="td-center"><input type="checkbox"></td>
				<td class="td-center"><img src="${path}/resource/img/shop/${review.thumbnail}" style="width: 45px;"></td>
				<td>
					${review.name}<br>
					${review.origin}<br>
					${review.category}
				</td>
				<td>${review.title}</td>
				<td class="td-center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${review.regist_date}"/></td>
			</tr>
		</c:forEach>
		<%-- 
		<c:forEach var="i" begin="0" end="4">
		<tr>
			<td class="td-center"><input type="checkbox"></td>
			<td class="td-center"><img src="${img_path}/shop_temp.jpg" style="width: 45px;"></td>
			<td class="td-center">너무 맘에 드네요.</td>
			<td class="td-center">2020-01-01 11:59:59</td>
		</tr>
		</c:forEach> --%>
	</table>
</div>