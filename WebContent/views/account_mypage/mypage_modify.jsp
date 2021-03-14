<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/> 
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resource/css/common/common.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<link rel="stylesheet" href="${path}/resource/css/account/mypage.css">
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
				<table>
					<tr>
						<td style="vertical-align: top;">
							<jsp:include page="mypage_menu.jsp"/>
						</td>
						<td style="vertical-align: top; width:100%;">
							<div id="mypage-wrap">
								<img src="${img_path}/tt_info.gif">
								<table id="mypage-modify-form">
									<colgroup>
										<col width="30%">
										<col width="70%">
									</colgroup>
									<tbody>
										<tr>
											<th>성명</th>
											<td>
												<input type="text" size="15">
											</td>
										</tr>
										<tr>
											<th>생년월일</th>
											<td>
												<select>
													<option value="0">연도</option>
													<c:forEach var="i" begin="1920" end="2021">
													<option value="${i}">${i}</option>
													</c:forEach>
												</select>
												<select>
													<option value="0">월</option>
													<c:forEach var="i" begin="1" end="12">
													<option value="${i}"><fmt:formatNumber minIntegerDigits="2" value="${i}"/></option>
													</c:forEach>
												</select>
												<select>
													<option value="0">일</option>
													<c:forEach var="i" begin="1" end="31">
													<option value="${i}"><fmt:formatNumber minIntegerDigits="2" value="${i}"/></option>
													</c:forEach>
												</select>
												<select>
													<option value="m">남성</option>
													<option value="f">여성</option>
												</select>
											</td>
										</tr>
										<tr>
											<th>회원 ID</th>
											<td>
												<input type="text" size="15">
												<img src="${img_path}/regis_exists_bt.gif" style="vertical-align: middle;"><br>
												<span>
													회원ID는 가입 후 변경이 불가능합니다.<br>
													회원ID와 비밀번호는 영문자로 시작하는 4~12자의 영문,숫자를 조합하셔서<br>
													공백없이 기입해주세요.
												</span>
											</td>
										</tr>
										<tr>
											<th>닉네임(별명)</th>
											<td>
												<input type="text" size="15">
												<img src="${img_path}/regis_exists_bt2.gif" style="vertical-align: middle;"><br>
												<span>회원닉네임(별명)은 20자 이내로 한글, 영문, 숫자 모두 입력하실 수 있습니다.</span>
											</td>
										</tr>
										<tr>
											<th>이메일</th>
											<td>
												<input type="text" class="w110">
												@
												<input type="text" class="w110">
												<select>
													<option>이메일선택</option>
													<option>daum.net</option>
													<option>naver.com</option>
												</select>
												<label><input type="checkbox"> 공지메일을 받음</label>
											</td>
										</tr>
										<tr>
											<th>일반전화</th>
											<td>
												<select>
													<option>선택</option>
													<option>010</option>
													<option>019</option>
												</select>
												-<input type="text" size="4" maxlength="4">
												-<input type="text" size="4" maxlength="4">
												<span>휴대폰 : </span>
												<select>
													<option>선택</option>
													<option>010</option>
													<option>019</option>
												</select>
												-<input type="text" size="4" maxlength="4">
												-<input type="text" size="4" maxlength="4">
											</td>
										</tr>
										<tr>
											<th>자택 주소</th>
											<td>
												<input type="text" size="4" maxlength="4">
												-<input type="text" size="4" maxlength="4">
												<img src="${img_path}/regis_zip_bt.gif" style="vertical-align: middle;"><br>
												<input type="text" style="margin-top: 5px; width: 300px;">
												<input type="text" style="margin-top: 5px; width: 300px;">
											</td>
										</tr>
										<tr>
											<td colspan="2" style="padding:0px; text-align: right;">
												<input type="image" id="withdrawal_btn" src="${img_path}/logout.gif" style="padding: 0px;">
											</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="2" style="text-align: center; border-top: 0px;">
												<img src="${img_path}/info_modify.gif">
												<img src="${img_path}/cancel_prev.gif">
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
						</td>
					</tr>
				</table>
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
	$("#withdrawal_btn").on("click", function(){
		if(confirm("정말 탈퇴하시겠습니까?")){
			alert("정상적으로 회원탈퇴되었습니다.");
			location.href = "${path}";
		}
	});

</script>
</html>