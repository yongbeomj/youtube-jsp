
/* 회원가입 유효성검사 */
function signupcheck() {
	
	// 회원가입 input값 호출 및 변수에 대입 
	var id = document.getElementById("signupform").id.value;
	var pw = document.getElementById("signupform").pw.value;
	var pwconfirm = document.getElementById("signupform").pwconfirm.value;
	var name = document.getElementById("signupform").name.value;
	var birth = document.getElementById("signupform").birth.value;
	var phone = document.getElementById("signupform").phone.value;
	
	// 텍스트 패턴 검사
	var idj = /^[a-z0-9]{5,15}$/; // 아이디 : 영소문자 + 숫자 5~15자리 조합
	var pwj = /^[A-Za-z0-9]{5,15}$/; // 비밀번호 : 영문자 대,소문자 + 숫자 5~15자리 조합
	var namej = /^[A-Za-z0-9가-힣]{1,15}$/; // 이름 : 1글자 이상
	var phonej = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/; // 연락처 : 000-0000-0000
	
	// 유효성검사 문구
	// 아이디
	if (!idj.test(id)) {
		document.getElementById("idresult").innerHTML = "영소문자와 숫자 조합 5~15 사이만 가능합니다";
		document.getElementById("idresult").style.color = "red";
		return false;
	} else {
		document.getElementById("idresult").innerHTML = "사용가능한 아이디입니다";
		document.getElementById("idresult").style.color = "green";
	}
	
	// 비밀번호
	if(!pwj.test(pw) || !pwj.test(pwconfirm)) {
		document.getElementById("pwresult").innerHTML = "영문자 대소문자와 숫자 조합 5~15 사이만 가능합니다";
		document.getElementById("pwresult").style.color = "red";
		document.getElementById("pwconfirmresult").innerHTML = "영문자 대소문자와 숫자 조합 5~15 사이만 가능합니다";
		document.getElementById("pwconfirmresult").style.color = "red";
		return false;
	} else {
		if (pw != pwconfirm) {
			document.getElementById("pwresult").innerHTML = "비밀번호가 동일하지 않습니다";
			document.getElementById("pwresult").style.color = "red";
			document.getElementById("pwconfirmresult").innerHTML = "비밀번호가 동일하지 않습니다";
			document.getElementById("pwconfirmresult").style.color = "red";
			return false;
		} else {
			document.getElementById("pwresult").innerHTML = "사용가능한 비밀번호입니다";
			document.getElementById("pwresult").style.color = "green";
			document.getElementById("pwconfirmresult").innerHTML = "사용가능한 비밀번호입니다";
			document.getElementById("pwconfirmresult").style.color = "green";
		}
	}
	
	// 이름
	if (!namej.test(name)) {
		document.getElementById("nameresult").innerHTML = "이름을 입력해주시기 바랍니다";
		document.getElementById("nameresult").style.color = "red";
		return false;
	} else {
		document.getElementById("nameresult").innerHTML = "사용가능한 이름입니다";
		document.getElementById("nameresult").style.color = "green";
	}
	
	//생년월일
	if( birth == ""){
		document.getElementById("birthresult").innerHTML= "생년월일 선택해주시기 바랍니다";
		document.getElementById("birthresult").style.color = "red";
		return false;
	}else{
		document.getElementById("birthresult").innerHTML="";
	}
	
	// 연락처
	if (!phonej.test(phone)) {
		document.getElementById("phoneresult").innerHTML = "000-0000-0000 형식으로 입력해주시기 바랍니다";
		document.getElementById("phoneresult").style.color = "red";
		return false;
	} else {
		document.getElementById("phoneresult").innerHTML = "사용가능한 전화번호형식입니다";
		document.getElementById("phoneresult").style.color = "green";
	}
} 

/* 회원가입 유효성검사 end */

/* 아이디 중복체크 */
	$( function(){
		$("#id").change( function() { 
			$.ajax({ 
				url : "../../controller/member/idcheck.jsp" ,	
				data :{userid:document.getElementById("signupform").id.value} , 	
				success : function( result ){ 
					if( result == 1 ){
						document.getElementById("idresult").innerHTML = "사용중인 아이디입니다";
						document.getElementById("idresult").style.color = "red";
					}else{
						
					}
				}
			});
		});
	});
/* 아이디 중복체크 end */

