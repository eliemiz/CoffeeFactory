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
<link rel="stylesheet" href="${path}/resource/css/review.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
<body>
	<tbody>
		<tr><!-- 헤더 삽입 -->

	
			<td height="20"></td>
		</tr>
		<tr>
			<td><img src="${path}/resource/img/review/review.png"></td>
		</tr>
		<tr>
			<td height="5"></td>
		</tr>
		<tr>
			<td>
				<table width="100%" border="0" align="left" cellpadding="0"
					cellspacing="0">
					<tbody>
						<tr>
							<td>
								<p>

								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tbody>
										<tr height="26" align="center" bgcolor="#eeeeee"
											style="font-weight: normal; color: 666666;">

											<td>번호</td>
											<td width="35"></td>
											<td align="left" width="300" style="padding-left: 10px;">제목</td>
											<td>평점</td>
											<td nowrap="">등록인</td>
											<td>등록일</td>
											<!--<td nowrap>조회수</td>-->


										</tr>

										<tr height="1" bgcolor="efefef">
											<td colspan="11"></td>
										</tr>

										<tr height="30" align="center" style="font-family: 돋움;">
											<td><img src="image/best_ico.gif"></td>
											<td style="padding: 5px 0 5px 0;"><a
												href="./mall.php?cat=002002000&amp;query=view&amp;no=34"
												target="_blank"><img
													src="./upload/mall/shop_1531932938740128_0.jpg" border="0"
													width="45" vspace="0"></a></td>
											<td align="left" style="padding-left: 10px;"><span
												style="line-height: 17px;"><font class="Blink"
													onclick="showReqWin('5842','34','1')"
													style="cursor: pointer; font-size: 13px;"><b>
															과테말라 안티구아- 구매하고 이름을 외우고 싶어지는 커피예요</b></font></span> <span
												class="font-size1">(<b>1</b>)
											</span><br> <a
												href="./mall.php?cat=002002000&amp;query=view&amp;no=34"
												target="_blank"><font style="font-size: 8pt;">과테말라
														안티구아</font></a></td>
											<td><img src="./admin/shop/image/star/10.gif"></td>
											<td>아이스아메</td>
											<td><script>
												getDateFormat('20210309101933',
														'xxxx.xx.xx')
											</script>2021.03.09</td>
											<!--<td>7</td>-->

										</tr>

										<tr height="1" bgcolor="efefef">
											<td colspan="11"></td>
										</tr>

										<tr height="30" align="center" style="font-family: 돋움;">
											<td><img src="image/best_ico.gif"></td>
											<td style="padding: 5px 0 5px 0;"><a
												href="./mall.php?cat=001000000&amp;query=view&amp;no=984"
												target="_blank"><img
													src="./upload/mall/shop_1531894770337901_0.jpg" border="0"
													width="45" vspace="0"></a></td>
											<td align="left" style="padding-left: 10px;"><span
												style="line-height: 17px;"><font class="Blink"
													onclick="showReqWin('5817','984','1')"
													style="cursor: pointer; font-size: 13px;"><b>첫구매
															원두였어요</b></font></span> <span class="font-size1">(<b>1</b>)
											</span><br> <a
												href="./mall.php?cat=001000000&amp;query=view&amp;no=984"
												target="_blank"><font style="font-size: 8pt;">에스프레소
														(시그니처)</font></a></td>
											<td><img src="./admin/shop/image/star/10.gif"></td>
											<td>-</td>
											<td><script>
												getDateFormat('20210304170027',
														'xxxx.xx.xx')
											</script>2021.03.04</td>
											<!--<td>44</td>-->

										</tr>

										<tr height="1" bgcolor="efefef">
											<td colspan="11"></td>
										</tr>

										<tr height="30" align="center" style="font-family: 돋움;">
											<td><img src="image/best_ico.gif"></td>
											<td style="padding: 5px 0 5px 0;"><a
												href="./mall.php?cat=011002000&amp;query=view&amp;no=866"
												target="_blank"><img
													src="./upload/mall/shop_1531908917952175_0.jpg" border="0"
													width="45" vspace="0"></a></td>
											<td align="left" style="padding-left: 10px;"><span
												style="line-height: 17px;"><font class="Blink"
													onclick="showReqWin('5772','866','1')"
													style="cursor: pointer; font-size: 13px;"><b>향부터
															아~~~주 깊고 풍부해요</b></font></span> <span class="font-size1">(<b>1</b>)
											</span><br> <a
												href="./mall.php?cat=011002000&amp;query=view&amp;no=866"
												target="_blank"><font style="font-size: 8pt;">예멘
														모카 마타리 [세계3대 커피]</font></a></td>
											<td><img src="./admin/shop/image/star/10.gif"></td>
											<td>name</td>
											<td><script>
												getDateFormat('20210217092843',
														'xxxx.xx.xx')
											</script>2021.02.17</td>
											<!--<td>116</td>-->

										</tr>


									</tbody>
								</table>

								<table width="100%" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<td height="2" bgcolor="dfdfdf"></td>
										</tr>
										<tr>
											<td height="5"></td>
										</tr>
									</tbody>
								</table> <!-- 상품후기 등록 --> <iframe id="z_iframe" src="" frameborder="0"
									style="width: 100%; height: 0px;marginwidth=0 marginheight=0"
									scrolling="no" scroll="no"></iframe> 



								<table width="100%" cellspacing="0" cellpadding="0"
									bgcolor="f7f7f7">
									<tbody>
										<tr height="24">
											<td align="center"><b><script language="javascript">
												getPageLink(10, 1, 260,
														'./bbs/lib/module/page/image');
											</script><img src="./bbs/lib/module/page/image/prev1.gif" border="0"
													align="ABSMIDDLE"><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><font color="RED">1</font><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(2);">2</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(3);">3</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(4);">4</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(5);">5</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(6);">6</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(7);">7</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(8);">8</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(9);">9</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(10);">10</a><img
													src="./bbs/lib/module/page/image/cutln.gif" border="0"
													align="ABSMIDDLE"><a href="javascript:getPageGo(11);"><img
														src="./bbs/lib/module/page/image/next2.gif" border="0"
														align="ABSMIDDLE"></a></b></td>
											<td align="right"><a href="inc.php?inc=company/z_req"><img
													src="./bbs/icon/default/list.gif" style="margin: 2 4 0 0"></a>
												<a href="#."
												onclick="javascript:alert('사용후기는 해당 상품의 하단에서 등록이 가능합니다');"><img
													src="./bbs/image/write.gif" style="margin: 2 4 0 0">
											</a></td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table> 

				<div id="img_layer"
					style="padding: 2pt; border: 1 solid black; display: none; position: absolute; background: white; cursor: pointer;"
					onclick="this.style.display='none';"></div> <!-- 푸터 -->
			</td>
		</tr>
		<tr>
			<td height="30"></td>
		</tr>
	</tbody>
	
</body>
</html>