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
	
	var hasAccountId = ${not empty account_id};
	if (!hasAccountId) {
		alert("로그인이 필요한 페이지입니다.");
		location.href = "${path}/login.do";
	}
	
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
						<c:choose>
							<c:when test="${query == 'main'}">
							<jsp:include page="mypage_main.jsp"/>
							</c:when>
							<c:when test="${query == 'order'}">
							<jsp:include page="mypage_order.jsp"/>
							</c:when>
							<c:when test="${query == 'wish'}">
							<jsp:include page="mypage_wish.jsp"/>
							</c:when>
							<c:when test="${query == 'qna'}">
							<jsp:include page="mypage_qna.jsp"/>
							</c:when>
							<c:when test="${query == 'review'}">
							<jsp:include page="mypage_review.jsp"/>
							</c:when>
							<c:when test="${query == 'modify'}">
							<jsp:include page="mypage_modify.jsp"/>
							</c:when>
							<c:otherwise>
							<jsp:include page="mypage_main.jsp"/>
							</c:otherwise>
						</c:choose>
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