+function ($) {
    'use strict';

    $(document).on('click.bs.sidebar.data-api', '[data-toggle="sidebar"]', function (e) {
        e.preventDefault();
        $(".sidebar").toggleClass("toggled");
        $(".has-sidebar").toggleClass("toggled");
    });
}(jQuery);

/* 아이디찾기 유효성검사 */

$(function(){
	$("#btnfindid").click(function(){ // 버튼 클릭이벤트 발생 시
		$.ajax({
			url : "../../controller/member/findidcontroller.jsp" ,
			data : {
				name : document.getElementById("findidform").name.value,
				phone : document.getElementById("findidform").phone.value
				},
			success : function(result){
				alert(result);
				if (result == 1){
					alert("qwe");
				} else {
					document.getElementById("findidresult").innerHTML = "일치하는 정보가 없습니다.";
				}
			}
		});
	});
});

/* 아이디찾기 유효성검사 end */


/* 회원탈퇴 [ ajax : jquery  ] */ 

	$( function(){ 
		$("#delete").click( function(){ 
			$.ajax({
				url : "../../controller/member/memberdeletecontroller.jsp" ,
				data : {password:document.getElementById("deleteform").password.value} ,
				success : function( result  ){
					if( result == 1 ){
						alert('회원탈퇴 되었습니다');
						location.href='../../controller/member/logoutcontroller.jsp'; // 세션 초기화
					}else{
						document.getElementById("deleteresult").innerHTML = "회원정보가 다릅니다.";
					}
				
				}
			});
		} );
	 }); 

	
/* 회원탈퇴 end */

function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('preview').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('preview').src = "";
  }
}

// 사이드바 start
+function ($) {
    'use strict';

    $(document).on('click.bs.sidebar.data-api', '[data-toggle="sidebar"]', function (e) {
        e.preventDefault();
        $(".sidebar").toggleClass("toggled");
        $(".has-sidebar").toggleClass("toggled");
    });
}(jQuery);
//사이드바 end


/* 댓글 등록 start */
function replywrite(v_no){ 
	//alert("시작");
	var r_contents = document.getElementById("replytext").value;
	$("#btnreplywrite").click( function(){ 
		alert(r_contents);
	
		$.ajax({
			url : "../controller/clipviewreplycontroller.jsp" ,
			data : {
				v_no : v_no,
				r_contents : r_contents
				},
			success : function(result){
				if (result == 1){
					 $("#replybox").load(window.location.href + "#replybox");
				} else {
					alert("오류발생. 관리자에게 문의");
				}
			}
		});
	});
}	
/* 댓글 등록 end */

/* 댓글 삭제 start */

function replydelete(r_no){
	alert("삭제?")
	$.ajax({ //페이지 전환이 없음 [ 해당 페이지와 통신 ]
	
		url : "../controller/clipviewreplydeletecontroller.jsp",
		data : {r_no:r_no},
		success : function(result){
			if(result ==1){
				alert("댓글이 삭제되었습니다.");
				 $("#replybox").load(window.location.href + "#replybox");
			}else{
				alert("오류발생. 관리자에게 문의");
			}
		}
	});
}
/* 댓글 삭제 end*/

/* 댓글 수정 start */
function replyupdate(r_no){
	alert("업데이트");
	document.getElementById("updatereply").style.display="";
	document.getElementById("updatereply").innerHTML="<textarea class='col-md-9' id='replytext2' placeholder='수정할 댓글 입력하기' class=' form-control ml-3'></textarea>"+
										"<button class='col-md-2 p-1 ml-4 btn btn-outline-danger' id='r_contentschangebtn'>확인</button>";
										
	alert(r_no);									
	$(function(){
		$("#r_contentschangebtn").click(function(){	
			alert("버튼 클릭");			
			alert(r_no);
			alert(document.getElementById("replytext2").value);					
			$.ajax({ //페이지 전환이 없음 [ 해당 페이지와 통신 ]
				url : "../controller/clipviewreplyupdatecontroller.jsp",
				data : {r_no:r_no, replytext2:document.getElementById("replytext2").value},
				success : function(result){
					alert(result);
					/*if(result){
						alert("댓글이 수정되었습니다.");
						document.getElementById("updatereply").style.display="none";
						//location.reload(); //현재 페이지 새로고침
					}else{
						alert("오류발생. 관리자에게 문의");
					}*/
				}
			});
		});
	});
}
/* 댓글 수정 end */


