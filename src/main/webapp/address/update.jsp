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
 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<script type="text/javascript">
  $(function(){
    $('#btn_DaumPostcode').on('click', DaumPostcode); // 다음 우편 번호
    $('#address_update').on('click', update); // 나의 배송 주소록 수정
  });

  function update() { // 주소록 수정
    frm.submit();
    location.href="../dev/create.do";
  }
  
</script>
 
</head> 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
  
  <div class='menu_line'></div>
 
  <FORM name='frm' method='POST' action='../address/update.do' class="form-horizontal">
    <!-- FK member_no 지정 -->
    <input type='hidden' name='member_no' id='member_no' value='1'>
    <!-- FK address_no 지정 -->
    <input type='hidden' name='address_no' id='address_no' value='${addressVO.address_no }'>

    
    <div class="form-group">   
      <div class="col-md-12">
        <label>주소록 이름: </label>
        <input type='text' class="form-control" id='address_name' name='address_name' value='${addressVO.address_name }'  placeholder="베프" required="required" style='width: 30%;'>
      </div>
    </div>
    
    <div class="form-group">   
      <div class="col-md-12">
        <label>이름: </label>
        <input type='text' class="form-control" id='address_member' name='address_member' value='${addressVO.address_member }'  placeholder="홍길동" required="required" style='width: 30%;'>
      </div>
    </div>
    
    <div class="form-group">   
      <div class="col-md-12">
        <label>연락처: </label>
        <input type='text' class="form-control" id='address_phone' name='address_phone' value='${addressVO.address_phone }'  placeholder="010-0000-0000" required="required" style='width: 30%;'>
      </div>
    </div> 

    <div class="form-group">
      <label for="zipcode" class="col-md-2 control-label" style='font-size: 0.9em;'>우편번호</label>    
      <div class="col-md-10" >
        <input type='text' class="form-control" name='zipcode' id='zipcode' 
                   value='' style='width: 30%;' placeholder="우편번호">
        <input type="button" id="btn_DaumPostcode" value="우편번호 찾기" class="btn btn-info btn-md">
      </div>
    </div>  

    <div class="form-group">
      <label for="address1" class="col-md-2 control-label" style='font-size: 0.9em;'>주소</label>    
      <div class="col-md-10">
        <input type='text' class="form-control" name='address1' id='address1' 
                   value='' style='width: 80%;' placeholder="주소">
      </div>
    </div>   

    <div class="form-group">
      <label for="address2" class="col-md-2 control-label" style='font-size: 0.9em;'>상세 주소</label>    
      <div class="col-md-10">
        <input type='text' class="form-control" name='address2' id='address2' 
                   value='' style='width: 80%;' placeholder="상세 주소">
      </div>
    </div>   

    <div class="form-group">
      <div class="col-md-12">

        <!-- ---------- DAUM 우편번호 API 시작 ---------- -->
        <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 200px;position:relative">
          <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
        </div>
        
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
        <script>
            // 우편번호 찾기 화면을 넣을 element
            var element_wrap = document.getElementById('wrap');
        
            function foldDaumPostcode() {
                // iframe을 넣은 element를 안보이게 한다.
                element_wrap.style.display = 'none';
            }
        
            function DaumPostcode() {
                // 현재 scroll 위치를 저장해놓는다.
                var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
                new daum.Postcode({
                    oncomplete: function(data) {
                        // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
        
                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var fullAddr = data.address; // 최종 주소 변수
                        var extraAddr = ''; // 조합형 주소 변수
        
                        // 기본 주소가 도로명 타입일때 조합한다.
                        if(data.addressType === 'R'){
                            //법정동명이 있을 경우 추가한다.
                            if(data.bname !== ''){
                                extraAddr += data.bname;
                            }
                            // 건물명이 있을 경우 추가한다.
                            if(data.buildingName !== ''){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                            fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                        }
        
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        $('#zipcode').val(data.zonecode); //5자리 새우편번호 사용 ★
                        $('#address1').val(fullAddr);  // 주소 ★
        
                        // iframe을 넣은 element를 안보이게 한다.
                        // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                        element_wrap.style.display = 'none';
        
                        // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                        document.body.scrollTop = currentScroll;
                        
                        $('#address2').focus(); //  ★
                    },
                    // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
                    onresize : function(size) {
                        element_wrap.style.height = size.height+'px';
                    },
                    width : '100%',
                    height : '100%'
                }).embed(element_wrap);
        
                // iframe을 넣은 element를 보이게 한다.
                element_wrap.style.display = 'block';
            }
        </script>
        <!-- ---------- DAUM 우편번호 API 종료 ---------- -->

      </div>
    </div>
    
      <div class="bottom_menu" style="padding-right: 20%;">
        <button type="button" id="address_update" name="address_update" class="btn btn-primary">주소록 수정</button>
        <button type="button" onclick="location.href='./list.do'" class="btn btn-primary">수정 취소</button>
      </div>
    
     <div style='clear: both;'></div>
    
  </FORM>
 
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>
