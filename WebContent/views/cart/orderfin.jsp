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
					<td align="right"><img src='${path}/resource/img/cart/tt_step4.gif'></td>
				
				</tr>
			</table>	
			
		<br>
		<table class="content-wrap" align=center><tr><td>
		
		
		<table class="content-wrap" style="width:500px;" cellspacing=0 cellpadding=0>
			<tr><td><img src='${path}/resource/img/cart/result0.gif'></td></tr>
		</table>
		
		<table class="content-wrap" style="width:500px;" cellspacing=0 cellpadding=0>
			<tr><td><img src='${path}/resource/img/cart/result1.gif'></td></tr>
		</table>
		
		<table class="content-wrap" style="width:1100px;" align ="center" cellspacing=0 cellpadding=0 style="margin-top: 10px; margin-bottom: 10px">
			<tr><td style="text-align:center"><a href="/coffeeFactory/Index.jsp"><img src='${path}/resource/img/cart/btn_confirm.gif'></a></td></tr>
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