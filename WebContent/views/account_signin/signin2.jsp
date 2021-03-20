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
	
	if ("${param.proc}" == "insert") {
		alert("회원가입 되었습니다.");
		location.href = "${path}";
	}
	
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
				<div id="signin2-wrap">
					<table id="signin2-title">
						<tr style="background-color: #f7f3f7;">
							<td>
								<img src="${img_path}/pwd_tt.gif">
							</td>
							<td style="text-align:right;">
								<img src="${img_path}/pwd_step3.gif">
							</td>
						</tr>
						<tr>
							<td colspan="2" id="signin2-title-info">
								1. 다음의 회원정보를 입력하여 주시면 가입절차가 완료됩니다.<br>
								2. 허위로 작성된 가입정보일 경우 임의로 삭제처리될 수 있으니 주의해 주세요.
							</td>
						</tr>
					</table>
					<form id="signin2-inner" method="post">
						<input type="hidden" name="proc">
						<table id="signin2-form">
							<colgroup>
								<col width="30%">
								<col width="70%">
							</colgroup>
							<tbody>
								<tr>
									<th>이름(실명)</th>
									<td>
										<input type="text" name="name" size="15">
									</td>
								</tr>
								<tr>
									<th>생년월일</th>
									<td>
										<input type="hidden" name="birthday">
										<select id="birth_year">
											<option value="0">연도</option>
											<c:forEach var="i" begin="1920" end="2021">
											<option value="${i}">${i}</option>
											</c:forEach>
										</select>
										<select id="birth_month">
											<option value="0">월</option>
											<c:forEach var="i" begin="1" end="12">
											<option value="<fmt:formatNumber minIntegerDigits='2' value='${i}'/>">
												<fmt:formatNumber minIntegerDigits="2" value="${i}"/>
											</option>
											</c:forEach>
										</select>
										<select id="birth_date">
											<option value="0">일</option>
											<c:forEach var="i" begin="1" end="31">
											<option value="<fmt:formatNumber minIntegerDigits='2' value='${i}'/>">
												<fmt:formatNumber minIntegerDigits="2" value="${i}"/>
											</option>
											</c:forEach>
										</select>
										<select name="gender">
											<option value="M">남성</option>
											<option value="F">여성</option>
										</select>
									</td>
								</tr>
								<tr>
									<th>회원 ID</th>
									<td>
										<input type="text" name="id" size="15">
										<img src="${img_path}/regis_exists_bt.gif" style="vertical-align: middle; cursor:pointer;" onclick="hasId()"><br>
										<span>
											회원ID는 가입 후 변경이 불가능합니다.<br>
											회원ID와 비밀번호는 영문자로 시작하는 4~12자의 영문,숫자를 조합하셔서<br>
											공백없이 기입해주세요.
										</span>
									</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td>
										<input type="password" name="pass" size="15">
										<span>재입력</span>
										<input type="password" name="pass_confirm" size="15">
										<span>(6자리 이상)</span>
									</td>
								</tr>
								<tr>
									<th>닉네임(별명)</th>
									<td>
										<input type="text" name="nickname" size="15">
										<img src="${img_path}/regis_exists_bt2.gif" style="vertical-align: middle; cursor:pointer;" onclick="hasNickname()"><br>
										<span>회원닉네임(별명)은 20자 이내로 한글, 영문, 숫자 모두 입력하실 수 있습니다.</span>
									</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>
										<input type="hidden" name="email">
										<input type="text" id="email_1" class="w110">
										@
										<input type="text" id="email_2" class="w110">
										<select id="email_domain">
											<c:forEach var="domain" items="${domains}">
											<option value="${domain.value}">${domain.key}</option>
											</c:forEach>
										</select>
										<input type="hidden" name="mail_recv">
										<label><input type="checkbox" id="mail_recv"> 공지메일을 받음</label>
									</td>
								</tr>
								<tr>
									<th>휴대폰 번호</th>
									<td>
										<input type="hidden" name="phone1">
										<input type="hidden" name="phone2">
										<div>
											<select id="phone1_1">
												<c:forEach var="code" items="${area_code}">
												<option value="${code.value}">${code.key}</option>
												</c:forEach>
											</select>
											- <input type="text" id="phone1_2" size="4" maxlength="4">
											- <input type="text" id="phone1_3" size="4" maxlength="4">
										</div>
										<div style="margin-top:5px;">
											<span>자택전화번호 : </span>
											<select id="phone2_1">
												<c:forEach var="code" items="${area_code_ex}">
												<option value="${code.value}">${code.key}</option>
												</c:forEach>
											</select>
											- <input type="text" id="phone2_2" size="4" maxlength="4">
											- <input type="text" id="phone2_3" size="4" maxlength="4">
										</div>
									</td>
								</tr>
								<tr>
									<th>자택 주소</th>
									<td>
										<input type="hidden" name="post">
										<input type="text" id="post_1" size="4" maxlength="4">
										- <input type="text" id="post_2" size="4" maxlength="4">
										<img src="${img_path}/regis_zip_bt.gif" style="vertical-align: middle; cursor:pointer;" onclick="goPopup()"><br>
										<input type="text" name="address1" style="margin-top: 5px; width: 300px;">
										<input type="text" name="address2" style="margin-top: 5px; width: 300px;">
									</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="2" style="text-align: center;">
										<input type="image" id="signin_submit_btn" src="${img_path}/regis_submit_bt.gif" style="cursor:pointer;">
										<input type="image" id="signin_cancel_btn" src="${img_path}/regis_cancel_bt.gif" style="cursor:pointer;">
									</td>
								</tr>
							</tfoot>
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
	<iframe id="temp"></iframe>
	
	<jsp:include page="/views/common/footer.jsp"/>
	
