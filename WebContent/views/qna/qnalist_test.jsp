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
	
	$(document).ready(function(){
		
	});
		
</script>
<style type="text/css">
.product-tit {margin:20px 0 0;}

.mall-tab {margin:50px 0 0;}
.mall-tab ul {margin:0; padding:0; list-style:none; *zoom:1;}
.mall-tab ul:after {content:""; display:block; visibility:hidden; clear:both;}
.mall-tab ul li {float:left; width:25%; border-bottom:1px solid #ddd;}
.mall-tab ul button {position:relative; display:block; width:100%; margin:0; padding:15px 0px; color:#666; font-family:"notokr"; font-size:16px; font-weight:500; letter-spacing:-0.06em; cursor:pointer; outline:0 none; border:0; background:#fff;}
.mall-tab ul .on button {color:#674f3e;}
.mall-tab ul .on button:after {content:""; display:block; position:absolute; left:0; bottom:-1px; width:100%; height:3px; background:#674f3e;}
.mall-tab#tab1 {margin-bottom:3px;}
.mall-tab#tab2 {margin:30px 0 5px;}

.full {
	display:none;
	padding-bottom: 30px;
}
.qna-content {
	border-bottom: 1px solid #e0e0e0;
}
.title{
   font-size: 19px;
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
</style>
</head>
<body>
<div class="mall-tab" id="tab2">
	<ul>
		<li><button type="button" data-to-tab="tab1">상품정보</button></li>
		<li><button type="button" data-to-tab="tab2">배송안내</button></li>
		<li><button type="button" data-to-tab="tab3">고객 상품평</button></li>
		<li class="on"><button type="button" data-to-tab="tab4">상품 Q&A</button></li>
	</ul>	
</div>
<div class="content_wrap">
<br>
	<table>
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
				<tr>
					<td><span id="qna-q=toggle">1</span></td>
					<div class="qna-content">
					<td class="title" id="qna-1">
						<span>
							해당 상품 원두 언제 입고되나요?<br>
							해당 상품 원두 언제 입고되는지 궁금합니다.</span>
						</td></div>
					<td><div class="td_center">ijk230</td>
					<td><div class="td_center">2021/03/12</div></td>
				<!-- 숨김 상태일 때 td가 남는 것을 방지.. td 자체의 display 조절 -->
				<tr><td colspan="4" class="full" id="full-1">
					<div align="right">
								<input type="button" id="regbtn" value="답변하기" class="small1" onclick="location.href='qna_reply.jsp'">
								<input type="button" value="삭제하기" class="small1"></div><br>
								주문일 기준으로 7~9일 입고 예정입니다.
					</td></tr>
					<td><span id="qna-q=toggle">2</span></td>
					<div class="qna-content">
					<td class="title" id="qna-2">
						<span>
							주문 후 배송까지 얼마나 시간이 걸릴까요?<br>
							급하게 원두가 필요해서 가능한 3일 내에 배송받고 싶습니다.
							</span>
						</td></div>
					<td><div class="td_center">sldfk55</td>
					<td><div class="td_center">2021/03/11</div></td>
				</tr>
				<tr><td colspan="4" class="full" id="full-2">
						<div align="right">
								<input type="button" id="regbtn" value="답변하기" class="small1" onclick="location.href='qna_reply.jsp'">
								<input type="button" value="삭제하기" class="small1"></div><br>
								주문일 기준으로 2~3일 내에 전달 예정입니다.
							</td></tr>
				<tr>
					<td><span id="qna-q=toggle">3</span></td>
					<div class="qna-content">
					<td class="title" id="qna-3">
						<span>로스팅 정도 선택 가능한가요?<br>
							안녕하세요 재구매 의향 있는데 로스팅 정도 선택 가능한가요?
						</span>
						</td></div>
					<td><div class="td_center">lee1324</td>
					<td><div class="td_center">2021/03/11</div></td>
				</tr>
				<tr><td colspan="4" class="full" id="full-3">
							<div align="right">
								<input type="button" id="regbtn" value="답변하기" class="small1" onclick="location.href='qna_reply.jsp'">
								<input type="button" value="삭제하기" class="small1"></div><br>
								대량 주문으로 주문할 경우 로스팅 정도 선택 가능합니다.
							</td>
					</tr>
				<tr>
					<td><span id="qna-q=toggle">4</span></td>
					<div class="qna-content">
					<td class="title" id="qna-4">
						<span>로스팅 정도 선택 가능한가요?<br>
							안녕하세요 재구매 의향 있는데 로스팅 정도 선택 가능한가요?
						</span>
						</td></div>
					<td><div class="td_center">lee1324</td>
					<td><div class="td_center">2021/03/11</div></td>
				</tr>
				<tr><td colspan="4" class="full" id="full-4">
							<div align="right">
								<input type="button" id="regbtn" value="답변하기" class="small1" onclick="location.href='qna_reply.jsp'">
								<input type="button" value="삭제하기" class="small1"></div><br>	
								답변이 없습니다.
							</td>
					</tr>
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
		<div style="text-align:right;">
	
	<input align="center" type="button" value="질문하기" 
	       class="btn btn_thatch" onclick="location.href='qna_write.jsp'"><br>
	</div>
	</div>
</body>
<script>
  const items = document.querySelectorAll('.title');

  function openCloseAnswer() {
    const answerId = this.id.replace('qna', 'full');
	
    if(document.getElementById(answerId).style.display == 'table-cell') {
    // table-cell >> col-span 작동
      document.getElementById(answerId).style.display = 'none';
      //document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'table-cell';
      //document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
</html>