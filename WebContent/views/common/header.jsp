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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
	<div id="header-wrap">
		<div id="header-top">
			<ul>
				<li>로그인</li>
				<li>회원가입</li>
				<li>장바구니</li>
				<li>위시리스트</li>
				<li>주문배송조회</li>
			</ul>
		</div>
		<div id="header-mid">
			<img src="logo.jpg"> 
			<img src="logo.jpg"> 
		</div>
		<div id="header-bottom">
			<ul>
				<li>블랜드 원두</li>
				<li>싱글 오리진 원두</li>
				<li>스페셜티 원두 외</li>
				<li>선물 세트</li>
			</ul>
			<input type="search">
			상세검색
			<img src="search.jpg">
		</div>
	</div>
</body>
</html>