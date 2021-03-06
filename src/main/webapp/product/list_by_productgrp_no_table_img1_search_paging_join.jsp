<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>전통주</title>
 
<link href="../css/common.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">
<link href="../css/style.css" rel="stylesheet" type="text/css">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 
</head>
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
  <DIV class="title_line">
    ${productgrpVO.productgrp_name}
  </DIV>

  <ASIDE class="aside_left">
    <A href="../productgrp/list.do?productgrp_no=${productgrpVO.productgrp_no }">${productgrpVO.productgrp_name }</A> >
    <A href="../product/list.do?productgrp_no=${param.productgrp_no }&product_word=${param.product_word }&nowPage=${param.nowPage}">${productgrpVO.productgrp_name}</A> >
     전체 보기 
  </ASIDE>
  <ASIDE class="aside_right">
       <c:if test="${sessionScope.member_id != null  or sessionScope.member_id_admin != null }">
      <A href="./create.do?productgrp_no=${productgrpVO.productgrp_no }">등록</A>
      <span class='menu_divide' >│</span>
    </c:if>  
    <A href="javascript:location.reload();">새로고침</A>
    <span class='menu_divide' >│</span>
    <A href="./list_by_productgrp_no_grid1.do?productgrp_no=${productgrpVO.productgrp_no }">갤러리형</A>
  </ASIDE> 
  
  <DIV style="text-align: right;">  
    <form name='frm' id='frm' method='get' action='./list.do'>
      <input type='hidden' name='productgrp_no' value='${productgrpVO.productgrp_no }'>
      <br>
      <c:choose>
        <c:when test="${param.product_word != '' }"> <%-- 검색하는 경우 --%>
          <input type='text' name='product_word' id='product_word' value='${param.product_word }' 
                     style='width: 20%;'>
        </c:when>
        <c:otherwise> <%-- 검색하지 않는 경우 --%>
          <input type='text' name='product_word' id='product_word' value='' style='width: 20%;'>
        </c:otherwise>
      </c:choose>
      <button type='submit'>검색</button>
      <c:if test="${param.product_word.length() > 0 }">
        <button type='button' 
                     onclick="location.href='./list.do?productgrp_no=${productgrpVO.productgrp_no}&product_word='">검색 취소</button>  
      </c:if>    
    </form>
  </DIV>
      
  <DIV class='menu_line'></DIV>

   
  <div style='width: 100%;'>
    <table class="table table-striped" style='width: 100%;'>
      <colgroup>
        <col style="width: 15%;"></col>
        <col style="width: 15%;"></col>
        <col style="width: 45%;"></col>
        <col style="width: 15%;"></col>
        <col style="width: 10%;"></col>
      </colgroup>
      <%-- table 컬럼 --%>
      <thead>
        <tr>
          <th style='text-align: center;'>등록일</th>
          <th style='text-align: center;'>파일</th>
          <th style='text-align: center;'>제목</th>
          <th style='text-align: center;'>회원</th>
          <th style='text-align: center;'>가격</th>
        </tr>
      
      </thead>
      
      <%-- table 내용 --%>
      <tbody>
        <c:forEach var="product_MemberVO" items="${list }">
          <c:set var="product_name" value="${product_MemberVO.product_name }" />
          <c:set var="product_no" value="${product_MemberVO.product_no }" />
          <c:set var="product_file1" value="${product_MemberVO.product_file1 }" />
          <c:set var="product_thumb1" value="${product_MemberVO.product_thumb1 }" />
          <c:set var="product_indent" value="${product_MemberVO.product_indent }" />
          <c:set var="product_ansnum" value="${product_MemberVO.product_ansnum }" />
          <c:set var="product_mid" value="${product_MemberVO.mid }" />
          <c:set var="product_cost" value="${product_MemberVO.product_cost }" />
          <c:set var="product_rdate" value="${product_MemberVO.product_rdate }" />
                    
          <tr> 
            <td style='vertical-align: middle; text-align: center;'>${product_rdate.substring(0, 10)}</td>
             <td style='vertical-align: middle; text-align: center;'>
              <c:choose>
                <c:when test="${product_thumb1.endsWith('jpg') || product_thumb1.endsWith('png') || product_thumb1.endsWith('gif')}">
                  <IMG src="./storage/main_images/${product_thumb1 }" style="width: 120px; height: 80px;"> 
                </c:when>
                <c:otherwise> <!-- 이미지가 아닌 일반 파일 -->
                  ${product_file1}
                </c:otherwise>
              </c:choose>
            </td> 
            <td style='vertical-align: middle;'>
              <c:choose>
                  <c:when test="${product_ansnum == 0 }"> <%-- 부모글인 경우 아이콘 출력 --%>
                      <img src='./images/ting1.png'>
                  </c:when>
                  <c:when test="${product_ansnum > 0 }"> <%-- 자식글 아이콘 출력, 들여 쓰기 --%>
                      <img src='./images/white.png' style='width: ${product_indent * 20}px; height: 20px; opacity: 0.0;'>
                      <img src='./images/reply3.png'>
                  </c:when>
              </c:choose>
            
              <a href="./read.do?product_no=${product_no}&product_word=${param.product_word }&nowPage=${param.nowPage}">${product_name}</a> 
            </td> 
            <td style='vertical-align: middle; text-align: center;'>${product_mid}</td>
            <td style='vertical-align: middle; text-align: center;'>${product_cost}</td>
          </tr>
        </c:forEach>
        
      </tbody>
    </table>
    <DIV class='bottom_menu'>${paging }</DIV>
  </div>
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>


