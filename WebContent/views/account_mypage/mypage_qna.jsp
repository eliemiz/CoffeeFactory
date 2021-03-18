<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<div id="mypage-wrap">
	<img src="${img_path}/tt_qna.gif">
	<table id="mypage-table">
		<tr>
			<td colspan="3" class="td-left">나의 Q&A</td>
			<td colspan="2" class="td-right">전체 5개</td>
		</tr>
		<tr>
			<th><input type="checkbox"></th>
			<th>사진</th>
			<th>상품명</th>
			<th>문의제목</th>
			<th>등록일</th>
		</tr>
		<c:forEach var="qna" items="${qnaList}">
			<tr>
				<td class="td-center"><input type="checkbox"></td>
				<td class="td-center"><img src="${path}/resource/img/shop/${qna.thumbnail}" style="width: 45px;"></td>
				<td>
					${qna.name}<br>
					${qna.origin}<br>
					${qna.category}
				</td>
				<td>${qna.title}</td>
				<td class="td-center"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${qna.regist_date}"/></td>
			</tr>
		</c:forEach>
	</table>
</div>