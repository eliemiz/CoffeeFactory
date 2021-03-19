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


	
	var ckInsert = "${param.content}";
	if(ckInsert != ""){
		if(confirm("등록했습니다\n상품화면으로 이동하시겠습니까?")){
			location.href="${path}/shop_detail.do?product_id="+"${prod.product_id}";
		}
	}
	
	$(document).ready(function(){
		$("#finish").on("click",function(){
			if($("[name=title]").val()==""){
				alert('제목을 입력해주세요');
				return false;
			}	
			
		if ($("[name=rating]").val()!=1 && $("[name=rating]").val()!=2 && $("[name=rating]").val()!=3
				&& $("[name=rating]").val()!=4 && $("[name=rating]").val()!=5){
			alert("평점은 1~5로 줄 수 있습니다.");
			return false;
		}
		 else {
		 if($("[name=content]").val()==""){
			alert('후기를 입력해주세요');
			return false;
			} 
		}
		
			$("#review_write").submit();
		 
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

       <form id="review_write" method="post">
       
      
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
                           <input type="hidden" name="account_ids" value="${account.account_id}"/>
                           <input type="hidden" name="product_ids" value="${prod.product_id}"/>
                           <input type="hidden" name="image" value=""/>
                              <input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="title" >
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <div>평점</div>
                       </th>
                       <td>
                           <div class="td_left">
                              <input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="rating" >
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>후기</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="MS_text_content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;" 
                        placeholder="후기를 작성해주세요."></textarea>
                       <input type="hidden" name="reply_content" value=""/></div>
                       </td>
                   </tr>
                                
              </tbody>
           </table>
        <br>
        <div style="text-align:right;">
		<input type="button"  id="finish" value="완료" class="btn btn_thatch"  style="cursor:pointer;">
		<input type="button" value="돌아가기" class="btn btn_normal" 
		onclick="location.href='${path}/shop_detail.do'"  style="cursor:pointer;">
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