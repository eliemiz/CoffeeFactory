<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resource/css/common/common.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<link rel="stylesheet" href="${path}/resource/css/account/mypage.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
	<jsp:include page="/views/common/header.jsp"/>
	<div style="height:268px;"></div>
	<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
				<table>
					<tr>
						<td style="vertical-align: top;">
							<jsp:include page="mypage_menu.jsp"/>
						</td>
						<td style="vertical-align: top; width:100%;">
							<div id="mypage-wrap">
								<div>
									<img src="${img_path}/tt_desk.gif">
									<table id="mypage-info-table">
										<tr>
											<th>별명</th>
											<td>temp_nick</td>
									 	</tr>
										<tr>
											<th>아이디</th>
											<td>himan</td>
									 	</tr>
									 	<tr>
											<th>이름</th>
											<td>홍길동</td>
									 	</tr>
									 	<tr>
											<th>회원그룹</th>
											<td>준회원</td>
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
										<c:forEach var="i" begin="0" end="2">
										<tr>
											<td class="td-center">100010</td>
											<td class="td-center">23,000원</td>
											<td class="td-center">신용카드</td>
											<td class="td-center">결제 완료</td>
											<td class="td-center">2021-05-01 15:11:10</td>
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
										<c:forEach var="i" begin="0" end="2">
										<tr>
											<td class="td-center"><img src="temp.jpg"></td>
											<td>[프리미엄 커피] 과테말라 와이칸</td>
											<td>보관 어떻게 해야 하나요?</td>
											<td class="td-center">2020-04-11 12:12:20</td>
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
										<c:forEach var="i" begin="0" end="2">
										<tr>
											<td class="td-center"><img src="temp.jpg"></td>
											<td>[프리미엄 커피] 과테말라 와이칸</td>
											<td class="td-center">11,000원</td>
											<td></td>
										</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</td>
					</tr>
				</table>
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