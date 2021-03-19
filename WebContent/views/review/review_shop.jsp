<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.net.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <link rel="stylesheet" href="${path}/resource/css/review/board.css">
<link rel="stylesheet" href="${path}/resource/css/review/common.css"> --%>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {

	 $("#modr").on("click",function(){//수정
      
       // location.href="${path}/review_modify.do?review_id="+"${rev.review_id}";
        var review_id = $(this).attr("data-id");
        location.href="${path}/review_modify.do?review_id="+review_id;
        //alert(review_id);
     });
	 $("#wr").on("click",function(){//입력
      
		 var product_id = $(this).attr("data-id");
		 location.href="${path}/review_write.do?product_id="+product_id;
    
	 });
	 
 	  $("#repr").on("click",function(){//답변
		  
		  var review_id = $(this).attr("data-id");
		  //alert(review_id);
		 var auth = "${account.auth}";
		 //alert(auth);
		
      if(auth=="운영자"){
        //location.href="${path}/review_reply.do?review_id="+"${rev.review_id}";
    	  location.href="${path}/review_reply.do?review_id="+review_id;
      }else{
    	  alert("운영자만 답변할 수 있습니다.");
      }
     }); 
}); 
</script>
<style type="text/css">
.full {
	display: none;
	padding-bottom: 30px;
}

.rev-content {
	border-bottom: 1px solid #e0e0e0;
}

.title2 {
	font-size: 12px;
	padding: 10px 0;
	cursor: pointer;
	border-bottom: 1px solid #e0e0e0;
	outline: none;
	background: none;
	text-align: left;
}

.title:hover {
	color: #2962ff;
}

[id$="-toggle"] {
	margin-right: 15px;
}

.small1 {
	background-color: #674f3e;
	color: white;
	border: 1px solid #e7e7e7;
	cursor: pointer;
	height: 20px;
	padding: 0px 15px;
	font-weight: bolder;
	font-size: 10px;
}

.th_center {
	text-align: center;
	color: #a5a2a2;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0px;
}

thead {
	font-weight: bold;
	font-size: 13px;
}

thead td {
	border: 0px;
}

th {
	line-height: 20px;
	padding: 10px 0px;
	border-top: 1px solid #e7e7e7;
	border-bottom: 1px solid #e7e7e7;
	background: #f9f9f9;
}

td {
	line-height: 25px;
	padding: 10px 0px;
	border-top: 1px solid #e7e7e7;
	border-bottom: 1px solid #e7e7e7;
	word-break: keep-all;
}

.td_center {
	text-align: center;
}
</style>
</head>
<body>



	<!-- 상품상세 qua와 함수이름 겹치지 않게 조심 ! 겹치면 에러남-->

	<table>
		<colgroup>
			<col width="60">
			<col width="*">
			<col width="150">
			<col width="150">
			<col width="150">
		</colgroup>
		<thead>
			<tr>
				<th scope="col"><div class="th_center">리뷰번호</div></th>
				<th scope="col"><div class="th_center">제목</div></th>
				<th scope="col"><div class="th_center">작성자</div></th>
				<th scope="col"><div class="th_center">작성일</div></th>
				<th scope="col"><div class="th_center">평점</div></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="rev" varStatus="sts" items="${Rev}">
				<tr>
					<td><span id="rev-r=toggle">${rev.review_id}</span></td>
					<div class="rev-content">
						<td class="title2" id="rev-${sts.count}" style="text-align: left;">
							<span>${rev.title}</span>
						</td>
					</div>
					<td><div class="td_center">${account.nickname}</div></td>
					<%-- <input type="hidden" value="${ac.auth}" id="authq">  --%>
					<td><div class="td_center">${rev.regist_date}</div></td>
					<td><div class="td_center">${rev.rating}</div></td>

				</tr>
				<!-- 숨김 상태일 때 td가 남는 것을 방지.. td 자체의 display 조절 -->
				<tr>
					<td colspan="5" class="full" id="full-${sts.count}">
						<div align="right">
							<input type="button" id="repr" value="답변하기" class="small1" 
								data-id="${rev.review_id}" style="cursor: pointer;"> 
							<input type="button"
								value="수정/삭제" data-id="${rev.review_id}" class="small1" id="modr" style="cursor: pointer;">
						</div>
						<br>${rev.content}
						<div align="left">답변 :&nbsp;${rev.reply_content}</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<div style="text-align: center;">
		    <input type="button" value="<<" class="btn_normal"> 
			<input type="button" value="&nbsp;<&nbsp;" class="btn_normal"> 
			<input type="button" value="&nbsp;1&nbsp;" class="btn_normal"> 
			<input type="button" value="&nbsp;>&nbsp;" class="btn_normal"> 
			<input type="button" value=">>" class="btn_normal">
	</div>
	<div style="text-align: right;">

		<input align="center" type="button" value="후기작성" id="wr"
			class="btn btn_thatch" data-id="${prod.product_id}"
			   style="cursor: pointer;"><br>
	</div>


</body>
<script>
  const items2 = document.querySelectorAll('.title2');

  function openCloseAnswer2() {
    const answerId = this.id.replace('rev', 'full');
	
    if(document.getElementById(answerId).style.display == 'table-cell') {
    // table-cell >> col-span 작동
      document.getElementById(answerId).style.display = 'none';
      //document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'table-cell';
    //document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items2.forEach(item => item.addEventListener('click', openCloseAnswer2));
</script>
</html>