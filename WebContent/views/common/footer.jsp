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
<link rel="stylesheet" href="${path}/resource/css/common/common.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
	<div id="footer-wrap">
		<div id="footer-inner">
			<div id="footer-sitemap" class="clear-fix">
				<table id="footer-sitemap-table">
					<colgroup>
						<col width="20%">
						<col width="20%">
						<col width="20%">
						<col width="20%">
						<col width="20%">
					</colgroup>
					<tr>
						<td>
							<span class="footer-sitemap-category-title">COMPANY</span>
							<a>커피공장 소개</a>
							<a>제품 한눈에 보기</a>
						</td>
						<td>
							<span class="footer-sitemap-category-title">COFFEE</span>
							<a>나와 어울리는 원두 찾기</a>
							<a>블랜드 원두</a>
							<a>싱글 오리진 원두</a>
							<a>스페셜티 원두 외</a>
						</td>
						<td>
							<span class="footer-sitemap-category-title">SERVICE</span>
							<a>정기배송</a>
							<a>맞춤결제</a>
						</td>
						<td>
							<span class="footer-sitemap-category-title">PRODUCT</span>
							<a>드립백</a>
							<a>선물세트</a>
							<a>커피용품</a>
						</td>
						<td>
							<span class="footer-sitemap-category-title">COMMUNITY</span>
							<a>공지사항</a>
							<a>자주하는 질문</a>
							<a>상품 후기</a>
						</td>
					</tr>
				</table>
			</div>
			<div id="footer-sub" class="clear-fix">
				<ul>
					<li>
						<span class="footer-sub-title">
							공지사항
						</span>
						<div class="footer-sub-content">
							<table style="width:100%;">
								<c:forEach var="i" begin="0" end="4">
								<tr>
									<td>3월 신용카드무이자할부안내</td>
									<td style="text-align:right;">2021-03-03</td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</li>
					<li>
						<span class="footer-sub-title">
							콜센터
						</span>
						<div class="footer-sub-content">
							<span style="font-size: 30px; font-weight:bold; display:block;">031-123-4567</span>
							평일 09:00 ~ 17:00 | 점심 13:00 ~ 14:00<br>
							토,일,공휴일 휴무<br>
							<br>
							카카오톡 1:1 상담/주문(플러스 친구등록@커피공장)<br>
						</div>
					</li>
					<li>
						<span class="footer-sub-title">
							계좌번호
						</span>
						<div class="footer-sub-content">
							국민은행 191241-01-154821<br>
							커피공장
						</div>
					</li>
				</ul>
			</div>
			<div id="footer-list" class="clear-fix">
				<ul>
					<li>회사소개</li>
					<li>이용안내</li>
					<li>이용약관</li>
					<li>개인정보처리방침</li>
				</ul>
			</div>
			<div id="footer-info" class="clear-fix">
				<ul>
					<li>
						커피공장 | SINCE 2007<br>
						대표자 : 홍길동<br>
						주소 : 경기 파주시 송학1길 64-75(우 10145)<br>
						사업자등록번호 : 127-45-48568<br>
						통신판매업신고 : (2011고양시)2013경기파주1548<br>
					</li>
					<li>
						개인정보보호책임자 : 김길동<br>
						고객센터:031-123-4567<br>
						팩스:031-154-8484<br>
						제휴문의:coffeefactory@naver.com<br>
					</li>
					<li style="text-align:center;">
						<img src="${path}/resource/img/common/coffee_factory_logo2.png"><br>
						<span style="font-size:12px;">COPYRIGHT © 2018 ILSAN COFFEE ALL RIGHT RESERVED.</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>