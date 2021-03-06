<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Resort world</title>
 
<link href="../css/common.css" rel="stylesheet" type="text/css">
<link href="../css/menu.css" rel="stylesheet" type="text/css">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 네이버 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>

<link href="../css/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
  function loadDefault() {
    $('#member_id').val('user1');
    $('#member_passwd').val('1234');
  }  

  var naverLogin = new naver.LoginWithNaverId(
      {
        loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
      }
    );
</script> 

</head> 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
   <DIV class='title_line'>
  회원
  </DIV>
  <ASIDE class="aside_left">
    <A href='./login.do'>로그인</A>
  </ASIDE>
 
<DIV style='width: 80%; margin: 0px auto;'>
  <FORM name='frm' method='POST' action='./login.do' class="form-horizontal">
  
    <div class="form-group">
      <label class="col-md-4 control-label" style='font-size: 0.8em;'>아이디</label>    
      <div class="col-md-8">
        <input type='text' class="form-control" name='member_id' id='member_id' 
                   value='' required="required" 
                   style='width: 30%;' placeholder="아이디" autofocus="autofocus">
      </div>
    </div>   
 
    <div class="form-group">
      <label class="col-md-4 control-label" style='font-size: 0.8em;'>패스워드</label>    
      <div class="col-md-8">
        <input type='password' class="form-control" name='member_passwd' id='member_passwd' 
                  value='' required="required" style='width: 30%;' placeholder="패스워드">

      </div>
    </div>   
 
    <div class="form-group">
      <div class="col-md-offset-4 col-md-8">
        <button type="submit" class="btn btn-primary btn-md">로그인</button>
        <button type='button' onclick="location.href='./create.do'" class="btn btn-primary btn-md">회원가입</button>
        <button type='button' onclick="loadDefault();" class="btn btn-primary btn-md">테스트 계정</button>
      </div>
    </div>
    
  </FORM>
  <!-- 네이버 로그인 화면으로 이동 시키는 URL -->
  <!-- 네이버 로그인 화면에서 ID, PW를 올바르게 입력하면 callback 메소드 실행 요청 -->
  <div id="naver_id_login" style="text-align:center">
    <a href="${url}"><img src="../css/images/naver_login_green.PNG" style='width: 250px;'></a>
  </div>
</DIV>

<br>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>

