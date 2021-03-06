<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
  content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>전통주 리뷰 커뮤니티</title>

<link href="../css/common.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
  <jsp:include page="/menu/top.jsp" flush='false' />
  <c:set var="member_no" value="${memberVO.member_no}" />
  <DIV class='title_line'>회원</DIV>
  <ASIDE class="aside_left">
    <A href='./list.do'>회원 목록</A> > 
    회원정보
  </ASIDE>
  <ASIDE class="aside_right">
    <A href='./update.do?&member_no=${member_no}'>수정</A>
    <span class='menu_divide'> | </span>
    <A href='./delete.do?&member_no=${member_no}'>탈퇴</A>
    <c:choose>
      <%-- 회원으로 로그인 된 상태라면 메뉴 보이기 --%>
      <c:when test="${sessionScope.member_id != null}">
        <span class='menu_divide'> | </span>
        <A href='../login_log/list.do?member_no=${member_no}'>로그인 기록</A>
      </c:when>
    </c:choose>
  </ASIDE>
  <div class='menu_line'></div>

  <FORM name='frm' method="get" action='./update.do'>
    <input type="hidden" name="member_no" value="${member_no}">
    <table class="table table-hover">
      <colgroup>
        <col style="width: 20%;"></col>
        <col style="width: 80%;"></col>
      </colgroup>
      <thead>
        <tr>
          <th>ID</th>
          <th>${memberVO.member_id}</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>이름</td>
          <td>${memberVO.member_name }</td>
        </tr>
        <tr>
          <td>닉네임</td>
          <td>${memberVO.member_nickname }</td>
        </tr>
        <tr>
          <td>주민등록번호</td>
          <td>${memberVO.member_isAdult }</td>
        </tr>
        <tr>
          <td>전화번호</td>
          <td>${memberVO.member_tel }</td>
        </tr>
        <tr>
          <td>이메일</td>
          <td>${memberVO.member_email }</td>
        </tr>
        <tr>
          <td>주소</td>
          <td>(${memberVO.member_zipcode }) ${memberVO.member_address1 } ${memberVO.member_address2 }</td>
        </tr>
        <tr>
          <td>프로필사진</td>
          <td><img src="./storage/profile_images/${memberVO.member_profilepic }" style="width: 300px;"></td>
        </tr>
        <tr>
          <td>가입일</td>
          <td>${memberVO.member_rdate }</td>
        </tr>
        <tr>
          <td>등급</td>
          <td>${memberlevel_name }</td>
        </tr>
        <tr>
          <td>SNS연동</td>
          <td>${memberVO.snslogin_no }</td>
        </tr>
      </tbody>
    </table>
  </FORM>

  <jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>

