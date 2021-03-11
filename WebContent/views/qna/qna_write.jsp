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
.regbtn {width:70px; height:30px;}
.canbtn {width:70px; height:30px;}
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
<body>

<br><br><br>

        <div class="content_wrap">
       <form>
       <tr>
       <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
       </tr>
       <tr>
       <td bgcolor=white>
           <table summary>
               <colgroup>
                   <col width="100">
                   <col width="600">
               </colgroup>
               <tbody>                 
                   <tr>
                       <th>
                           <div>TITLE</div>
                       </th>
                       <td colspan="3">
                           <div class="td_left">
                              <input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="subject" value="">
                           </div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>CONTENT</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="MS_text_content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;"  placeholder="상품에 대한 궁금한 내용을 적어주시면 담당자가 상담해 드립니다."></textarea>
                       <input type="hidden" name="mobile_content_type" value=""></div>
                       </td>
                   </tr>                
              </tbody>
           </table>
        <br>
        <div style="text-align:right;">
		<input type="button" value="완료" class="btn btn_thatch" onclick="location.href='qnalist.jsp'" >
		<input type="button" value="목록" class="btn btn_normal" onclick="location.href='qnalist.jsp'" >
		</div>
 </form>
 </div>
 
</body>
</html>