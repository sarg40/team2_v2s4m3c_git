<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>전통주 리뷰 사이트</title>
 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
<link href="../css/common.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">
 
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head> 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
  <DIV class="title_line">
    『${qnaVO.qna_no}』 이미지 변경 및 삭제
  </DIV>
  
  <ASIDE class="aside_left">
    <A href="http://172.16.12.99:9090/team2/"> HOME ></A> 
    <A href="javascript:location.reload();"> 커뮤니티 ></A>
    <A href="./list.do"> Q&A > </A>
    이미지 변경 및 삭제
  </ASIDE>
  
  <ASIDE class="aside_right">
    <A href="javascript:location.reload();">새로고침</A>
    <span class='menu_divide' >│</span>
    <A href="../qna/list.do">질문 목록</A>  
  </ASIDE> 
 
  <div class='menu_line'></div>
  
  <DIV style='width: 100%;'>
    <H4>이미지 삭제</H4>

    <%-- 이미지가 존재하는 경우 이미지를 출력하고 삭제 버튼 표시 --%>
    <c:set var="file1" value="${qnaVO.file1 }" />
    <c:if test="${file1.endsWith('jpg') || file1.endsWith('png') || file1.endsWith('gif')}">
      <FORM name='frm' method='POST' action='./img_delete.do' class="form-horizontal">
    <!-- FK qna_no 지정 -->
    <input type="hidden" name="qna_no" id='qna_no' value="${qnaVO.qna_no }">
    <!-- FK member_no 지정 -->
    <input type='hidden' name='member_no' id='member_no' value='1'>


    <IMG src="./storage/main_images/${file1 }" style="width: 50%; margin-bottom: 10px;">
        
        <div class="form-group">   
          <div class="col-md-12">
            <input type='password' class="form-control" name='qna_passwd'  value='${qnaVO.qna_passwd}' placeholder="패스워드" style='width: 20%;'>
          </div>
        </div>
        
        <button type="submit" class="btn btn-info">이미지 삭제</button>
        <button type="button" 
                    onclick="location.href='./read.do?qna_no=${param.qna_no}'" 
                    class="btn btn-info">취소[조회]</button>
      </FORM> 
    </c:if> 
    
    <HR>
    <H4>새로운 이미지 등록</H4>
    <%-- 이미지가 존재하는 경우 새로운 이미지 등록 폼 출력 --%>
    <FORM name='frm' method='POST' action='./img_update.do' class="form-horizontal"
                enctype="multipart/form-data">
               
    <!-- FK qna_no 지정 -->
    <input type="hidden" name="qna_no" id='qna_no' value="${qnaVO.qna_no }">
    <!-- FK member_no 지정 -->
    <input type='hidden' name='member_no' id='member_no' value='1'>
      
      
      <div class="form-group">   
        <div class="col-md-12">
          <%-- 실제 컬럼명: file1, Spring File 객체 대응: file1MF --%>
          <input type='file' class="form-control" name='file1MF' id='file1MF' 
                    value='' placeholder="파일 선택">
        </div>
      </div>
      
      <div class="form-group">   
        <div class="col-md-12">
          <input type='password' class="form-control" name='qna_passwd'  value='${qnaVO.qna_passwd}' placeholder="패스워드" style='width: 20%;'>
        </div>
      </div>
      
      <button type="submit" class="btn btn-info">새로운 이미지 등록</button>
      <button type="button" 
                  onclick="location.href='./read.do?qna_no=${param.qna_no}'" 
                  class="btn btn-info">취소[조회]</button>
    </FORM>
  </DIV>

  
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>
