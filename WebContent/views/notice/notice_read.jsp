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
<link rel="stylesheet" href="${path}/resource/css/notice.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
<style>

</style>
</head>
<body>
<jsp:include page="../common/header.jsp" />
<br><br>
<div style="height:222px;"></div>
<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	<div style="text-align: left;">

<img src="${path}/resource/img/notice/not_title.png" class="title"/><br>
<div>
	<form class="form1">
	<table align="center" style="margin:auto;" >
		<col width="670"><col width="380">
		<tr><td class="td_left5" name="title">감사 인사</td>
			<td class="td_right2">
			<input type="button" value="수정하기" class="btn_btn1" onclick="location.href='${path}/notice_revise.do'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='${path}/notice.do'"/>
			</td></tr>
		<tr><td colspan="2" class="td_right3" name="content">
			<img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;">&nbsp;
			등록일:2021.03.09&nbsp;<15:09>&nbsp;&nbsp;&nbsp;조회:1004
			</td></tr>
		<tr><td colspan="2" class="td_left6">
			<img src="${path}/resource/img/notice/coffee1.png" class="content"><br>
			"커피공장"을 찾아주신 고객 여러분 모두에게 감사 인사 드립니다.<br>
			행복한 하루 보내세요 :)
			</td></tr>
	</table>
	</form>
</div>
</td>
			<td class="content-wrap-center-right">
			</td>
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
		</tr>
	</table>
		
<br><br>
<jsp:include page="../common/footer.jsp" />
</body>
</html>