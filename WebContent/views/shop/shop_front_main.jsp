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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
	});
		
</script>
</head>
<body>
<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
	<tbody>
		<tr>
			<td><!-- blank img --></td>
			<td valign="top" width="100%">
				<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
							<!-- 상단 배너 -->
							<td height="23">
								&nbsp;<img src="${path}/resource/img/shop/dot_01.gif"/>
								현재 위치: <a href="">Home</a><!-- 메인으로 href --> > <a href="">싱글오리진 원두커피</a> <!-- href 싱글오리진페이지 -->
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
										<tr><td></td><td></td><td></td></tr><!-- 이미지 -->
										<tr>
											<td></td><!-- td에 이미지(left) -->
											<td>
												<table width="100%" cellspacing="0" cellpadding="0">
													<tbody>
														<tr><td bgcolor="white">
															<table width="100%" cellspacing="2" cellpadding="1" bgcolor="white" border="0">
																<tbody>
																	<tr>
																		<td nowrap>
																			&nbsp;<!-- img -->
																			<a href=""><font color="#000000" style="font-size:9pt">아프리카</font></a>
																		</td>
																		<td nowrap>
																			&nbsp;<!-- img -->
																			<a href=""><font color="#000000" style="font-size:9pt">중남미</font></a>
																		</td>
																		<td nowrap>
																			&nbsp;<!-- img -->
																			<a href="shop_front_category.jsp"><font color="#000000" style="font-size:9pt">아시아&태평양</font></a>
																		</td>
																	</tr>
																</tbody>
															</table>
														</td></tr>
													</tbody>
												</table>
											</td>
											<td width="11" background="">&nbsp;</td><!-- background img -->
										</tr>
										<tr>
											<td width="11" height="11"><!-- img --></td>
											<td></td><!-- td 내에 img -->
											<td width="11"><!-- img --></td>
										</tr>
									</tbody>
								</table>
								<br style="line-height:10px">
							</td>
						</tr>
					</tbody>
				</table>
				<!-- 등록상품 개수 -->
				<table>
					<!-- Back: form/input(hidden)으로 설정 -->
					<tbody>
						<tr><td width="1"><!-- img --></td><td></td><td></td><td width="1"><!-- img --></td></tr>
						<tr height="20" style="color:666666;">
							<td> </td>
							<td>&nbsp; •&nbsp;등록상품 : <font color="#333333"><b>12</b>개</font></td><!-- DB후 수정 -->
							<td> </td>
						</tr>
						<tr><td width="1"><!-- img --></td><td></td><td></td><td width="1"><!-- img --></td></tr>
					</tbody>
				</table>
				<br style="line-height:10px;">
				<!-- 가격순 설정 -->
				<table></table>
				<!-- 여백 -->
				<table>
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
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">에티오피아 모카 예가체프</a>
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
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">케냐AA TOP</a>
												<br>
												&nbsp;
												<!-- img(베스트상품) -->
											</td>
										</tr>
										<tr align="center">
											<td class="product-price">
												<!-- img(동전) -->
												<span class="money_color2">
													<b><b>14,500</b>원</b><!-- Back 작업 시 수정 -->
												</span>
											</td>
										</tr>
										<tr><td height="7"></td></tr>
									</tbody>
								</table>				
							</td>
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">콜롬비아 수프리모</a>
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
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">과테말라 안티구아</a>
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
						</tr>
						<tr>
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">코스타리카 따라주</a>
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
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">파푸아뉴기니 블루마운틴 AA</a>
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
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
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
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">온두라스</a>
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
						</tr>
						<tr>
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">탄자니아 AAA</a>
												<br>
												&nbsp;
												<!-- img(베스트상품) -->
											</td>
										</tr>
										<tr align="center">
											<td class="product-price">
												<!-- img(동전) -->
												<span class="money_color2">
													<b><b>11,000</b>원</b><!-- Back 작업 시 수정 -->
												</span>
											</td>
										</tr>
										<tr><td height="7"></td></tr>
									</tbody>
								</table>				
							</td>
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">에티오피아 모카시다모</a>
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
							<td valign="top">
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">예멘 모카 마타리</a>
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
								<table class="" style="table-layout:fixed" align="center" width="187" cellspacing="0"
								cellpadding="0" border="0" id="">
									<tbody>
										<tr align="center">
											<td class="product-img" height="187">
												<a href=""><img src="${path}/resource/img/shop/coffee_beans.jpg" width="100" height="100"></a>
											</td>
										</tr>
										<tr align="center">
											<td class="product-name" valign="top" style="word-break:break-all; line-height:120%; padding-top:3px;">
												<a href="">브라질 세하도 NY2</a>
												<br>
												&nbsp;
												<!-- img(베스트상품) -->
											</td>
										</tr>
										<tr align="center">
											<td class="product-price">
												<!-- img(동전) -->
												<span class="money_color2">
													<b><b>9,000</b>원</b><!-- Back 작업 시 수정 -->
												</span>
											</td>
										</tr>
										<tr><td height="7"></td></tr>
									</tbody>
								</table>				
							</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td><!-- blank img --></td>
		</tr>
	</tbody>
</table>
</body>
</html>