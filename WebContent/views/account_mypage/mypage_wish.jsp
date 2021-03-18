<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<div id="mypage-wrap">
	<img src="${img_path}/tt_wish.gif">
	<table id="mypage-table">
		<tr>
			<td colspan="3" class="td-left">위시리스트</td>
			<td colspan="2" class="td-right">전체 5개</td>
		</tr>
		<tr>
			<th><input type="checkbox"></th>
			<th>이미지</th>
			<th>상품명</th>
			<th>가격</th>
			<th></th>
		</tr>
		<c:forEach var="wish" items="${wishList}">
			<tr>
				<td><input type="checkbox"></td>
				<td class="td-center"><img src="${path}/resource/img/shop/${wish.thumbnail}" style="width: 45px;"></td>
				<td>
					${wish.name}<br>
					${wish.origin}<br>
					${wish.category}
				</td>
				<td class="td-center">
					<fmt:formatNumber pattern="#,###원" value="${wish.min_price}"/> ~ 
					<fmt:formatNumber pattern="#,###원" value="${wish.max_price}"/>
				</td>
				<td class="td-center"><img src="${img_path}/btn_wish.gif"></td>
			</tr>
			</c:forEach>
	</table>
</div>