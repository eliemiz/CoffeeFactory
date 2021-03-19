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
<link rel="stylesheet" href="${path}/resource/css/review/common.css">
<link rel="stylesheet"
	href="${path}/resource/css/review/board_detail.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

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
		<img src="${path}/resource/img/review/review.png" />
	</div>
		<table class="prd-tinfo">
			<colgroup>
				<col width="120">
				<col width="*">
			</colgroup>
			<tr>
				<td><a href="${path}/shop_detail.do?product_id=${pro.product_id}"><img src="${path}/resource/img/shop/${pro.thumbnail}"></a></td>
				<td><div class="td_left">
						상 품 명:${pro.name}
					</div></td>
			</tr>
		</table>
		<div class="bbs-table-view">
			<table>
				<thead>
					<tr>
						<th>
						<div class="td_left">${rev.title}</div></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="td_left">
							<div class="cont-sub-des">
								<div>
									<span><em>작성자</em>${ac.nickname}</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="td_left">
							<div class="cont-sub-des">
								<div>
									<span><em>작성일</em>${rev.regist_date}</span> 
									<span><em>평점</em>${rev.rating}</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td class="td_left">
							<div class="data-bd-cont">&nbsp;${rev.content}${rev.image}</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div id="comment_list_0"></div>
			<br>


		</div>
		<br>
		<div style="text-align: right;">
			<input type="button" value="목록보기" class="btn btn_normal"
				onclick="location.href='${path}/review_board.do'" style="cursor:pointer;">
		</div>
		<!-- .page-body -->
	<!-- #bbsData -->
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