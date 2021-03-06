<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>리뷰 전체목록</title>
 
<link href="../css/common.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">
<link href="../css/style.css" rel="Stylesheet" type="text/css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />

  <DIV class='title_line' style="width: 80%; margin: 30px auto; font-size: 20px; font-weight: bold;">
    <strong class ="review_title">등록된 전체 리뷰</strong>
  </DIV>
  
  <div style="width: 80%; margin: 5px auto;">
    <ASIDE class="aside_right">
      <A href="javascript:location.reload();">새로고침</A>
    </ASIDE> 
    
    <DIV style="text-align: right;">  
    <form name='frm' id='frm' method='get' action='./list_all.do'>
      <input type='hidden' name='product_no' value='${productVO.product_no }'>
      <br>
      <c:choose>
        <c:when test="${param.review_word != '' }"> <%-- 검색하는 경우 --%>
          <input type='text' name='review_word' id='review_word' value='${param.review_word }' 
                     style='width: 20%;'>
        </c:when>
        <c:otherwise> <%-- 검색하지 않는 경우 --%>
          <input type='text' name='review_word' id='review_word' value='' style='width: 20%;'>
        </c:otherwise>
      </c:choose>
      <button type='submit'>검색</button>
      <c:if test="${param.review_word.length() > 0 }">
        <button type='button' 
                     onclick="location.href='./list_all.do'">검색 취소</button>  
      </c:if>    
    </form>
  </DIV>
  </div>
  
  <div style='width: 80%; margin: 0 auto;' >
    <c:forEach var="review_member_productVO" items="${list }" varStatus="status">
      <c:set var="review_no" value="${review_member_productVO.review_no }" />
      <c:set var="review_thumb" value="${review_member_productVO.review_thumb }" />
      <c:set var="review_title" value="${review_member_productVO.review_title }" />
      <c:set var="member_nickname" value="${review_member_productVO.member_nickname }" />
      <c:set var="review_view" value="${review_member_productVO.review_view }" />
      <c:set var="review_score" value="${review_member_productVO.review_score }" />
      <c:set var="review_file" value="${review_member_productVO.review_file }" />
      <c:set var="review_date" value="${review_member_productVO.review_date }" />
      <c:set var="review_good" value="${review_member_productVO.review_good }" />

      
      <c:if test="${status.index % 4 == 0 && status.index != 0 }"> 
        <br><br>
      </c:if>

      <DIV style='width: 24%; float: left; margin: 0.5%; padding: 0.5%; background-color: #FFFFFF;'>
      
      <!-- 이미지 출력관련 jstl 시작  -->
      <c:choose>
        <c:when test="${review_thumb.endsWith('jpg') || review_thumb.endsWith('png') || review_thumb.endsWith('gif')}">
          <a href="./read.do?review_no=${review_no }">
            <IMG src="./storage/main_images/${review_thumb }" style="width: 150px; height: 150px;"> 
          </a>
          <br><br>
          
          <div style="font-size: 18px; font-weight: bold; cursor: pointer;" onclick="location.href='./read.do?review_no=${review_no}'">
            ${review_title} <img src='./images/good1.jpg' style='width: 20px;' title="추천수"> (${review_good})
          </div>          
          <br>
          
          회원명: ${member_nickname }｜등록일: ${review_date.substring(0, 16) }
          <br>
          
          <div style='font-size: 14px; color: #b2b2b2' > 조회: ${review_view } </div>
        </c:when>
        
       
        <c:otherwise> 
        <a href="./read.do?review_no=${review_no }">
            <img src='./images/none1.png' style='width: 150px; height: 150px;'>
        </a>    
        <br><br>
        
        <div style="font-size: 18px; font-weight: bold; cursor: pointer;" onclick="location.href='./read.do?review_no=${review_no}'">
          ${review_title} <img src='./images/good1.jpg' style='width: 20px;' title="추천수"> (${review_good})
        </div> 
        <br>  
        
        회원명: ${member_nickname }｜등록일: ${review_date.substring(0, 16) }
        <br>
        
        <div style='font-size: 14px; color: #b2b2b2' > 조회: ${review_view } </div>
        </c:otherwise>
      </c:choose>
      </DIV>
    </c:forEach>
    <!-- 갤러리 Layout 종료 -->
    <br><br>
    <DIV class='bottom_menu'>${paging }</DIV>
  </div>

<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>


