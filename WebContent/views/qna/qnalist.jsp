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
<title>Insert title here</title><%-- 
<link rel="stylesheet" href="${path}/resource/css/review/board.css">
<link rel="stylesheet" href="${path}/resource/css/review/common.css"> --%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	/*
	var proc = "${param.proc}"
	if(proc=="del"){
		product_id = "${prod.product_id}";
		alert("삭제되었습니다\n상품상세화면으로 이동합니다.");
		location.href="${path}/shop_detail.do?product_id="+product_id;
	}
	*/
	// $("[name=product_id]")
	
	
	$(document).ready(function(){
		$("#qdel").on("click",function(){
			if(confirm("삭제하시겠습니까?")){
				$("[name=proc]").val("del");
				$("form").submit();
			}
		});
		
		$("#qin").on("click",function(){
			location.href="${path}/qna_write.do?product_id="+"${qna.product_id}";
		});
		$("#repq").on("click",function(){
			var qna_id = $(this).attr("data-id");
		    var auth = "${account.auth}";
		    if(auth=="운영자"){
		       	location.href="${path}/qna_reply.do?qna_id="+qna_id;
		   		// alert(qna_id);
		   	} else{
		      	alert("운영자만 답변할 수 있습니다.");
		      }
		});
	});
		
</script>
<style type="text/css">
/* .product-tit {margin:20px 0 0;}

.mall-tab {margin:50px 0 0;}
.mall-tab ul {margin:0; padding:0; list-style:none; *zoom:1;}
.mall-tab ul:after {content:""; display:block; visibility:hidden; clear:both;}
.mall-tab ul li {float:left; width:25%; border-bottom:1px solid #ddd;}
.mall-tab ul button {position:relative; display:block; width:100%; margin:0; padding:15px 0px; color:#666; font-family:"notokr"; font-size:16px; font-weight:500; letter-spacing:-0.06em; cursor:pointer; outline:0 none; border:0; background:#fff;}
.mall-tab ul .on button {color:#674f3e;}
.mall-tab ul .on button:after {content:""; display:block; position:absolute; left:0; bottom:-1px; width:100%; height:3px; background:#674f3e;}
.mall-tab#tab1 {margin-bottom:3px;}
.mall-tab#tab2 {margin:30px 0 5px;} */

.full {
	display:none;
	padding-bottom: 30px;
}
.qna-content {
	border-bottom: 1px solid #e0e0e0;
}
.title{
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
  .small1{
    background-color: #674f3e;
	color: white;
	border: 1px solid #e7e7e7;
	cursor: pointer;
	height: 20px;
	padding: 0px 15px;
	font-weight: bolder;
	font-size:10px;	
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
#qnalist tbody tr:hover{
	background-color: #f7f7f7;
	cursor: pointer;
}
</style>
</head>
<body>

<br>
<form id="qlist" type = "method">
<%--<input type="hidden" name="proc" value=""/> --%>
<input type="hidden" name="prod" value="${prod.product_id}"/>
	<table id="qnalist">
			<colgroup>
				<col width="50">
				<col width="150">
				<col width="100">
				<col width="100">
			</colgroup>
			<thead>
				<tr>
					<th scope="col"><div class="th_center">번호</div></th>
					<th scope="col"><div class="th_center">제목</div></th>
					<th scope="col"><div class="th_center">작성자</div></th>
					<th scope="col"><div class="th_center">작성일</div></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="qna" varStatus="sts" items="${Qna}">
				<tr>
					<td><span id="qna-q=toggle">${qna.qna_id}</span></td>
					<div class="qna-content">
					<td class="title" id="qsub-${sts.count}" style="text-align:left;">
						<span>
							${qna.title}</span>
						</td></div>
					<td><div class="td_center">${qna.account_id}</div></td>
					<td><div class="td_center">${qna.regist_date}</div></td>
				<!-- 숨김 상태일 때 td가 남는 것을 방지.. td 자체의 display 조절 -->
				<tr><td colspan="4" class="full" id="qfull-${sts.count}">
					<div align="right">
								<input type="button" id="repq" data-id="${qna.qna_id}" value="답변하기" class="small1" style="cursor: pointer;">
								<input type="button" id="qdel" data-id="${qna.qna_id}" value="삭제하기" class="small1" style="cursor: pointer;"></div><br>
								<br>${qna.content}
								<!-- <div align="left">답변 :&nbsp;%{qna.reply}</div> -->
								<div align="left">답변 :&nbsp;${qna.reply_content}</div>
					</td></tr>
					</c:forEach>
			</tbody>
		</table>
</form>
		<br>
		<div style="text-align: center;">
			<input type="button" value="&#60;&#60;" class="btn_normal">
			<input type="button" value="&nbsp;&#60;&nbsp;" class="btn_normal">
			<input type="button" value="&nbsp;1&nbsp;" class="btn_normal">
			<input type="button" value="&nbsp;&#62;&nbsp;" class="btn_normal">
			<input type="button" value="&#62;&#62;" class="btn_normal">
		</div>
		<div style="text-align:right;">
	
	<input align="center" type="button" value="질문하기" id="qin"
	       class="btn btn_thatch" style="cursor: pointer;">
	</div>
	
	
</body>
<script>
  const subs = document.querySelectorAll('.title');

  function openCloseAnswer() {
    const answerId = this.id.replace('qsub', 'qfull');
	
    if(document.getElementById(answerId).style.display == 'table-cell') {
    // table-cell >> col-span 작동
      document.getElementById(answerId).style.display = 'none';
      //document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'table-cell';
      //document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  subs.forEach(sub => sub.addEventListener('click', openCloseAnswer));
</script>
</html>