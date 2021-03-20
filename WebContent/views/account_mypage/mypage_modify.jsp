<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="img_path" value="${path}/resource/img/account/mypage"/>
<script>
	// 초기값 설정
	$(document).ready(function(){
		
		$('#birth_year').val("${account.birthday}".split('-')[0]);
		$('#birth_month').val("${account.birthday}".split('-')[1]);
		$('#birth_date').val("${account.birthday}".split('-')[2]);
		$('#gender').val("${account.gender}");
		$('#email_1').val("${account.email.split('@')[0]}");
		$('#email_2').val("${account.email.split('@')[1]}");
		$('#phone1_1').val("${account.phone.split('-')[0]}");
		$('#phone1_2').val("${account.phone.split('-')[1]}");
		$('#phone1_3').val("${account.phone.split('-')[2]}");
		$('#phone2_1').val("${account.phone2.split('-')[0]}");
		$('#phone2_2').val("${account.phone2.split('-')[1]}");
		$('#phone2_3').val("${account.phone2.split('-')[2]}");
		$("#post_1").val("${account.post}".substr(0,3));
		$("#post_2").val("${account.post}".substr(3,3));
		
	});
</script> 
<div id="mypage-wrap">
	<img src="${img_path}/tt_info.gif">
	<form id="mypage-modify-inner" action="mypage_modify.do">
		<input type="hidden" name="proc">
		<table id="mypage-modify-form">
			<colgroup>
				<col width="30%">
				<col width="70%">
			</colgroup>
			<tbody>
				<tr>
					<th>성명</th>
					<td>
						<input type="text" size="15" value="${account.name}" readonly="readonly">
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
						<input type="text" size="15" value="${account.id}" readonly="readonly">
					</td>
				</tr>
				<tr>
					<th>닉네임(별명)</th>
					<td>
						<input type="text" size="15" name="nickname" value="${account.nickname}">
						<img src="${img_path}/regis_exists_bt2.gif" style="vertical-align: middle; cursor:pointer" onclick="hasNickname()"><br>
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
						<img src="${img_path}/regis_zip_bt.gif" style="vertical-align: middle;" onclick="goPopup()"><br>
						<input type="text" name="address1" style="margin-top: 5px; width: 300px;" value="${account.address}">
						<input type="text" name="address2" style="margin-top: 5px; width: 300px;" value="${account.address2}">
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
						<input type="image" id="mypage-modify-submit-btn" src="${img_path}/info_modify.gif">
						<input type="image" id="mypage-modify-cancel-btn" src="${img_path}/cancel_prev.gif">
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
</div>
<script type="text/javascript">

	$("#mypage-modify-submit-btn").on("click", function(){
		// 유효성 체크
		if (!validCheck()) {
			return false;
		}
		
		setValue();
		
		$("[name=proc]").val("update");
		
		$("#mypage-modify-inner").submit();
	});

	$("#email_domain").on("change", function(){
		$("#email_2").val($(this).val());
	});
	
	function validCheck() {
		
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
	
	function hasNickname() {
		if ("${account.nickname}" == $("[name=nickname]").val()){
			alert("사용 가능한 닉네임입니다.");
			return false;
		}
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