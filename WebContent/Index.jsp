<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<c:set var="img_path" value="${path}/resource/img/main"/>
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
#main-by-category-wrap .pi1 {
	background-image: url('${img_path}/pi1.jpg');
}

#main-by-category-wrap .pi2 {
	background-image: url('${img_path}/pi2.jpg');
}

#main-by-category-wrap .pi3 {
	background-image: url('${img_path}/pi3.jpg');
	height: 490px;
}

#main-by-category-wrap .pi4 {
	background-image: url('${img_path}/pi4.jpg');
}

#main-by-category-wrap .pi5 {
	background-image: url('${img_path}/pi5.jpg');
}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<jsp:include page="views/common/header.jsp"/>
	<div id="main_slide_wrap">
		<jsp:include page="views/common/main_slider.jsp"/>
	</div>
	<table class="content-wrap">
		<tr>
			<td colspan="4">
				<div style="height: 20px;"></div>
			</td>
		</tr>
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
				<div>
					<%-- <div id="main_recommend_wrap" class="clear-fix">
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
					<div id="main_introduction_wrap" class="clear-fix">
						소개 이미지(생략?)
					</div> --%>
					<div id="main-by-category-wrap" class="clear-fix">
						<ul>
							<li class="first">
								<div class="pi-box pi1">
								</div>
								<div class="pi-box pi2">
								</div>
							</li>
							<li class="second">
								<div class="pi-box pi3">
								</div>
							</li>
							<li class="third">
								<div class="pi-box pi4">
								</div>
								<div class="pi-box pi5">
								</div>
							</li>
						</ul>
					</div>
					<style>
					#main-best-product-title {
						text-align: center;
						margin-top: 50px;
					}
					#main-best-product-title span {
						vertical-align: middle;
					}
					</style>
					<div id="main-best-product-wrap" class="clear-fix">
						<div id="main-best-product-title" class="clear-fix">
							<span style="width:200px; height: 1px; border: 1px solid black; display: inline-block;"></span>
							<span style="font-size: 35px; margin: 0px 20px;"> 베스트 상품 </span>
							<span style="width:200px; height: 1px; border: 1px solid black; display: inline-block;"></span>
						</div>
						<style>
						#main-best-product-table {
							width: 100%;
						}
						
						#main-best-product-element {
							width: 255px;
							margin: 50px auto 0px;						
						}
						
						#main-best-product-element thead img {
							width: 100%;						
						}
						
						#main-best-product-element thead td{
							padding: 0px;
						}
						
						#main-best-product-element tbody td {
							padding: 10px;
						}
						
						</style>
						<table id="main-best-product-table" class="clear-fix">
						<c:forEach var="i" begin="0" end="3">
							<tr>
							<c:forEach var="j" begin="0" end="3">
								<td>
									<table id="main-best-product-element" style="border: 1px solid #dddddd;">
										<thead>
											<tr>
												<td><img src="${img_path}/shop_temp.jpg"></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													에스프레소(여왕)<br>
													<img src="${img_path}/ico_02.gif"><br>
													15,000원<br>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</c:forEach>
							</tr>
						</c:forEach>
						</table>
					</div>
					<div id="main-best-review-wrap" class="clear-fix">
						<%-- <img src="${path}/resource/img/main/add_bann_04.jpg"> --%>
						<style>
						#main-best-review-table {
							width: 100%;
							margin-top: 50px;
							border-spacing: 0px;
							border: 0px;
						}
						
						#main-best-review-table tr:first-child td {
							border-top: 3px solid #222222;
						}
						
						#main-best-review-table td {
							padding: 10px;
							border-bottom: 1px solid #dddddd;
						}
						
						#main-best-review-table tr:last-child  td {
							border-bottom: 1px solid #222222;
						}
						
						
						
						</style>
						<table id="main-best-review-table">
							<colgroup>
								<col width="100px">
								<col width="*">
								<col width="100px">
								<col width="150px">
							</colgroup>
							<c:forEach var="i" begin="0" end="4">
							<tr>
								<td class="td-center"><img src="${path}/resource/img/main/shop_temp.jpg" style="width:80px;"></td>
								<td>
									<span>첫 구매 원두였어요</span><br>
									<span style="font-size: 14px; color:gray;">에스프레소 (시그니처)</span>
								</td>
								<td class="td-center" style="color: #ffbbaa;">
									★★★★★
								</td>
								<td class="td-center">
									커피마니아
								</td>
							</tr>
							</c:forEach>
						</table>
					</div>
					<div id="main-sns-wrap" class="clear-fix" style="text-align: center; margin-top: 50px;">
						<span style="font-size: 35px;">인스타그램</span><br>
						<span style="font-size: 20px;">@coffeefactory</span><br>
						#커피공장 #원두커피 #원두 #커피원두 #드립백 #홈카페 #원두추천 #갓볶은원두<br>
						<div style="margin-top: 30px;">
							<img src="${path}/resource/img/main/sns_01.jpg">
							<img src="${path}/resource/img/main/sns_02.jpg">
							<img src="${path}/resource/img/main/sns_03.jpg">
							<img src="${path}/resource/img/main/sns_04.jpg">
							<img src="${path}/resource/img/main/sns_05.jpg">
							<img src="${path}/resource/img/main/sns_06.jpg">
						</div>
						
					</div>
				</div>
			</td>
			<td class="content-wrap-center-right">
			</td>
			<td class="content-wrap-right">
				<jsp:include page="views/common/sidebar.jsp"/>
			</td>
		</tr>
	</table>
	<jsp:include page="views/common/footer.jsp"/>
</body>
</html>