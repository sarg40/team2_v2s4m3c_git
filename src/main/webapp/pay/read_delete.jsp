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
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head> 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />

  <DIV class="title_line">
    전통주 결제 정보
  </DIV>

  <ASIDE class="aside_left">
    <A href="http://172.16.12.99:9090/team2/"> HOME ></A> 
    <A href="javascript:location.reload();"> 전통주 목록 ></A>
    <A href="./list.do"> 전통주 주문 > </A>
    결제 정보 삭제
  </ASIDE>
  
  <ASIDE class="aside_right">
    <A href="javascript:location.reload();">새로고침</A>
    <span class='menu_divide' >│</span>
    <A href="../qna/list.do">질문 목록</A>
  </ASIDE> 
  
  <div class='menu_line'></div>
 
  <FORM name='frm' method='POST' action='./delete.do'>
    <!-- FK communuity_no 지정 -->
    <input type='hidden' name='member_no' id='member_no' value='1'>
    <!-- FK member_no 지정 -->
    <input type='hidden' name='product_no' id='product_no' value='1'>
   
   <input type='hidden' name='buy_no' id='buy_no' value='${buyVO.buy_no }'>   
   <input type='hidden' name='pay_no' id='pay_no' value='${payVO.pay_no }'>   
            
      <div class="form-group">   
        <div class="col-md-12" style='text-align: center; margin: 30px;'>
          삭제 되는 결제 정보: ${payVO.pay_no }<br><br>
          결제 정보를 삭제하시겠습니까? 삭제하시면 복구 할 수 없습니다.<br><br>
          
                    
          <button type = "submit" class="btn btn-info">삭제 진행</button>
          <button type = "button" onclick = "history.back()" class="btn btn-info">취소</button>
        </div>
      </div>   
  </FORM>
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>
