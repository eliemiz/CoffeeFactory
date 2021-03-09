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
<link rel="stylesheet" href="${path}/resource/css/index.css">
<style type="text/css">
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$("img").on("click", function(){
			$("#main_slide_wrap").css("margin-left", "-540px");
		});
	});
		
</script>
</head>
<body>
	<jsp:include page="views/common/header.jsp"/>

	<div id="main_slide_wrap" style="width:3840px;">
		<img src="${path}/resource/img/main/bann0.jpg" style="float:left;">
		<img src="${path}/resource/img/main/bann1.jpg" style="float:left;">
		슬라이드
	</div>
	<div id="main_recommend_wrap">
		<div id="main_recommend_left">
			<img src="${path}/resource/img/main/bann_20.jpg">
		</div>
		<div id="main_recommend_right_top">
			<img src="${path}/resource/img/main/add_bann_01.jpg">
		</div>
		<div id="main_recommend_right_bottom">
			<img src="${path}/resource/img/main/add_bann_02.jpg">
		</div>
	</div>
	<div id="main_introduction_wrap">
		소개 이미지(생략?)
	</div>
	<div id="main_by_category_wrap">
		<img src="${path}/resource/img/main/pi1.jpg">
		<img src="${path}/resource/img/main/pi2.jpg">
		<img src="${path}/resource/img/main/pi3.jpg">
		<img src="${path}/resource/img/main/pi4.jpg">
		<img src="${path}/resource/img/main/pi5.jpg">
	</div>
	<div id="main_best_product_wrap">
		베스트 상품
	</div>
	<div id="main_best_review_wrap">
		베스트 후기
	</div>
	<div id="main_sns_wrap">
		인스타그램
	</div>
	
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	김 리스트 <br>
	
</body>
</html>