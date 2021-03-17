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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
 	$(document).ready(function() {

		 $(".data").on("click",function(){
	         // $(this): 클릭한 class data를 지정
	         // .children(): 바로 밑 하위 td들을 지정
	         // .eq(1): tr하위의 두 번째 td.
	         var question = $(this).children().eq(1).text();
	         //alert(question); // 요청값 넘길 시, 잘넘어가는지 반드시확인해보기
	         //${path}/컨트롤uri이름?요청key="+요청값";
	         location.href="${path}/fre_qna_answer.do?question="+question;
	         //alert(question);
	      });
	}); 
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	 <div style="height:222px;"></div>
	 <table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	<div style="text-align: left;">
		<img src="${path}/resource/img/review/frequent.png" />
	</div>
<div>
	<form class="form1">
		<table align="center" style="border-collapse: collapse; margin:auto;">

			<col width="96">
			<col width="640">
			<col width="98">
			<col width="70">
			<col width="150">
		
			<tr>
				<th class="th_center">번호</th>
				<th class="th_center">질문</th>
				<th class="th_center"></th>
				<th class="th_center"></th>
				<th class="th_center"></th>
			</tr>

			<c:forEach var="fre" items="${freQna}">
			<tr class="data">
				<td class="td_center2">${fre.frequent_id}</td>
				<td class="td_left1" style="cursor:pointer;">${fre.question}</td>
				<td class="td_left1"></td>
				<td class="td_left1"></td>
				<td class="td_left1"></td>
			</tr>
			</c:forEach>
		
			<tr><td colspan="4" class="td_left4"><img src="${path}/resource/img/notice/leftarrow.png" class="arrow" style="vertical-align:middle; margin-bottom:4px;">&nbsp;&nbsp;&nbsp;
			이전&nbsp;&nbsp;|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;2&nbsp;&nbsp;|&nbsp;&nbsp;3&nbsp;&nbsp;|&nbsp;&nbsp;4&nbsp;&nbsp;|&nbsp;&nbsp;5&nbsp;&nbsp;|&nbsp;&nbsp;다음
			&nbsp;&nbsp;&nbsp;<img src="${path}/resource/img/notice/rightarrow.png" class="arrow" style="vertical-align:middle; margin-bottom:3px;">
			</td>
			<td class="td_right">
			
			<input type="button" value="메인화면" class="btn_btn1" onclick="location.href='${path}/index.do'" style="cursor:pointer;"/></td></tr>
		<tr><td colspan="5" class="td_search1">
			<span style="font-size:13px;">질문검색</span>&nbsp;<input type="text" name="question" value="${param.question}"size="30"/>&nbsp;<input type="submit" value="찾기" class="btn_btn1"/></td></tr>
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

</script>
</html>