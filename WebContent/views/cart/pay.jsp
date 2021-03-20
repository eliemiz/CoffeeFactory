<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
</style>

<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
      
   });
</script>
</head>
<body>
<jsp:include page="/views/common/header.jsp"/>
	<div style="height:250px;"></div>
	<table class="content-wrap">
	<tr>
		<td valign=top>	
			<table class="content-wrap" style="width:900px;">
				<tr>
					<td class="content-wrap-left">
						<img src='${path}/resource/img/cart/tt_step.gif'>
					</td>
					<td align="right"><img src='${path}/resource/img/cart/tt_step1.gif'></td>
				
				</tr>
			</table>	
				
			
			<style>
				.order
				{
					border : 1 solid #7F9DB9;
				}
				.price
				{
					border : 1 solid #7F9DB9;
					text-align : right;	
				}
			</style>
			<br>
			<table style="width:700px;">
				<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='${path}/resource/img/cart/dot_02.gif'><b>고객님께서 결제하실 내역입니다.</b></td>
				</tr>
			</table>
			
			<table height=5><tr><td></td></tr></table>

			<table align="center" style="margin:auto; width:900px;"  cellspacing=1 cellpadding=2 bgcolor=dfdfdf>
			<tr height=35 bgcolor='#FAFAFA' align=center>
			<td>상품가격</td>
			<td bgcolor='#ffffff'>
			<font color='#FE4520'>000 원</font>
			</td>
			
			
			
			<td>배송비</td>
			<td bgcolor='#ffffff'><font color='green'><span>무료배송</span></font></td>
			
			</tr>
			</table>
			
			
			
			
			<table height=5><tr><td></td></tr></table>


	
			
			<table><tr><td height=5></td></tr></table>
			
			
			
			
			<table width=100% cellspacing=0 cellpadding=0 style='border:1 dotted cccccc;background:f7f7f7;padding:5pt;'> 
			<tr><td align=center><font style='font-size:11pt;line-height:11pt;'>결제금액 &nbsp; : &nbsp;&nbsp; 
			<font style='font-size:14pt;line-height:14pt;font-family:arial,돋움;'><b><span id='Lay_price_str'>
			000</span></font> 원</b></font> <span id='coupon_check'></span> </td></tr>
			</table> 
			
			
			
			
			<table align="center" style="margin:auto; width:900px;">
			<tr>
			<td><img src='${path}/resource/img/cart/tt_order_01.gif'></td>
			<td align=right>
			<img src='${path}/resource/img/cart/btn_order_05.gif' style='cursor:pointer;' onclick="location.href='${path}/views/cart/cartlist.jsp'">
			</td>
			</tr>
			</table>
			
			<table align="center" style="margin:auto; width:900px;" width=100% cellspacing=0 cellpadding=0>
			<tr height='1' bgcolor='#CCCCCC'><td></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td></td></tr>
			</table>
		
	<form id="pay-inner" method="post">	
		<input type="hidden" name="proc">
		<table align="center" style="margin:auto; width:900px;">
			<tr height=25>
			<td width=5></td>
			<td width=100 nowrap style='padding-top:5px;'><img src='${path}/resource/img/cart/dot_012.gif'> 결제수단 선택</td>
			<td width=5></td>
			<td width=80%> 
			<table cellspacing=0 cellpadding=0 border=0>
			
			<tr>
			<td>
			
			<span>
			<input type=radio name="pay" value="무통장 입금"><b>무통장 입금</b>
			</span>
			
			<span>
			<input type=radio name="pay" value="신용카드"><b>신용카드</b>
			</span>
			
			<span>
			<input type=radio name="pay" value="계좌이체"><b>계좌이체</b>
			</span>
			
			<span>
			<input type=radio name="pay" value="휴대폰"><b>휴대폰</b>
			</span>
			
			
			</td>
			</tr>
			</table>
		
			
			</td>
			</tr>
			
			
			<tr height=30><td colspan=4>
			<table width=100% cellspacing=0 cellpadding=0>
			<tr height='1' bgcolor='#CCCCCC'><td></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td></td></tr>
			</table>
			</td></tr>
			
			<tr height=30>
			<td width=5></td>
			<td width=100 nowrap><img src='${path}/resource/img/cart/dot_012.gif'> 주문 고객성명</td>
			<td width=5></td>
			<td width=80%><input type="text" name="send_name"></td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 이메일</td>
			<td></td>
			<td><input type="text" name="send_email" size="40" placeholder="email@email.com"></td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 주문자 전화번호</td>
			<td></td>
			<td>
			
			<input type="text" id="phone1_1" size="4" maxlength="4"> -
			<input type="text" id="phone1_2" size="4" maxlength="4"> -
			<input type="text" id="phone1_3" size="4" maxlength="4">
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 주문자 휴대전화</td>
			<td></td>
			<td>
			<input type="text" id="phone2_1" size="4" maxlength="4"> -
			<input type="text" id="phone2_2" size="4" maxlength="4"> -
			<input type="text" id="phone2_3" size="4" maxlength="4">
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=75>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 주문자 주소</td>
			<td></td>
			<td>
			
			<table width=100% cellspacing=0 cellpadding=0 border=0><tr><td>
			
			<input type=text id="address1_1"> -
			<input type=text id="address1_2">
			<br>
			<input type=text id="address1_3" size="40"><br>
			<input type=text id="address1_4" size="40">
			
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			</td>
			<td valign='top' align='right'>
			</td>
			</tr>
	
			</table>
			
			<tr height=85>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 배송시 요청사항</td>
			<td></td>
			<td>
			<textarea name="comment" rows="5" cols="50"></textarea>
			</td>
			</tr>
			
			<tr height=30><td colspan=4>
			<table width=100% cellspacing=0 cellpadding=0>
			<tr height='1' bgcolor='#CCCCCC'><td></td></tr>
			<tr height='4' bgcolor='#E9E9E9'><td></td></tr>
			</table>
			</td></tr>
			
			<tr height=30>
			<td width=5></td>
			<td width=100 nowrap><img src='${path}/resource/img/cart/dot_012.gif'> 배송 고객 성명</td>
			<td width=5></td>
			<td width=80%><input type="text" name="recv_name"></td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 배송 고객 전화번호</td>
			<td></td>
			<td>
			
			<input type="text" id="phone3_1" size="4" maxlength="4"> -
			<input type="text" id="phone3_2" size="4" maxlength="4"> -
			<input type="text" id="phone3_3" size="4" maxlength="4">
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=30>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 배송 고객 휴대전화</td>
			<td></td>
			<td>
			<input type="text" id="phone4_1" size="4" maxlength="4"> -
			<input type="text" id="phone5_2" size="4" maxlength="4"> -
			<input type="text" id="phone6_3" size="4" maxlength="4">
			
			</td>
			</tr>
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			<tr height=75>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 배송 고객 주소</td>
			<td></td>
			<td>
			
			<table width=100% cellspacing=0 cellpadding=0 border=0><tr><td>
			
			<input type=text id="address2_1"> -
			<input type=text id="address2_2">
			<br>
			<input type=text id="address2_3" size="40"><br>
			<input type=text id="address2_4" size="40">
			
			<tr height=1><td colspan=4 background='${path}/resource/img/cart/line_01.gif'></td></tr>
			
			</td>
			<td valign='top' align='right'>
			</td>
			</tr>
			</table>
			
			
			<tr height=20>
			<td></td>
			<td><img src='${path}/resource/img/cart/dot_012.gif'> 구매내용 확인</td>
			<td></td>
			<td style='color:#999999;'><input type="checkbox" name="agree" id="agreeCk"> 주문 제품의 제품명, 제품가격, 배송정보를 확인하였으며, 구매에 동의합니다. (전자상거래법 제8조 제2항)
			</td>
			</tr>	

			<tr height=85>
			<td></td>
			<td></td>
			<td></td>
			<td>
			<span ><input type="image" src="${path}/resource/img/cart/cart_buy.gif" id="orderButton">
			</span>
			</td>
			</tr>
			</table>
		</form>
			
			
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
			</td>
			</table>
		
	<jsp:include page="/views/common/footer.jsp" />	
