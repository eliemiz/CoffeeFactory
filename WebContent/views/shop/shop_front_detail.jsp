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
				<table width="100%" align="center" cellspacing="0" cellpadding="0" class="back_table">
					<tbody>
						<tr>
							<td valign="top">
								<!-- 상단 배너 -->
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr>
											<td height="23">
												&nbsp;<img src="${path}/resource/img/shop/dot_01.gif"/>
												현재 위치: <a href="">Home</a><!-- 메인으로 href --> > <a href="shop_front_main.jsp">싱글오리진 원두커피</a> <!-- href 싱글오리진페이지 --> > <a href="shop_front_category.jsp">아시아&태평양</a>
											</td>
										</tr>
									</tbody>
								</table>
								<br style="line-height:0px;">
								<table width="100%" align="center" cellspacing="0" cellpadding="0">
									<tbody>
										<tr><td height="1" bgcolor="ddddddd"></td></tr>
										<tr><td height="20"></td></tr>
										<tr>
											<td valign="top">
												<table width="98%" align="center" cellspacing="0" cellpadding="0" border="0">
													<tbody>
														<tr>
															<td width="300" style="padding-top:5px;" valign="top">
																<table width="250" height="260" align="center" cellspacing="0" cellpadding="0" border="0">
																	<tbody>
																		<tr>
																			<td bgcolor="white" align="center" height="250">
																				<img src="${path}/resource/img/shop/coffee_beans.jpg">
																			</td>
																		</tr>
																	</tbody>
																</table>
																<!-- table로 이미지 확대 넣을건지? -->
															</td>
															<td><!-- blank img --></td>
															<td valign="top">
																<form method="post">
																	<!-- 폼 오픈, Back때 input hidden으로 처리 -->
																	<!-- <div style="display:none;"></div> 가격 iframe, script,, -->
																	<table width="100%" cellspacing="0" cellpadding="0" style="color:#5B5B5B;" border="0">
																		<tbody>
																			<tr height="30">
																				<td></td>
																				<td colspan="2" style="font-weight:bold; font-size:12pt; font-family:돋움;">
																					파푸아뉴기니 블루마운틴 AA
																					<br>
																					&nbsp;
																					<!-- img 인기상품 -->
																				</td>
																			</tr>
																			<tr height="1" bgcolor="#bababa">
																				<td></td>
																				<td></td>
																				<td width="70%"></td>
																			</tr>
																			<tr height="1" bgcolor="#e7e7e7"><td></td><td></td><td></td></tr>
																			<tr height="1" bgcolor="#f4f4f4"><td></td><td></td><td></td></tr>
																			<tr height="10" bgcolor="#bababa">
																				<td></td>
																				<td></td>
																				<td width="70%"></td>
																			</tr>
																			<tr height="25">
																				<td> </td>
																				<td><span class="opt_title1">제품 선택</span></td>
																				<td>
																					<input type="radio">200g (12,000원)<!-- Back: name, value, onclick --><br>
																					<input type="radio">500g (21,000원)<!-- Back: name, value, onclick --><br>
																					<input type="radio">1kg-여분봉투X (34,000원)<!-- Back: name, value, onclick --><br>
																					<input type="radio">1kg-여분봉투O (34,000원)<!-- Back: name, value, onclick --><br>
																				</td>
																			</tr>
																			<tr height="25">
																				<td> </td>
																				<td><span class="opt_title1">판매가격</span></td>
																				<td>&nbsp;
																					<span id="main_price" class="money_color">12,000</span>
																					<span id="main_price_type" class="money_color">원</span>
																				</td>
																			</tr>
																			<tr height="25">
																				<td> </td>
																				<td nowrap><span class="opt_title1">분쇄여부</span></td>
																				<td>&nbsp;
																					<select name="option_0" onchange="price_cal()" class="select1">
																						<option value="분쇄여부|^||^|">선택하세요</option>
																						<option value="분쇄여부|^|원두그대로|^|">원두그대로</option>
																						<option value="분쇄여부|^|프렌치프레스용분쇄|^|">프렌치프레스용분쇄</option>
																						<option value="분쇄여부|^|핸드드립/커피메이커용분쇄|^|">핸드드립/커피메이커용분쇄</option>
																						<option value="분쇄여부|^|더치커피용 분쇄 모카포트용 분쇄|^|">더치커피용 분쇄 모카포트용 분쇄</option>
																						<option value="분쇄여부|^|에스프레소용 분쇄|^|">에스프레소용 분쇄</option>
																					</select>
																				</td>
																			</tr>
																			<tr height="25">
																				<td> </td>
																				<td><span class="opt_title1">원산지</span></td>
																				<td>&nbsp;파푸아 뉴기니</td>
																			</tr>
																			<tr height="25">
																				<td> </td>
																				<td><span class="opt_title1">제조사/브랜드</span></td>
																				<td>&nbsp;커피공장/커피공장</td>
																			</tr>
																			<tr height="25">
																				<td> </td>
																				<td><span class="opt_title1">구매수량</span></td>
																				<td>
																					<table cellspacing="0" cellpadding="0">
																						<tbody>
																							<tr>
																								<td>
																									<input type="text" name="buynum" size="5" maxlength="5" value="1" style="border:1 solid gray; font-size:9pt;"><!-- Back 함수&+/- -->
																								</td>
																								<!-- td style="display:none;" class="font-size1", 재고량표기 -->
																							</tr>
																						</tbody>
																					</table>
																				</td>
																			</tr>
																			<!-- 2개 이상일 때 합계금액 나타내기 
																			<tr id="zend_price_tr" height="25" style>
																				
																			</tr>			-->
																			<tr height="10"><td colspan="3"></td></tr>
																			<tr height="1" bgcolor="#C8C8C8"><td colspan="3"></td></tr>
																			<tr height="15"><td colspan="3"></td></tr>
																			<!-- 폼 클로즈 -->
																		</tbody>
																	</table>
																	<!-- description -->
																	<table width="100%" cellspacing="0" cellpadding="0" style="border:1 dotted aaaaaa; background:f7f7f7; padding:5pt; color:#5B5B5B;">
																		<tbody>
																			<tr>
																				<td>
																					<!-- Back: description 불러오기 -->
																					※ 스페셜티커피 카테고리의 [파푸아뉴기니 블루마운틴 AA]와 동일한 제품으로, 프리미엄 원두입니다.
																					<br>
																				</td>
																			</tr>
																		</tbody>																
																	</table>
																	<br style="line-height:10px">
																	<!-- 구매하기/장바구니/위시리스트 -->
																	<table align="center">
																		<tbody>
																			<tr>
																				<td><img src="${path}/resource/img/shop/buyBtn.gif" style="cursor:pointer;" onclick=""></td>
																				<td><img src="${path}/resource/img/shop/cartBtn.gif" style="cursor:pointer;" onclick=""></td>
																				<td><a href="" onclick=""><img src="${path}/resource/img/shop/wishBtn.gif" border="0"></a></td>
																			</tr>																			
																		</tbody>
																	</table>
																	<!-- div style="display:none;" 으로 form값 처리 -->
																</form>
															</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>				
				</table>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>
































