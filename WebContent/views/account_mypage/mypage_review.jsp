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
								<img src="${img_path}/tt_comment.gif">
								<table id="mypage-table">
									<tr>
										<td colspan="3" class="td-left">나의 Review</td>
										<td colspan="2" class="td-right">전체 5개</td>
									</tr>
									<tr>
										<th><input type="checkbox"></th>
										<th>사진</th>
										<th>제목</th>
										<th>등록일</th>
									</tr>
									<c:forEach var="i" begin="0" end="4">
									<tr>
										<td class="td-center"><input type="checkbox"></td>
										<td class="td-center"><img src="${img_path}/shop_temp.jpg" style="width: 45px;"></td>
										<td class="td-center">너무 맘에 드네요.</td>
										<td class="td-center">2020-01-01 11:59:59</td>
									</tr>
									</c:forEach>
								</table>
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