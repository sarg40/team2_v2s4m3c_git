<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>리뷰 수정</title>
 
<link href="../css/common.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">
<link href="../css/style.css" rel="Stylesheet" type="text/css">
 
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
 
<script type="text/JavaScript">
  // window.onload=function(){
  //  CKEDITOR.replace('content');  // <TEXTAREA>태그 id 값
  // };

  $(function() {
    CKEDITOR.replace('review_content');  // <TEXTAREA>태그 id 값
  });
</script> 
</head> 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />

  <DIV class='title_line' style="width: 80%; margin: 30px auto; font-size: 20px; font-weight: bold;">
    <strong class ="review_title">『${reviewVO.review_title}』 수정</strong>
  </DIV>
  
  <div style="width: 80%; margin: 5px auto;">
    <A href="../product/list.do?productgrp_no=${productgrpVO.productgrp_no }">${productgrpVO.productgrp_name }</A> > 
    <A href="../product/read.do?product_no=${productVO.product_no }">${productVO.product_name }</A> > 
    ${reviewVO.review_title}
  
  <%-- <ASIDE class="aside_left">
    
    <A href="../review_cate/list.do?review_categrp_no=${review_CategrpVO.review_categrp_no }">${review_CategrpVO.review_categrp_name }</A> > 
    <A href="../review/list.do?review_cate_no=${param.review_cate_no }&review_word=${param.review_word }&nowPage=${param.nowPage}">${review_CateVO.review_cate_name}</A> > 수정
  </ASIDE> --%>
  <ASIDE class="aside_right">
    <A href="javascript:location.reload();">새로고침</A>
    <!-- <span class='menu_divide' >│</span> --> 
  </ASIDE> 

  <div class='menu_line'></div>
  
  <div class = "product_total">   
       <span class = "product_img">
          <a href="../product/read.do?product_no=${param.product_no}&product_word=${param.product_word }&nowPage=${param.nowPage}">
            <IMG src='../product/storage/main_images/${productVO.product_thumb1 }' style='margin: 5px auto; width: 150px; height: 150px;'>
         </a>
       </span>
       <span class = "product_info">  
         <em style="font-weight: bold; font-size: 16px;">상품명: ${productVO.product_name}</em><br>                                                                                                       
         <strong style="font-size: 14px; color: #189fdb;">판매 금액: <fmt:formatNumber value="${productVO.product_cost}" pattern="#,###,###"></fmt:formatNumber>원</strong>
       </span>
     </div>
 
  <DIV style='width: 100%;'>
    <FORM name='frm' method='POST' action='./update.do'
               enctype="multipart/form-data" class="form-horizontal">
      <!-- FK memberno 지정 -->
      <input type='hidden' name='member_no' id='member_no' value='${reviewVO.member_no }'>
      <!-- FK categrpno 지정 -->
      <input type='hidden' name='product_no' id='product_no' value='${param.product_no }'>
      <input type='hidden' name='nowPage' id='nowPage' value='${param.nowPage }'>
      <input type='hidden' name='review_no' id='review_no' value='${reviewVO.review_no }'>
      
      
      <div class="form-group">   
        <div class="col-md-12">
          <input type='text' class="form-control" name='review_title' value="${reviewVO.review_title }" 
                    placeholder="제목" required="required" style='width: 80%;' autofocus="autofocus">
        </div>
      </div>   
      
      <div class="form-group">   
        <div class="col-md-12">
          <textarea class="form-control" name='review_content' id='review_content' rows='10' style="width:80%;" placeholder="내용" >${reviewVO.review_content }</textarea>
        </div>
      </div>
      
      <div class="form-group">   
        <div class="col-md-12">
          <input type='number' class="form-control" name='review_score'  value='${reviewVO.review_score }' min = '0' max = '10'  placeholder="평점" style='width: 20%;'>
        </div>
      </div>

      <div class="form-group">   
        <div class="col-md-12">
          <input type='text' class="form-control" name='review_word'  value='${reviewVO.review_word }' placeholder="검색어" style='width: 80%;'>
        </div>
      </div>

      <div class="form-group">   
        <div class="col-md-12">
          <input type='password' class="form-control" name='review_passwd'  value='' placeholder="패스워드" style='width: 20%;'>
        </div>
      </div>
      
      <DIV class='content_bottom_menu'>
        <button type="submit" class="btn btn-info">수정</button>
        <button type="button" 
                    onclick="location.href='./list.do?product_no=${productVO.product_no}'" 
                    class="btn btn-info">취소[목록]</button>
      </DIV>
              
    </FORM>
  </DIV>
</div>
  
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>

