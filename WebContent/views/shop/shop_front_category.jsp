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
<link rel="stylesheet" href="${path}/resource/css/common/common.css">
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
<style type="text/css">
table.tab{
	margin-inline-start: auto;
	margin-inline-end: auto;
	-webkit-border-horizontal-spacing: 0px;
	-webkit-border-vertical-spacing: 0px;
}
td.att{
	background-image: url(${path}/resource/img/shop/rou01_bot.gif);
}
td{
	display: table-cell;
	vertical-align: inherit;
}
table{
	border-collapse: separate;
	text-indent: initial;
	white-space: normal;
	line-height: normal;
	font-weight: normal;
	font-size: medium;
	font-style: normal;
	color: -internal-quirk-inherit;
	text-align: start;
	border-spacing: 2px;
	font-variant: normal;
}
.font-size1 {
	font-family: 맑은 고딕, Malgun Gothic, 돋움, Dotum, 굴림;
	font-size: 8pt;
	font-style: normal;
	color: #666666;
}
.font-size2 {
	font-family: 맑은 고딕, Malgun Gothic, 돋움, Dotum, 굴림;
	font-size: 9pt;
	font-style: normal;
	color: #666666;
}
.product-name{
	display: table-cell;
    vertical-align: inherit;
}
.product_name_color{
	color: #666666;
	font-weight:normal;
}
.tbl-product{
	margin-inline-start: auto;
    margin-inline-end: auto;
    width: 187px;
    -webkit-border-horizontal-spacing: 0px;
    -webkit-border-vertical-spacing: 0px;
    border-top-width: 0px;
    border-right-width: 0px;
    border-bottom-width: 0px;
    border-left-width: 0px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div style="height:230px;"></div>
<table class="tab" width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td><img src="${path}/resource/img/shop/blank.gif" width="120" height="1"/></td>
			<td valign="top" width="100%">
				<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
							<!-- 상단 배너 -->
							<td height="23">
								<span class="font-size1">
								&nbsp;<img src="${path}/resource/img/shop/dot_01.gif" align="absmiddle"/>
								현재 위치: <a href="">Home</a><!-- 메인으로 href --> > <a href="shop_front_main.jsp">싱글오리진 원두커피</a> > <a href="">아시아&태평양</a>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				<table width="100%"cellspacing="0" cellpadding="0" style="display:none;"><tbody><tr height="1" bgcolor="#DEE2E4"><td></td></tr></tbody></table>
				<table width="100%" align="center" cellspacing="0" cellpadding="0" border="0" bgcolor="FFFFFF">
					<tbody>
						<tr>
							<td valign="top">
								<table width="100%" align="center" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr height="10"><td></td></tr>
										<tr>
											<td width="11" height="11"><img src="${path}/resource/img/shop/rou01_lefttop.gif"/></td>
											<td class="att" background="${path}/resource/img/shop/rou01_top.gif"></td>
											<td><img src="${path}/resource/img/shop/rou01_rightop.gif"></td>
										</tr>
										<tr>
											<td width="11" background="${path}/resource/img/shop/rou01_left.gif"></td>
											<td>
												<table width="100%" cellspacing="0" cellpadding="0">
													<tbody>
														<tr><td bgcolor="white">
															<table width="100%" cellspacing="2" cellpadding="1" bgcolor="white" border="0">
																<tbody>
																	<tr>
																		<td nowrap>
																			&nbsp;
																			<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle" vspace="2"/>
																			<a href=""><font color="#000000" style="font-size:9pt">아프리카</font></a>
																		</td>
																		<td nowrap>
																			&nbsp;
																			<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle" vspace="2"/>
																			<a href=""><font color="#000000" style="font-size:9pt">중남미</font></a>
																		</td>
																		<td nowrap>
																			&nbsp;
																			<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle" vspace="2"/>
																			<a href="shop_front_category.jsp"><font color="#000000" style="font-size:9pt">아시아&태평양</font></a>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td></tr>
													</tbody>
												</table>
											</td>
											<td width="11" background="${path}/resource/img/shop/rou01_righ.gif">&nbsp;</td><!-- background img -->
										</tr>
										<tr>
											<td width="11" height="11"><img src="${path}/resource/img/shop/rou01_leftbot.gif"/></td>
											<td class="att" background="${path}/resource/img/shop/rou01_bot.gif"></td>
											<td width="11"><img src="${path}/resource/img/shop/rou01_righbot.gif"/></td>
										</tr>
									</tbody>
								</table>
								<br style="line-height:10px">
							</td>
						</tr>
					</tbody>
				</table>
				<!-- 등록상품 개수 -->
				<table bgcolor="#f2f2f2" width="100%" cellspacing="0" cellpadding="0" border="0">
					<!-- Back: form/input(hidden)으로 설정 -->
					<tbody>
						<tr>
							<td width="1"><img src="${path}/resource/img/shop/box1_left_top.gif"></td>
							<td></td>
							<td></td>
							<td width="1"><img src="${path}/resource/img/shop/box1_right_top.gif"></td>
						</tr>
						<tr style="color:666666; height:20">
							<td> </td>
							<td>&nbsp;
								<span class="font-size2">•&nbsp;등록상품 : <font color="#333333"><b>2</b>개</font></span></td><!-- DB후 수정 -->
							<td align="right"><!-- 생략 --></td>
						</tr>
						<tr>
							<td width="1"></td>
							<td></td>
							<td></td>
							<td width="1"><!-- img --></td>
							</tr>
					</tbody>
				</table>
				<br style="line-height:10px;">
				<!-- 가격순 설정 -->
				<table></table>
				<!-- 여백 -->
				<table cellpadding="0" cellspacing="0" border="0" width="100%">
					<tbody>
						<tr><td height="10"></td></tr>
						<tr><td height="1" width="100%" bgcolor="dee2e4"></td></tr>
						<tr><td height="10"></td></tr>
					</tbody>
				</table>
				<!-- 상품목록 -->
				<table>
					<tbody>
						<tr>							
							<td valign="top">
								<table class="tbl-product" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href="shop_front_detail.jsp"><img src="${path}/resource/img/shop/single/shop_papua.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="shop_front_detail.jsp">
													<span class="product_name_color">파푸아뉴기니 블루마운틴 AA</span>
												</a>
												<br>
												&nbsp;
												<!-- img(베스트상품) -->
											</td>
										</tr>
										<tr align="center">
											<td class="product-price">
												<!-- img(동전) -->
												<span class="money_color2">
													<b><b>12,000</b>원</b><!-- Back 작업 시 수정 -->
												</span>
											</td>
										</tr>
										<tr><td height="7"></td></tr>
									</tbody>
								</table>				
							</td>
							<td valign="top">
								<table class="tbl-product" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/single/shop_indonesia.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">인도네시아 만델링G1</a>
												<br>
												&nbsp;
												<!-- img(베스트상품) -->
											</td>
										</tr>
										<tr align="center">
											<td class="product-price">
												<!-- img(동전) -->
												<span class="money_color2">
													<b><b>10,000</b>원</b><!-- Back 작업 시 수정 -->
												</span>
											</td>
										</tr>
										<tr><td height="7"></td></tr>
									</tbody>
								</table>				
							</td>				
							<td><img src="${path}/resource/img/shop/blank.gif"/></td>
							<td><img src="${path}/resource/img/shop/blank.gif"/></td>			
						</tr>
					</tbody>
				</table>
			</td>
			<td><img src="${path}/resource/img/shop/blank.gif"/></td>
		</tr>
	</tbody>
</table>
<div style="height:100px;"></div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>