<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.net.*" 
    import="coffeeFactory.vo.*"
    import="coffeeFactory.dao.*"%>
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
		 $(".data").on("click",function(){
	         // $(this): 클릭한 class data를 지정
	         // .children(): 바로 밑 하위 td들을 지정
	         // .eq(1): tr하위의 두 번째 td.
	         var title = $(this).children().eq(1).text();
	         //alert(title); // 요청값 넘길 시, 잘넘어가는지 반드시확인해보기
	         //${path}/컨트롤uri이름?요청key="+요청값";
	         location.href="${path}/notice_read.do?title="+title;
	         //alert(question);
	      });
	});
		
</script>
<style>
#noticelist tbody tr:hover{
	background-color: #f7f7f7;
	cursor:pointer;
}
</style>
</head>
<body>

<jsp:include page="../common/header.jsp" />
<div style="height:222px;"></div>
<br><br>
 <table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
	<div style="text-align: left;">
	
<img src="${path}/resource/img/notice/not_title.png" class="title"/>

<div>
	<form class="form1">
	<table align="center" style="margin:auto;" id="noticelist">
		<col width="96"><col width="640"><col width="98"><col width="70"><col width="150">
		<tr><td colspan="5" class="td_left4">자료수 : 10개</td></tr> <%-- 자료수 --%>
		<tr><th class="th_center">번호</th><th class="th_center">제목</th><th class="th_center">등록인</th><th class="th_center">조회</th><th class="th_center">등록일</th></tr>
<%-- <tr onclick="location.href='${path}/notice_read.do'"><td class="td_center3"><img src="${path}/resource/img/notice/notice.png" class="notice" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_left3">대표공지</td><td class="td_center3"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center3">1004</td><td class="td_center3">2021-03-15</td></tr> --%>		
		<c:forEach var="notice" items="${notice}">
		<tr class="data"><td class="td_center3" name="notice_id">${notice.notice_id}</td><td class="td_left3" name="title">${notice.title}</td><td class="td_center3"><img src="${path}/resource/img/notice/admin.png" class="admin" style="vertical-align:middle; margin-bottom:4px;"></td><td class="td_center3" name="views">${notice.views}</td><td class="td_center3" name="regist_date">${notice.regist_date}</td></tr>
		</c:forEach>
		<tr><td colspan="4" class="td_left4"><img src="${path}/resource/img/notice/leftarrow.png" class="arrow" style="vertical-align:middle; margin-bottom:4px;">&nbsp;&nbsp;&nbsp;
			이전&nbsp;&nbsp;|&nbsp;&nbsp;1&nbsp;&nbsp;|&nbsp;&nbsp;2&nbsp;&nbsp;|&nbsp;&nbsp;3&nbsp;&nbsp;|&nbsp;&nbsp;4&nbsp;&nbsp;|&nbsp;&nbsp;5&nbsp;&nbsp;|&nbsp;&nbsp;다음
			&nbsp;&nbsp;&nbsp;<img src="${path}/resource/img/notice/rightarrow.png" class="arrow" style="vertical-align:middle; margin-bottom:3px;">
			</td>
			<td class="td_right">
			<input type="button" value="글쓰기" class="btn_btn1" onclick="location.href='${path}/notice_write.do'"/>
			<input type="button" value="목록보기" class="btn_btn1" onclick="location.href='${path}/notice.do'"/></td></tr>		
			<tr><td colspan="5" class="td_search1">
			<%-- 
			<select name="search"><option>전체</option><option>제목</option><option>내용</option></select>&nbsp;<input type="text" size="30"/>&nbsp;<input type="submit" value="찾기" class="btn_btn1"/></td></tr>
			--%>
			<span style="font-size:13px;">공지사항 검색</span>&nbsp;<input type="text" name="title" value="${param.title}"size="30"/>&nbsp;<input type="submit" value="찾기" class="btn_btn1"/></td></tr>
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