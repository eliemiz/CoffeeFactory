<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/signin"/> 
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resource/css/common/common.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<link rel="stylesheet" href="${path}/resource/css/account/login.css">
<style type="text/css">
#signin1-wrap {
	width: 700px;
	margin: auto;
}

#signin1-wrap table {
	border: 0px;
	border-spacing: 0px;
}

#signin1-wrap table td {
	padding: 0px;
}

#signin1-wrap #signin1-title {
	width: 100%;
}

#signin1-wrap #signin1-title #signin1-title-info {
	padding: 10px; 
	text-align: center;
	color: navy;
	font-weight: bold;
	font-size: 14px;
}

#signin1-wrap #signin1-form {
	width: 90%;
	margin: auto;
}

#signin1-wrap #signin1-form span,
#signin1-wrap #signin1-form textarea {
	display: block;
}

#signin1-wrap #signin1-form span {
	padding: 5px;
}

#signin1-wrap #signin1-form textarea {
	width: 100%;
	font-family: '돋움';
	line-height: 150%;
	color: #202020;
	padding: 5px;
	outline: none;
}


</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
	<jsp:include page="/views/common/header.jsp"/>
	<div style="height:222px;"></div>
	<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
				<div id="signin1-wrap">
					<table id="signin1-title">
						<tr style="background-color: #f7f3f7;">
							<td>
								<img src="${img_path}/pwd_tt.gif">
							</td>
							<td style="text-align:right;">
								<img src="${img_path}/pwd_step2.gif">
							</td>
						</tr>
						<tr>
							<td colspan="2" id="signin1-title-info">
								가입 절차를 밟으시기 전에 아래의 이용약관을 읽어주시기 바랍니다.
							</td>
						</tr>
					</table>
					<table id="signin1-form">
						<tr>
							<td>
								<span>이용약관</span>
								<textarea rows="10" cols="85" readonly><jsp:include page="terms1.jsp"/></textarea>
								<span><label><input type="checkbox"> 위의 이용 약관에 동의합니다.</label></span>
							</td>
						</tr>
						<tr>
							<td style="height:20px;"></td>
						</tr>
						<tr>
							<td>
								<span>개인정보 수집 및 이용에 대한 안내</span>
								<textarea rows="10" cols="85" readonly><jsp:include page="terms2.jsp"/></textarea>
								<span><label><input type="checkbox"> 위의 개인정보 수집 동의 내용에 동의합니다.</label></span>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; padding: 20px;">
								<img src="${img_path}/btn_regis.gif">
							</td>
						</tr>
					</table>
				</div>
			</td>
			<td class="content-wrap-center-right">
			</td>
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
		</tr>
	</table>
	
	<jsp:include page="/views/common/footer.jsp"/>
	
</body>
</html>