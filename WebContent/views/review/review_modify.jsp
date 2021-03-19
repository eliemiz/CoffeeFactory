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
<link rel="stylesheet" href="${path}/resource/css/review/board.css">
<link rel="stylesheet" href="${path}/resource/css/review/common.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
var hasAccountId = ${not empty account_id};
if (!hasAccountId) {
	alert("로그인이 필요한 페이지입니다.");
	location.href = "${path}/login.do";
}

var proc = "${param.proc}"; // proc="";
if(proc=="upt"){
	if(confirm("수정되었습니다. \n상품화면으로 이동하시겠습니까?")){
		location.href="${path}/shop_detail.do?product_id="+"${rev.product_id}";
	}
}

var product_id = $("#delBtn").attr("data-id");
if(proc=="del"){
	if(confirm("삭제되었습니다. \n상품화면으로 이동하시겠습니까?")){
		location.href="${path}/review_write.do?product_id="+product_id;
	}
}

$(document).ready(function(){
  $("#uptBtn").on("click",function(){
	  if(confirm("수정하시겠습니까?")){
		  //유효성 체크
		  $("[name=proc]").val("upt");
		  $("form").submit();
	  }
  });
  $("#delBtn").on("click",function(){
	  if(confirm("삭제하시겠습니까?")){
		  //유효성 체크
		  $("[name=proc]").val("del");
		  $("form").submit();
	  }
  });
});
		
</script>
<style type="text/css">
.product-tit {margin:20px 0 0;}

.regbtn {width:70px; height:30px;}
.canbtn {width:70px; height:30px;}
</style>
</head>


<body>
<jsp:include page="/views/common/header.jsp"/>
	<div style="height:222px;"></div>
	<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">

<br><br><br>

       <form id="review_update" method="post">
       <input type="hidden" name="proc" value="" />
      
           <table summary>
               <colgroup>
                   <col width="100">
                   <col width="100">
                   <col width="500">
               </colgroup>
               <tbody>                 
                   <tr>
                       <th>
                           <div>제목</div>
                       </th>
                       <td>
                           <div class="td_left">
                              <input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="title" value="${rev.title}">
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <div>평점</div>
                       </th>
                       <td>
                           <div class="td_left">
                              <input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="rating" value="${rev.rating}">
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>후기</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="MS_text_content" value="${rev.content}" name="content" style="font-family: 굴림체; width: 100%; height: 380px;" 
                        ></textarea>
                       <input type="hidden" name="product_id" value="${rev.product_id}">
                       <input type="hidden" name="account_ids" value="${rev.account_id}">
                       <input type="hidden" name="regist_date_s" value="${rev.regist_date_s}">
                       <input type="hidden" name="review_id" value="${rev.review_id}">
                       <input type="hidden" name="reply_content" value="${rev.reply_content}">
                       <input type="hidden" name="reply_content" value="${rev.image}">
                       
                       </div>
                       </td>
                   </tr>
              </tbody>
           </table>
        <br>
        <div style="text-align:right;">
		<input type="button"  id="uptBtn" value="수정하기" class="btn btn_thatch"  style="cursor:pointer;">
		<input type="button" id="delBtn" value="삭제하기" data-id="${rev.product_id}"  class="btn btn_thatch" style="cursor:pointer;">
		<input type="button" value="돌아가기" class="btn btn_normal" 
		onclick="location.href='${path}/shop_detail.do'" style="cursor:pointer;">
		</div>
 </form>
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
</html>