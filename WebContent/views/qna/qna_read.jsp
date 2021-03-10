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
<link rel="stylesheet" href="${path}/resource/css/review/board_detail.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>

<body>
	<div style="text-align:center;">
	<br><br><br>
	<p class="title">Q&A</p>
	</div>
	<br><br><br>
	<div id="content" class="content_wrap">
                        <table class="prd-tinfo">
                         <colgroup>
					         <col width="120">
					         <col width="*">
					     </colgroup>
                            <tr>
                            <td><a href=""><img src="" class="img"></a></td>
                            <td><div class="td_left">상 품 명:<a href="">수저받침대</a><br>
                            상품가격:<strong>14,000원</strong></div></td>
                            </tr>
                        </table>
                        <div class="bbs-table-view">
                            <table>
                                <thead>
                                    <tr>
                                        <th><div class="td_left">로스팅 정도 선택 가능한가요?</div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="td_left">
                                            <div class="cont-sub-des">
                                                <div>
                                                    <span><em>작성자</em>ijk230</span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="cont-sub-des">
                                                <div>
                                                     <span><em>작성일</em>2021-02-09</span>                                                                                                          
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="data-bd-cont">&nbsp;안녕하세요 재구매 의향있는데<br>
																	&nbsp;로스팅 정도 선택 가능한가요?
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
								<div id="comment_list_0">
								</div>
							<br>
							   
                          
                        </div>
                          <br>
				     	<div style="text-align:right;">
				     	<input type="button" value="답변하기" class="btn btn_normal" onclick="location.href='qna_reply.jsp'">
						<input type="button" value="목록보기" class="btn btn_normal" onclick="location.href='qnalist.jsp'">
                    </div><!-- .page-body -->
                </div><!-- #bbsData -->
	
</body>
</html>