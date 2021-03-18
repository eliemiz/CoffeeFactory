<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<div id="mypage-wrap">
	<div>
		<img src="${img_path}/tt_desk.gif">
		<table id="mypage-info-table">
			<tr>
				<th>별명</th>
				<td>${account.nickname}</td>
		 	</tr>
			<tr>
				<th>아이디</th>
				<td>${account.id}</td>
		 	</tr>
		 	<tr>
				<th>이름</th>
				<td>${account.name}</td>
		 	</tr>
		 	<tr>
				<th>회원그룹</th>
				<td>${account.auth}</td>
		 	</tr>
		</table>
	</div>
	<div>
		<img src="${img_path}/str_desk_order.gif">
		<table id="mypage-order-table">
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
	<div>
		<img src="${img_path}/str_desk_qna.gif">
		<table id="mypage-qna-table">
			<tr>
				<th>사진</th>
				<th>상품명</th>
				<th>문의제목</th>
				<th>등록일</th>
			</tr>
			<c:forEach var="qna" items="${qnaList}">
			<tr>
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
	<div>
		<img src="${img_path}/str_desk_wish.gif">
		<table id="mypage-wish-table">
			<tr>
				<th>사진</th>
				<th>상품명</th>
				<th>가격</th>
				<th></th>
			</tr>
			<c:forEach var="wish" items="${wishList}">
			<tr>
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
				<td></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</div>