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
		$("#rep_btn").on("click",function(){
			if(confirm("답변 등록하시겠습니까?"))
				$("form1").attr("action","${path}/shop_detail.do?product_id="+"${param.product_id)";
				$("form1").submit();
			}
		});
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


</style>
</head>

<body>
<jsp:include page="../common/header.jsp"/>
	 <div style="height:222px;"></div>

	
	 <table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">
			<div class="mall-tab" id="tab2">
	<ul>
		<li><button type="button" data-to-tab="tab1">상품정보</button></li>
		<li><button type="button" data-to-tab="tab2">배송안내</button></li>
		<li><button type="button" data-to-tab="tab3">고객 상품평</button></li>
		<li class="on"><button type="button" data-to-tab="tab4">상품 Q&A</button></li>
	</ul>	
</div>
	<form class="form1" method="post">
                        <table class="prd-tinfo">
                         <colgroup>
					         <col width="120">
					         <col width="*">
					     </colgroup>
                            <tr>
                            <td><img src="" class="img"></a></td>
                            <td><div class="td_left">상 품 명:<a href="">수저받침대</a><br>
                            상품가격:<strong>14,000원</strong></div></td>
                            </tr>
                        </table>
                        <div class="bbs-table-view">
                            <table>
                             
                                <tbody>
                                <tr>
                                        <td class="td_left">
                                            <div class="cont-sub-des">
                                                <div>
                                                    <span><em>제목</em>로스팅 정도 선택 가능한가요?</span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
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
                                            <div class="cont-sub-des">
                                                <div>
                                                     <span><em>내용</em>안녕하세요 재구매 의향 있는데 로스팅 정도 선택 가능한가요?</span>                                                                                                          
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="td_left">
                                        	<div class="data-bd-cont">답변 작성<br>
                                            <textarea></textarea></div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </form>
								<div id="comment_list_0">
								</div>
							<br>
  
                        </div>
                          <br>
				     	<div style="text-align:right;">
				     	<input type="button" value="답변하기" id="rep_btn" class="btn btn_normal" onclick="location.href='${path}/shop_detail.do#tab4'">
						<input type="button" value="목록보기" class="btn btn_normal" onclick="location.href='${path}/shop_detail.do#tab4'">
                    </div><!-- .page-body -->
                </div><!-- #bbsData -->
	
	</td>
			<td class="content-wrap-center-right">
			</td>
			<td class="content-wrap-right">
				<jsp:include page="/views/common/sidebar.jsp"/>
	</td>
		</tr>
	</table>
	<br><br>
	<jsp:include page="/views/common/footer.jsp"/>
</body>
</html>