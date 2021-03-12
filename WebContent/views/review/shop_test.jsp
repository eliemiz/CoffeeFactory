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
<link rel="stylesheet" href="${path}/resource/css/review/board.css">
<link rel="stylesheet" href="${path}/resource/css/review/common.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
</head>
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
                   <col width="95">
                   <col width="190">
                   <col width="90">
               </colgroup>
               <tbody>
                   <tr>
                       <th>
                       	 <div>NAME</div>
                       </th>
                       <td>
                         <div class="td_left">
                         	<input id="bw_input_writer" type="text" name="hname" class="MS_input_txt input_style" readonly="readonly" value="홍길동">
                         </div>
                       </td>
                       <th>
                       	 <div>PASSWORD</div>
                       </th>
                       <td>
                       	 <div class="td_left">
                       	 	<input id="bw_input_passwd" type="password" name="passwd" class="MS_input_txt input_style"></div>
                       </td>
                   </tr>
                   <tr>
                       <th>
                       	 <div>TITLE</div>
                       </th>
                       <td colspan="3">
                           <div class="td_left">
                           	<input id="bw_input_subject" class="MS_input_txt input_style2" type="text" name="subject" value="">
                           <input type="checkbox" name="tag" value="ok"> HTML태그 허용<br></div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>CONTENT</div></th>
                       <td colspan="3"><div class="td_left"><textarea id="MS_text_content" name="content" style="font-family: 굴림체; width: 100%; height: 380px;" 
                        placeholder="후기 내용을 적어주세요"></textarea>
                       <input type="hidden" name="mobile_content_type" value=""></div>
                       </td>
                   </tr>
                   <tr>
                       <th><div>FILE</div></th>
                       <td colspan="3">
                           <div class="td_left"><input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg"></div>
                          
                       </td>
                   </tr>
              </tbody>
           </table>
        <br>
      	<div style="text-align:right;">
		<input type="button" value="완료" class="btn btn_thatch" onclick="" >
		<input type="button" value="목록" class="btn btn_normal" onclick="location.href='review_board.jsp'" >
		</div>
 </form>
 </div>
</body>
</html>