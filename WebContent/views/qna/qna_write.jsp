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
	if(!hasAccountId){
		alert("로그인이 필요한 페이지입니다.");
		loacation.href = "${path}/login.do";
	}
	
	var ckInsert = "${param.content}";
	if(ckInsert!=""){
		if(confirm("등록했습니다\n상품화면으로 이동하시겠습니까?")){
			location.href="${path}/shop_detail.do?product_id="+"${prod.product_id}";
		}
	}

	$(document).ready(function(){
		$("#ins_btn").on("click",function(){
			if($("[name=title]").val()==""){
				alert('제목을 입력해주세요');
				return false;
			}	
		
		 else {
		 if($("[name=content]").val()==""){
			alert('내용을 입력해주세요');
			return false;
			} 
		}
		
			$("#qna_write").submit();
		 
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
       <form id="qna_write" method="post">
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
                              <input class="MS_input_txt input_style2" type="text" id="bw_input_subject" name="title" placeholder="제목을 입력하세요">
                           		<input type="hidden" name="product_ids" value="${prod.product_id}">
                           		<input type="hidden" name="account_ids" value="${account.account_id}">
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>내용</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;" 
                        placeholder="상품에 대한 궁금한 내용을 적어주시면 담당자가 상담해 드립니다."></textarea>
                       <input type="hidden" name="reply_content" value=""></div>
                       </td>
                   </tr>                
              </tbody>
           </table>
        <br>
        <div style="text-align:right;">
		<input type="button" value="완료" id="ins_btn" class="btn btn_thatch">
		<input type="button" value="목록" class="btn btn_normal" onclick="location.href='${path}/shop_detail.do?product_id=${prod.product_id}'" >
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
	<br><br>
	<jsp:include page="/views/common/footer.jsp"/> 
</body>
</html>