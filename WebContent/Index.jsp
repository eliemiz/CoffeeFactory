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
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
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
	<div class="content-wrap">
		<div id="main_slide_wrap" style="width:3840px;">
			<img src="${path}/resource/img/main/bann0.jpg" style="float:left;">
			<img src="${path}/resource/img/main/bann1.jpg" style="float:left;">
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
			<h3>베스트 상품</h3>
			<table>
			<c:forEach var="i" begin="0" end="3">
				<tr>
				<c:forEach var="j" begin="0" end="3">
					<td>
						<table>
							<tr>
								<td><img src="${path}/resource/img/main/shop_temp.jpg"></td>
							</tr>
							<tr>
								<td>에스프레소(여왕)</td>
							</tr>
							<tr>
								<td>15,000원</td>
							</tr>
						</table>
					</td>
				</c:forEach>
				</tr>
			</c:forEach>
			</table>
		</div>
		<div id="main_best_review_wrap">
			<img src="${path}/resource/img/main/add_bann_04.jpg">
			<table id="main_best_review_table">
				<c:forEach var="i" begin="0" end="4">
				<tr>
					<td><img src="${path}/resource/img/main/shop_temp.jpg"></td>
					<td>
						첫 구매 원두였어요
						<p>에스프레소 (시그니처)</p>
					</td>
					<td>
						★★★★★
					</td>
					<td>
						커피마니아
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div id="main_sns_wrap">
			@coffeefactory<br>
			#커피공장 #원두커피 #원두 #커피원두 #드립백 #홈카페 #원두추천 #갓볶은원두<br>
			<img src="${path}/resource/img/main/sns_01.jpg">
			<img src="${path}/resource/img/main/sns_02.jpg">
			<img src="${path}/resource/img/main/sns_03.jpg">
			<img src="${path}/resource/img/main/sns_04.jpg">
			<img src="${path}/resource/img/main/sns_05.jpg">
			<img src="${path}/resource/img/main/sns_06.jpg">
		</div>
	</div>
	<jsp:include page="views/common/footer.jsp"/>
</body>
</html>