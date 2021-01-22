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
  <DIV class="title_line">
    등록된 모든 리뷰
  </DIV>
  <ASIDE class="aside_left">
    전체 보기 
  </ASIDE>
  <ASIDE class="aside_right">
    <A href="javascript:location.reload();">새로고침</A>
  </ASIDE> 
  <DIV class='menu_line'></DIV>
  
  <div style='width: 100%;'>
    <table class="table table-striped" style='width: 100%;'>
      <colgroup>
        <col style="width: 10%;"></col>
        <col style="width: 20%;"></col>
        <col style="width: 35%;"></col>
        <col style="width: 10%;"></col>
        <col style="width: 10%;"></col>
        <col style="width: 15%;"></col>
      </colgroup>
      <%-- table 컬럼 --%>
      <thead>
        <tr>
          <th style='text-align: center;'>번호</th>
          <th style='text-align: center;'>이미지 파일</th>
          <th style='text-align: center;'>제목</th>
          <th style='text-align: center;'>조회</th>
          <th style='text-align: center;'>회원</th>
          <th style='text-align: center;'>등록일</th>
        </tr>
      
      </thead>
      
      <%-- table 내용 --%>
      <tbody>
        <c:forEach var="reviewVO" items="${list }">
          <c:set var="review_no" value="${reviewVO.review_no }" />
          <c:set var="review_thumb" value="${reviewVO.review_thumb }" />
          <c:set var="review_title" value="${reviewVO.review_title }" />
          <c:set var="member_no" value="${reviewVO.member_no }" />
          <c:set var="review_view" value="${reviewVO.review_view }" />
          
          <tr>       
            <td style='vertical-align: middle; text-align: center;'>${reviewVO.review_no}</td>
            <td style='vertical-align: middle; text-align: center;'>
              <c:choose>
                <c:when test="${review_thumb.endsWith('jpg') || review_thumb.endsWith('png') || review_thumb.endsWith('gif')}">
                  <IMG src="./storage/main_images/${review_thumb }" style="width: 120px; height: 80px;"> 
                </c:when>
                <c:otherwise> <!-- 이미지가 아닌 일반 파일 -->
                  ${reviewVO.review_file}
                </c:otherwise>
              </c:choose>
            </td>  
            <td style='vertical-align: middle; text-align: center;'>
              <a href="./read.do?review_no=${review_no}">${review_title}</a> 
            </td> 
            <td style='vertical-align: middle; text-align: center;'>${review_view}</td>
            <td style='vertical-align: middle; text-align: center;'>${member_no}</td>
            <td style='vertical-align: middle; text-align: center;'>${reviewVO.review_date.substring(0, 10)}</td>
          </tr>
        </c:forEach>
        
      </tbody>
    </table>
    <br><br>
  </div>
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>

