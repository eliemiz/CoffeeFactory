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
<link rel="stylesheet" href="${path}/resource/css/common/sidebar.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<style type="text/css">
#sidebar-wrap {
	position:absolute;
	width: inherit;
}

#sidebar-wrap #sidebar-logo {
	width: 100%;
	display: block;
}

#sidebar-wrap #sidebar-table {
	width: 100%;
	margin: 20px 0px;
	background-color: white;
	border-spacing: 0px;
	border: 1px solid #dddddd;
}

#sidebar-wrap #sidebar-table td {
	border-bottom: 1px solid #dddddd;
	font-weight: bold;
	padding: 5px 0px;
}

#sidebar-wrap a {
	text-decoration: none;
	color: #222222;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var sidebar = $("#sidebar-wrap");	// 사이드바
		var sidebar_base = sidebar.offset().top;	// 초기위치
		var sidebar_gap = 57; 
		initSidebar();
		
		$(window).scroll(() =>{
			refreshSidebar();
		});
		
		// 사이드바 초기화
		function initSidebar() {
			sidebar.css("top", $(window).scrollTop() + sidebar_base + "px");
			refreshSidebar();
		}
		
		// 사이드바 갱신
		function refreshSidebar() {
			if ($(window).scrollTop() > sidebar_base - sidebar_gap) {
				sidebar.css("top", $(window).scrollTop() + sidebar_gap + "px");
			} else {
				sidebar.css("top", sidebar_base + "px");
			}
		}
	});

	
		
</script>
</head>
<body>
	<div id="sidebar-wrap">
		<div>
			<img id="sidebar-logo" src="${path}/resource/img/common/add_bann_03.jpg">
		</div>
		<div>
			<table id="sidebar-table" style="text-align: center;">
				<tr>
					<td style="font-size: 13.5px">
						<a href="${path}/notice.do">공지사항</a>
					</td>
				</tr>
				<tr>
					<td style="font-size: 13.5px">
						<a href="${path}/frq_qna.do">자주하는 질문</a>
					</td>
				</tr>
				<tr>
					<td style="font-size: 13.5px">
						<a href="${path}/cart.do">장바구니</a>
					</td>
				</tr>
				<tr>
					<td style="font-size: 13.5px">
						<a href="${path}/wish.do">위시리스트</a>
					</td>
				</tr>
				<tr>
					<td style="font-size: 13.5px">
						<a href="${path}/order.do">배송조회</a>
					</td>
				</tr>
				<tr>
					<td style="font-size: 13.5px">
						<a href="${path}/review.do">상품 후기</td>
					</td>
				</tr>
				<tr>
					<td style="cursor: pointer;" onclick="location.href='#'">
						<img src="${path}/resource/img/common/icon_go_top.png"><br>
						<span style="color:#8b8b8b; font-size:14px;">TOP</span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
	$("#top_btn").on("click", function(){
		location.href="";	
	});
</script>
</html>
