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
	padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
  .title:hover {
    color: #2962ff;
  }
  [id$="-toggle"] {
    margin-right: 15px;
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
<div align="right" style="padding-right:20px;">
<input type="button" name="qnabtn" value="질문하기" onclick="location.href='qna_write.jsp'" text-align="right"/>
</div><br>
	<table>
			<colgroup>
				<col width="60">
				<col width="*">
				<col width="150">
				<col width="150">
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
					<td><span id="qna-q=toggle">+</span></td>
					<div class="qna-content">
					<td class="title" id="qna-1">
						<span>
							해당 상품 원두 언제 입고되나요?</span>
						</td></div>
					<td><div class="td_center">ijk230</td>
					<td><div class="td_center">2021/03/12</div></td>
				<tr><td colspan="4"><div class="full" id="full-1">
								3~5일 내에 입고예정입니다.
							</div></td></tr>
				<tr>
					<td><div class="td_center">2</div></td>
					<td><div class="td_left">
							<a href="">주문 후 배송까지 얼마나 시간이 걸릴까요?</a>
						</div></td>
					<td><div class="td_center">sldfk55</td>
					<td><div class="td_center">2021/03/11</div></td>
				</tr>
				<tr>
					<td><div class="td_center">3</div></td>
					<td><div class="td_left">
							<a href="">대량으로 구입 가능한가요?</a>
						</div></td>
					<td><div class="td_center">lee1324</td>
					<td><div class="td_center">2021/03/11</div></td>
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
	</div>
</body>
<script>
  const items = document.querySelectorAll('.title');

  function openCloseAnswer() {
    const answerId = this.id.replace('qna', 'full');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
</html>