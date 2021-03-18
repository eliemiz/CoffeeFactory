<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<div id="mypage-wrap">
	<img src="${img_path}/tt_order.gif">
	<table id="mypage-table">
		<tr>
			<td colspan="3" class="td-left">주문/배송 조회</td>
			<td colspan="2" class="td-right">전체 5개</td>
		</tr>
		<tr>
			<th>주문번호</th>
			<th>결제금액</th>
			<th>결제수단</th>
			<th>거래상태</th>
			<th>주문일시</th>
		</tr>
		<c:forEach var="order" items="${orderList}">
		<tr>
			<td class="td-center">${order.order_id}</td>
			<td class="td-center">${order.price}</td>
			<td class="td-center">${order.pay}</td>
			<td class="td-center">${order.state}</td>
			<td class="td-center">${order.order_date}</td>
		</tr>
		</c:forEach>
	</table>
</div>