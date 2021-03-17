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
<link rel="stylesheet" href="${path}/resource/css/fonts.css">
<link rel="stylesheet" href="${path}/resource/css/shop/search.css">
<link rel="stylesheet" href="${path}/resource/css/shop/common.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
<style>
table.tab{
	margin-inline-start: auto;
	margin-inline-end: auto;
	-webkit-border-horizontal-spacing: 0px;
	-webkit-border-vertical-spacing: 0px;
}
td.att{
	background-image: url(${path}/resource/img/shop/rou01_bot.gif);
}
a:link{text-decoration: none; font-color:#000000;} /* 클릭하지 않았을 때 링크 상태 */
a:visited{text-decoration: none; color: #000000;} /* 한 번 클릭했거나 들어가보았던 링크 상태 */
a:active{text-decoration: none; color: #000000;} /* 링크 부분에서 마우스를 누르고 있는 상태 */
a:hover{text-decoration: none; color: #EDA900;} /* 링크를 클릭하려고 마우스를 가져갔을 때 상태 */
</style>
</head>
<body>

<div style="height:230px;"><jsp:include page="/views/common/header.jsp"/></div>
<table class="content-wrap" width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td class="content-wrap-left"><img src="${path}/resource/img/shop/blank.gif" width="120" height="1"/></td>
			<td class="content-wrap-center" valign="top" width="100%">
				<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
							<!-- 상단 배너 -->
							<td height="23">
								<span class="font-size1">
								&nbsp;<img src="${path}/resource/img/shop/dot_01.gif" align="absmiddle"/>
								현재 위치: <a href="${path}/index.do">Home</a> > <a href="${path}/shop_main.do">싱글오리진 원두커피</a>
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
																			<a href="${path}/shop_category.do?origin=아프리카">
																				<font color="#000000" style="font-size:9pt">아프리카</font>
																			</a>
																		</td>
																		<td nowrap>
																			&nbsp;
																			<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle" vspace="2"/>
																			<a href="${path}/shop_category.do?origin=중남미">
																				<font color="#000000" style="font-size:9pt">중남미</font>
																			</a>
																		</td>
																		<td nowrap>
																			&nbsp;
																			<img src="${path}/resource/img/shop/dot_04.gif" align="absmiddle" vspace="2"/>
																			<a href="${path}/shop_category.do?origin=아시아&태평양">
																				<font color="#000000" style="font-size:9pt">아시아&태평양</font>
																			</a>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td></tr>
													</tbody>
												</table>
											</td>
											<td width="11" background="${path}/resource/img/shop/rou01_righ.gif">&nbsp;</td>
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
								<span class="font-size2">•&nbsp;등록상품 : <font color="#333333"><b>12</b>개</font></span></td><!-- DB후 수정 -->
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
				<table width="100%" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<c:forEach var="prods" items="prodlist">
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td height="187">
												<a href="${path}/shop_detail.do?product_id=${prods.product_id}">
													<img src="${path}/resource/img/shop/${prods.thumbnail}" width="185" class="product_img_border">
												</a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="${path}/shop_detail.do?product_id=${prods.product_id}">${prods.name}</a>
												<br>
												&nbsp;
												<!-- img(베스트상품) -->
											</td>
										</tr>
										<tr align="center">
											<td class="product-price">
												<!-- img(동전) -->
												<span class="money_color2">
													<c:if test="${prods.product_id != null }">
													<b><b>${prod}</b>원</b><!-- Back 작업 시 수정 -->
													</c:if>
												</span>
											</td>
										</tr>
										<tr><td height="7"></td></tr>
									</tbody>
								</table>				
							</td>
							</c:forEach>						
						</tr>						
					</tbody>
				</table>
			</td>
			<td class="content-wrap-center-right"><img src="${path}/resource/img/shop/blank.gif" width="30" height="1"/></td>
			<td class="content-wrap-right" valign="top">
				<jsp:include page="../common/sidebar.jsp"/>
			</td>
		</tr>
	</tbody>
</table>
<div style="height:100px;"></div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>