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

var proc = "${param.proc}"; // proc="";
if(proc=="upt"){
	if(confirm("작성되었습니다. \n상품화면으로 이동하시겠습니까?")){
		location.href="${path}/shop_detail.do?product_id="+"${rev.product_id}";
	}
}

	$(document).ready(function() {
		$(document).ready(function(){
			  $("#uptBtn").on("click",function(){
				  
				  if(confirm("답변하시겠습니까?")){
					  //유효성 체크
					  $("[name=proc]").val("upt");
					  $("form").submit();
				  }
			  });
	});
	});	
</script>
</head>

<body>
<jsp:include page="/views/common/header.jsp"/>
	<div style="height:222px;"></div>
	<table class="content-wrap">
		<tr>
			<td class="content-wrap-left">
			</td>
			<td class="content-wrap-center">


 <form method="post">
       <input type="hidden" name="proc" value="" />
	<div style="text-align:center;">
	<br><br><br>
	<p class="title">후기 답변</p>
	</div>
	<br><br><br>
	<div id="content" class="content_wrap">
                        
                        <div class="bbs-table-view">
                            <table>
                                <thead>
                                    <tr>
                                        <th><div class="td_left" >${rev.title}</div></th>
                                    </tr>
                                </thead>
                                <input type="hidden" name="review_id" value="${rev.review_id}"/>
                                <input type="hidden" name="product_id" value="${rev.product_id}"/>
                                <input type="hidden" name="account_ids" value="${rev.account_id}"/>
                                <input type="hidden" name="regist_date_s" value="${rev.regist_date_s}"/>
                                <input type="hidden" name="rating" value="${rev.rating}"/>
                                <input type="hidden" name="title" value="${rev.title}"/>
                                <input type="hidden" name="content" value="${rev.content}"/>
                                <input type="hidden" name="image" value="${rev.image}"/>
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
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">
                                            <div class="data-bd-cont">&nbsp;${rev.content}<br>
																	
                                            </div>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="td_left">
                                            <textarea name="reply_content"></textarea>
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
				     	<input type="button" id="uptBtn"  value="답변하기" class="btn btn_normal" style="cursor:pointer;">
						<input type="button" value="돌아가기" class="btn btn_normal" 
						onclick="location.href='${path}/shop_detail.do?product_id=${rev.product_id}'" style="cursor:pointer;">
                    </div><!-- .page-body -->
                </div><!-- #bbsData -->
                </form>
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