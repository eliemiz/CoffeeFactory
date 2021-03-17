<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resource/css/common/common.css">
<link rel="stylesheet" href="${path}/resource/css/common/header.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<style type="text/css">
#header-wrap a {
	text-decoration: none;
	color: white;
}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	

	$(document).ready(function(){
	
});
</script>
</head>
<body>
	<div id="header-wrap">
		<div id="header-top" class="clear-fix">
			<ul id="header-top-menu">
			<c:choose>
				<c:when test="${empty account_id}">
				<li><a href="${path}/login.do">로그인</a></li>
				<li><a href="${path}/signin1.do">회원가입</a></li>
				</c:when>
				<c:otherwise>
				<li><a href="${path}?proc=logout">로그아웃</a></li>
				<li><a href="${path}/mypage.do">마이페이지</a></li>
				</c:otherwise>
			</c:choose>
				<li><a href="${path}/cart.do">장바구니</a></li>
				<li><a href="${path}/wish.do">위시리스트</a></li>
				<li><a href="${path}/order.do">주문배송조회</a></li>
			</ul>
		</div>
		<div id="header-mid" class="clear-fix">
			<a id="header-mid-main-logo" href="${path}">
				<img src="${path}/resource/img/common/coffee_factory_logo.png">
			</a>
			<img id="header-mid-ani-banner" src="${path}/resource/img/common/ani_banner.gif">
		</div>
		<hr id="header-mid-hr">
		
		<div id="header-bottom" class="clear-fix">
			<ul id="header-bottom-menu">
				<li><a href="${path}/shop_main.do">싱글 오리진 원두</a></li>
				<li><a href="${path}/shop_main.do">스페셜티 원두 외</a></li>
				<li><a href="${path}/shop_main.do">선물 세트</a></li>
			</ul>
			<form method="post" action="${path}/shop_search.do">
			<div id="header-bottom-right">
				<input type="text" name="name" value="${param.name}"/>
				<input type="submit" id="sbtn" value="상세검색" style="background-color:black; color:white; border:0px;" />
				<a href="${path}/wish.do">
					<img src="${path}/resource/img/common/icon_cart.png">
				</a>
			</div>
			</form>
			
		</div>
	</div>
</body>
</html>