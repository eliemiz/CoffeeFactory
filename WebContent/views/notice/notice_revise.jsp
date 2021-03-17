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
<link rel="stylesheet" href="${path}/resource/css/notice.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	var proc = "${param.proc}"
	if(proc=="upt"){
		if(confirm("수정되었습니다.\n조회화면으로 이동하시겠습니까?")){
			location.href='${path}/notice.do';
		}
	}
	if(proc=="del"){
		alert("삭제되었습니다.");
		location.href='${path}/notice.do';
	}
	
	$(document).ready(function(){
		$("#rev_btn").on("click",function(){
			if(confirm("수정하시겠습니까?")){
				$("[name=proc]").val("upt"));
				$("form1").submit();
			}
		});
		$("#del_btn").on("click",function(){
			if(confirm("삭제하시겠습니까?")){
				$("[name=proc]").val("del");
				$("form1").submit();
			}
		});
	});
		
</script>
</head>
<body>
<jsp:include page="../common/header.jsp" />
<br><br>
<div style="height:222px;"></div>

<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	<div style="text-align: left;">
<img src="${path}/resource/img/notice/not_title.png" class="title"/><br>

<div>
	<form class="form1">
		<input type="hidden" name="proc" value=""/>
	<table align="center" style="margin:auto;" >
		<col width="200"><col width="850">
		<tr><td colspan="2" class="td_right4">
			<input type="button" value="삭제하기" name="del" class="btn_btn1" id="del_btn" onclick="location.href='${path}/notice.do'"/>
			<input type="button" value="수정하기" name="upt" class="btn_btn1" id="rev_btn" onclick="location.href='${path}/notice.do'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='${path}/notice.do'"/>
			</td></tr>
			<c:choose>
				<c:when test="${not empty notice.title}">
		<tr><th class="th_center2" name="title">TITLE</th>
			<td class="td_left7">
				<input type="text" name="title" size="60" value="${notice.title}"/>
				</td>
			  <tr>
		<tr><th class="th_center2" name="image">첨부파일</th>
			<td class="td_left7">
				<div class="file_input">
					<label>
						<input type="file" onchange="javascript:document.getElementById('file_route').value=this.value"
						name="image" value="${notice.image}">
					</label>
				</div>
			</td>
		<tr>	  
		<tr><th class="th_center2" name="content">CONTENT</th>
			<td class="td_left7">
				<textarea id="content" name="content" class="content2" value="${notice.content}">
				</textarea>
			</td>
		</tr> 
		</c:when> 
		</c:choose> 
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
<br><br>
<jsp:include page="../common/footer.jsp" />
</body>
</html>