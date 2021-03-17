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
<link rel="stylesheet" href="${path}/resource/css/account/login.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		var hasName = ${not empty param.name};
		var hasAccount = ${not empty account};
		if (hasName) {
			if (hasAccount) {
				alert("ID : ${account.id}\nPASS : ${account.pass}");
				location.href = "${path}/login.do";
			} else {
				alert("일치하는 데이터를 찾지 못했습니다.");
			}
		}
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
					<form method="post" id="login-search-inner">
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
											<td><input type="text" name="name"></td>
										</tr>
										<tr>
											<th style="text-align: left;">E-mail : </th>
											<td><input type="text" name="email"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr id="login-search-submit">
								<td>
									<input type="button" id="search_btn" value="ID, 비밀번호 E-mail로 요청하기">
								</td>
							</tr>					 
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
	
	<jsp:include page="/views/common/footer.jsp"/>
	
</body>
<script type="text/javascript">
	$("#search_btn").on("click", function(){
		if ($("[name=name]").val() == "") {
			alert("성함을 입력해 주세요.");
			return false;
		} else if ($("[name=email]").val() == "") {
			alert("가입 당시 등록하셨던 이메일 주소를 입력해 주세요.");
			return false;
		}
		
		$("#login-search-inner").submit();
	});
</script>
</html>