</body>
<script type="text/javascript">
	$("#signin_submit_btn").on("click", function(){
			
		// 유효성 체크
		if (!validCheck()) {
			return false;
		}
		
		setValue();
		
		$("[name=proc]").val("insert");
		
		$("#signin2-inner").submit();
	});
	
	$("#signin_cancel_btn").on("click", function(){
		location.href="${path}/signin1.do";
	});
	
	$("#email_domain").on("change", function(){
		$("#email_2").val($(this).val());
	});
	
	function validCheck() {
		if ($("[name=name]").val() == "") {
			alert("이름이 입력되지 않았습니다.");
			return false;
		}
		if ($("#birth_year").val() == 0) {
			alert("생년월일을 선택해주세요.");
			return false;
		}
		if ($("#birth_month").val() == 0) {
			alert("생년월일을 선택해주세요.");
			return false;
		}
		if ($("#birth_date").val() == 0) {
			alert("생년월일을 선택해주세요.");
			return false;
		}
		if ($("[name=id]").val() == "") {
			alert("아이디가 입력되지 않았습니다.");
			return false;
		}
		var idReg = /^[A-Za-z]+[A-Za-z0-9]{3,11}$/g;
		if (!idReg.test($("[name=id]").val())) {
			alert("아이디는 영문자+숫자 조합의 4~12자 사이로 입력해야 합니다.");
			return false;
		}
		var pass_length = $("[name=pass]").val().length
		if(pass_length < 6 || pass_length > 50) {
			alert("패스워드는 6자 이상 50자 이하이어야 합니다.");
			return false;
		}
		if ($("[name=pass]").val() != $("[name=pass_confirm]").val()) {
			alert("패스워드 재입력이 일치하지 않습니다.");
			return false;
		}
		if ($("#email_1").val() == "") {
			alert("이메일 주소를 입력해주세요");
			return false;
		}
		if ($("#email_2").val() == "") {
			alert("이메일 주소를 입력해주세요");
			return false;
		}
		if ($("#phone1_1").val() == "") {
			alert("휴대전화번호를 입력해주세요.");
			return false;
		}
		if ($("#phone1_2").val() == "") {
			alert("휴대전화번호를 입력해주세요.");
			return false;
		}
		if ($("#phone1_3").val() == "") {
			alert("휴대전화번호를 입력해주세요.");
			return false;
		}
		if ($("[name=address1]").val() == "") {
			alert("자택 주소를 입력해주세요");
			return false;
		}
		
		return true;
	}
	
	function setValue() {
		var birth_year = $("#birth_year").val();
		var birth_month = $("#birth_month").val();
		var birth_date = $("#birth_date").val();
		$("[name=birthday]").val(birth_year + "-" + birth_month + "-" + birth_date);
		
		var email_1 = $("#email_1").val();
		var email_2 = $("#email_2").val();
		$("[name=email]").val(email_1 + "@" + email_2);
		
		var mail_recv = $("#mail_recv").val();
		$("[name=mail_recv]").val(mail_recv?"Y":"N");
		
		var phone1_1 = $("#phone1_1").val();
		var phone1_2 = $("#phone1_2").val();
		var phone1_3 = $("#phone1_3").val();
		var phone2_1 = $("#phone2_1").val();
		var phone2_2 = $("#phone2_2").val();
		var phone2_3 = $("#phone2_3").val();
		$("[name=phone1]").val(phone1_1 + "-" + phone1_2 + "-" + phone1_3);
		$("[name=phone2]").val(phone2_1 + "-" + phone2_2 + "-" + phone2_3);
		
		var post_1 = $("#post_1").val();
		var post_2 = $("#post_2").val();
		$("[name=post]").val(post_1 + post_2);
	}
	
	
	function goPopup(){
		var pop = window.open("${path}/views/common/jusoPopup.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
	}
	function jusoCallBack(roadAddrPart1, addrDetail, zipNo){
		var zipNo1 = zipNo.substr(0, 3);
		var zipNo2 = zipNo.substr(3, 3);
		document.querySelector("#post_1").value = zipNo1;
		document.querySelector("#post_2").value = zipNo2;
		document.querySelector("[name=address1]").value = roadAddrPart1;
		document.querySelector("[name=address2]").value = addrDetail;
	}
	
	function hasId() {
		$.ajax({
			type:"post",
			url:"${path}/hasId.do",
			data:{id:$("[name=id]").val()},
			dataType:"json",
			success:function(data){
				if(data.hasId){
					alert("중복된 ID입니다.");
				} else {
					alert("사용 가능한 ID입니다.");
				}
			},
			error:function(err){
				alert("error occurred");
				console.log(err);
			}
		});
	}
	
	function hasNickname() {
		$.ajax({
			type:"post",
			url:"${path}/hasNickname.do",
			data:{nickname:$("[name=nickname]").val()},
			dataType:"json",
			success:function(data){
				if(data.hasId){
					alert("중복된 닉네임입니다.");
				} else {
					alert("사용 가능한 닉네임입니다.");
				}
			},
			error:function(err){
				alert("error occurred");
				console.log(err);
			}
		});
	}
</script>
</html>