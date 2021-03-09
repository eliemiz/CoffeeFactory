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
<link rel="stylesheet" href="${path}/resource/css/common/footer.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
	<div id="footer-wrap">
		<div id="footer-sitemap">
			<ul>
				<li>
					COMPANY
					<ul>
						<li>커피공장 소개</li>
						<li>제품 한눈에 보기</li>
					</ul>
				</li>
				<li>
					COFFEE
					<ul>
						<li>나와 어울리는 원두 찾기</li>
						<li>블랜드 원두</li>
						<li>싱글 오리진 원두</li>
						<li>스페셜티 원두 외</li>
					</ul>
				</li>
				<li>
					SERVICE
					<ul>
						<li>정기배송</li>
						<li>맞춤결제</li>
					</ul>
				</li>
				<li>
					PRODUCT
					<ul>
						<li>드립백</li>
						<li>선물세트</li>
						<li>커피용품</li>
					</ul>
				</li>
				<li>
					COMMUNITY
					<ul>
						<li>공지사항</li>
						<li>자주하는 질문</li>
						<li>상품 후기</li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="footer-sub">
			<div id="footer-sub-notice">
			</div>
			<div id="footer-sub-center">
			</div>
			<div id="footer-sub-account">
			</div>
		</div>
		<div id="footer-list">
			<ul>
				<li>회사소개</li>
				<li>이용안내</li>
				<li>이용약관</li>
				<li>개인정보처리방침</li>
			</ul>
		</div>
		<div id="footer-info">
			<div>
				<div>
					커피공장 | SINCE 2007
					대표자 : 홍길동
					주소 : 경기 파주시 송학1길 64-75(우 10145)
					사업자등록번호 : 127-45-48568
					통신판매업신고 : (2011고양시)2013경기파주1548
				</div>
				<div>
					개인정보보호책임자 : 김길동
					고객센터:031-123-4567
					팩스:031-154-8484
					제휴문의:coffeefactory@naver.com
				</div>
			</div>
			<div>
				<img src="logo.jpg">
				COPYRIGHT © 2018 ILSAN COFFEE ALL RIGHT RESERVED.
			</div>
		</div>
	
	</div>
</body>
</html>