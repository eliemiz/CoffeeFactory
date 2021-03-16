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
<link rel="stylesheet" href="${path}/resource/css/account/signin.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
	<jsp:include page="/views/common/header.jsp"/>
	<div style="height:268px;"></div>
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
								<span><label><input type="checkbox" id="check1"> 위의 이용 약관에 동의합니다.</label></span>
							</td>
						</tr>
						<tr>
							<td style="height:20px;"></td>
						</tr>
						<tr>
							<td>
								<span>개인정보 수집 및 이용에 대한 안내</span>
								<textarea rows="10" cols="85" readonly><jsp:include page="terms2.jsp"/></textarea>
								<span><label><input type="checkbox" id="check2"> 위의 개인정보 수집 동의 내용에 동의합니다.</label></span>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; padding: 20px;">
								<input type="image" id="signin_btn" src="${img_path}/btn_regis.gif">
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
<script type="text/javascript">
	$("#signin_btn").on("click", function(){
		if (!$("#check1").prop("checked")) {
			alert("이용약관에 동의하셔야 가입하실 수 있습니다.");
			return false;
		} else if (!$("#check2").prop("checked")) {
			alert("개인정보 수집내용에 동의하셔야 가입하실 수 있습니다.");
			return false;
		}
		
		location.href="${path}/signin2.do";
	});
</script>
</html>