</body>
<script type="text/javascript">
	$("#orderButton").on("click", function(){
		if (!validCheck()) {
			return false;
		}
		setValue();
		
		$("[name=proc]").val("order");
		
		$("#pay-inner").submit();
		location.href="${path}/orderfin.jsp";
	});
function validCheck() {
	if ($("[name=send_name]").val() == "") {
		alert("주문 고객 이름이 입력되지 않았습니다.");
		return false;
	}
	if ($("#phone1_1").val() == "") {
		alert("주문 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone1_2").val() == "") {
		alert("주문 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone1_3").val() == "") {
		alert("주문 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone2_1").val() == "") {
		alert("주문 고객 휴대폰 번호를 입력해주세요.");
		return false;
	}
	if ($("#phone2_2").val() == "") {
		alert("주문 고객 휴대폰 번호를 입력해주세요.");
		return false;
	}
	if ($("#phone2_3").val() == "") {
		alert("주문 고객 휴대폰 번호를 입력해주세요.");
		return false;
	}
	if ($("#address1_1").val() == "") {
		alert("주문 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("#address1_2").val() == "") {
		alert("주문 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("#address1_3").val() == "") {
		alert("주문 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("#address1_4").val() == "") {
		alert("주문 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("[name=recv_name]").val() == "") {
		alert("배송 고객 이름이 입력되지 않았습니다.");
		return false;
	}
	if ($("#phone3_1").val() == "") {
		alert("배송 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone3_2").val() == "") {
		alert("배송 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone3_3").val() == "") {
		alert("배송 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone4_1").val() == "") {
		alert("배송 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone4_2").val() == "") {
		alert("배송 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#phone4_3").val() == "") {
		alert("배송 고객 전화번호를 입력해주세요.");
		return false;
	}
	if ($("#address2_1").val() == "") {
		alert("배송 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("#address2_2").val() == "") {
		alert("배송 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("#address2_3").val() == "") {
		alert("배송 고객 주소를 입력해주세요.");
		return false;
	}
	if ($("#address2_4").val() == "") {
		alert("배송 고객 주소를 입력해주세요.");
		return false;
	}
	if (!$("#agreeCk").prop("checked")) {
		alert("이용약관에 동의하셔야 가입하실 수 있습니다.");
		return false;
	} 
	return true;
}

function setValue() {
	var phone1_1 = $("#phone1_1").val();
	var phone1_2 = $("#phone1_2").val();
	var phone1_3 = $("#phone1_3").val();
	var phone2_1 = $("#phone2_1").val();
	var phone2_2 = $("#phone2_2").val();
	var phone2_3 = $("#phone2_3").val();
	var phone3_1 = $("#phone3_1").val();
	var phone3_2 = $("#phone3_2").val();
	var phone3_3 = $("#phone3_3").val();
	var phone4_1 = $("#phone4_1").val();
	var phone4_2 = $("#phone4_2").val();
	var phone4_3 = $("#phone4_3").val();
	$("[name=send_phone]").val(phone1_1 + "-" + phone1_2 + "-" + phone1_3);
	$("[name=send_phone2]").val(phone2_1 + "-" + phone2_2 + "-" + phone2_3);
	$("[name=recv_phone]").val(phone3_1 + "-" + phone3_2 + "-" + phone3_3);
	$("[name=recv_phone2]").val(phone4_1 + "-" + phone4_2 + "-" + phone4_3);
	
	var address1_1 = $("#address1_1").val();
	var address1_2 = $("#address1_2").val();
	var address1_3 = $("#address1_3").val();
	var address1_4 = $("#address1_4").val();
	var address2_1 = $("#address2_1").val();
	var address2_2 = $("#address2_2").val();
	var address2_3 = $("#address2_3").val();
	var address2_4 = $("#address2_4").val();
	$("[name=send_address]").val(address1_1 + address1_2 + address1_3 + address1_4);
	$("[name=recv_address]").val(address2_1 + address2_2 + address2_3 + address2_4);
}
</script>
</html>