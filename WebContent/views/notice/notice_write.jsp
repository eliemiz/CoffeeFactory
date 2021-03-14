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
	
	$(document).ready(function(){
		$("#ins_btn").on("click",function(){
			if(confirm("등록하시겠습니까?")){
				$("form1").attr("action","${path}/notice.do");
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
	<form class="form1" method="post">
	<table align="center" style="margin:auto;" >
		<col width="200"><col width="850">
			<!-- backend작업필요부분
			<input id="notice_id" type="hidden" name="notice_id" value="10000">
       		<input id="regist_date" type="hidden" name="posting_date_s" value="2021-02-26">
       		<input id="views" type="hidden" name="views" value="0">
       		 -->
		<tr><td colspan="2" class="td_right4">
			<input type="button" value="등록" class="btn_btn1" id="ins_btn" onclick="location.href='${path}/notice.do'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='${path}/notice.do'"/>
			</td></tr>
		<tr><th class="th_center2" name="title">TITLE</th>
			<td class="td_left7">
				<input type="text" id="title" name="title" size="60" placeholder="제목을 입력하세요"/>
				</td>
			  <tr>
		<tr><th class="th_center2" name="image">첨부파일</th>
			<td class="td_left7">
				<div class="file_input">
					<label>
						<input type="file" onchange="javascript:document.getElementById('file_route').value=this.value">
					</label>
				</div>
			</td>
		<tr>	  
		<tr><th class="th_center2">CONTENT</th>
			<td class="td_left7">
				<textarea id="content" name="content" class="content2" placeholder="내용을 입력하세요"></textarea>
			</td>
		<tr>           
	</table>
	</form>
</div>
<br><br>
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