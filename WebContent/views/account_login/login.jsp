<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/login"/> 
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
#login-form-wrap {
	background-image: url(${img_path}/login1_bg.gif);
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){

		// id, account_id 여부
		var hasId = ${not empty param.id};
		var hasAccountId = ${not empty account_id};
		if (hasId) {
			if (hasAccountId) {
				location.href = "${path}";	
			} else {
				alert("입력하신 회원아이디는 존재하지 않습니다.");	
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
				<div id="login-form-wrap">
					<div id="login-form-inner">
						<table id="login-form-table">
							<tr>
								<td colspan="2">
									<img src="${img_path}/login1_t.gif">
								</td>
							</tr>
							<tr>
								<td colspan="2" style="height: 18px;"></td>
							</tr>
							<tr>
								<td style="width:155px; height:135px; text-align:center; vertical-align: bottom">
									<img src="${img_path}/login1_img.gif">
								</td>
								<td>
									<table>
										<tr>
											<td>
												<form method="post" id="login-form">
													<table>
														<tr>
															<td style="width:47px;">
																<img src="${img_path}/login1_id.gif">
															</td>
															<td>
																<input type="text" name="id" size="20" maxlength="12" tabindex="1" class="login-input">
															</td>
															<td rowspan="3">
																<img id="login-btn" src="${img_path}/login1_go.gif" style="margin:0px 0px 0px 13px">
															</td>
														</tr>
														<tr>
															<td colspan="2"></td>
														</tr>
														<tr>
															<td>
																<img src="${img_path}/login1_pw.gif">
															</td>
															<td>
																<input type="password"  name="pass" size="20" maxlength="16" tabindex="2" class="login-input">
															</td>
														</tr>
													</table>
												</form>
											</td>
										</tr>
										<tr>
											<td style="height: 23px;"></td>
										</tr>
										<tr>
											<td style="text-align: center">
												<table>
													<tr>
														<td>
															<a href="${path}/signin1.do">
																<img src="${img_path}/login1_join.gif">
															</a>
														</td>
														<td>
															<a href="${path}/login_search.do">
																<img src="${img_path}/login1_pwf.gif">
															</a>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
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
 	$("#login-btn").on("click", function(){
 		
 		// 유효성 체크
	 	if ($("[name=id]").val() == "") {
	 		alert("아이디를 입력해주세요.");
	 		return false;
	 	} else if ($("[name=pass]").val() == "") {
	 		alert("패스워드를 입력해주세요.");
	 		return false;
	 	}
 		
 		$("#login-form").submit();
 	});
</script>
</html>