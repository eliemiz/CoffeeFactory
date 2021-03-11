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

#sidebar-logo {
	width: 100%;
	display: block;
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
			<table style="text-align: center;">
				<tr><td style="font-size:13.5px">자주하는 질문</td></tr>
				<tr><td style="font-size:13.5px">고객센터</td></tr>
				<tr><td style="font-size:13.5px">배송조회</td></tr>
				<tr><td style="font-size:13.5px">상품 후기</td></tr>
				<tr><td style="font-size:13.5px">사업자 샘플</td></tr>
				<tr><td style="font-size:13.5px">이벤트</td></tr>
				<tr>
					<td>
						<img src="${path}/resource/img/common/icon_go_top.png"><br>
						<span style="color:#8b8b8b; font-size:14px;">TOP</span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
