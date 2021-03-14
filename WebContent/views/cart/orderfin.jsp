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
			<table class="content-wrap" style="width:1100px;">
				<tr>
					<td class="content-wrap-left">
						<img src='${path}/resource/img/cart/tt_step.gif'>
					</td>
					<td align="right"><img src='${path}/resource/img/cart/tt_step4.gif'></td>
				
				</tr>
			</table>	
			
		<br>
		<table table class="content-wrap" align=center><tr><td>
		
		
		<table table class="content-wrap" style="width:500px;" cellspacing=0 cellpadding=0>
			<tr><td><img src='${path}/resource/img/cart/result0.gif'></td></tr>
		</table>
		
		<table table class="content-wrap" style="width:500px;" cellspacing=0 cellpadding=0>
			<tr><td><img src='${path}/resource/img/cart/result1.gif'></td></tr>
		</table>
		
		<table table class="content-wrap" style="width:1100px;" align ="center" cellspacing=0 cellpadding=0 style="margin-top: 10px; margin-bottom: 10px">
			<tr><td style="text-align:center"><a href="/coffeeFactory/Index.jsp"><img src='${path}/resource/img/cart/btn_confirm.gif'></a></td></tr>
		</table>
		
		<table table class="content-wrap" style="width:500px;" cellspacing=0 cellpadding=0>
			<tr>
			<td background='${path}/resource/img/cart/result2_bg.jpg' style='padding:5 0 0 130;'>
			<tr><td width=70>주문번호 : </td><td><b><font color=2a54c1>10000000001</font></b></td></tr>
			<tr><td>주문제품 : </td><td>[스페셜티 커피] 파나마 에스메랄다 게이샤  외 <b>1 </b>개</td></tr>
			<tr><td>결제금액 : </td><td><b>51,000원</b>  </td></tr>
			
			<tr><td>입금계좌 : </td><td>@@은행 <b>100000-04-122244</b> [예금주:커피공장]</td></tr>
					
			
		</table>
			<td class="content-wrap-right">
					<jsp:include page="/views/common/sidebar.jsp"/>
				</td>	
			</td></tr>
		</table>	
			</td>
			</tr>
		</table>
<jsp:include page="/views/common/footer.jsp" />	
</body>
</html>