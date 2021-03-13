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
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<style type="text/css">
#login-search-table {
	margin: auto;
	width: 500px;
	border-spacing: 0px;
	border-radius: 10px;
	border: 1px solid gray;
}

#login-search-title {
	background-color: #222222;
	color: white;
}

#login-search-title td {
	padding: 5px;
	border-radius: 10px 10px 0px 0px;
	border: 1px solid #222222;
}

#login-search-info td {
	font-size: 14px;
	padding: 10px;
}

#login-search-form {
	background-color: #eeeeee;
}

#login-search-form>td {
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	
}

#login-search-form td {
	padding: 5px;
}

#login-search-form input {
	padding: 1px 2px;
	outline: none;
	font-size: 15px;
}

#login-search-submit td{
	text-align: center;
}

#login-search-submit input[type=button] {
	margin: 10px;
	padding: 3px;
	font-size: 15px;
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
	<div style="height:268px;"></div>
	<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
				<div id="login-search-wrap">
					<table id="login-search-table">
						<tr id="login-search-title">
							<td>
								ID, 비밀번호를 잊어버리셨나요?
							</td>
						</tr>
						<tr id="login-search-info">
							<td>
								ID, 비밀번호는 회원님께서 회원가입 시 가입하신 E-mail로 자동 송부되어집니다.<br>
								정보유출 방지를 위해, 비밀번호를 E-mail로 받으시고 바로 비밀번호를<br>
								변경하는 것을 권장합니다.
							</td>
						</tr>
						<tr id="login-search-form">
							<td>
								<table>
									<colgroup>
										<col width="40%">
										<col width="60%">
									</colgroup>
									<tr>
										<th style="text-align: left;">성명 : </th>
										<td><input type="text"></td>
									</tr>
									<tr>
										<th style="text-align: left;">E-mail : </th>
										<td><input type="text"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr id="login-search-submit">
							<td>
								<input type="button" value="ID, 비밀번호 E-mail로 요청하기">
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