

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

/* 회원정보 수정 */

function namechange(){ 
		
	document.getElementById("inputname").style = "display:block";
	document.getElementById("btnname").style = "display:none";
	document.getElementById("namechangebtn").style = "display:block";
	document.getElementById("tdnameresult").style = "display:block";
	
	$( function(){
		$("#namechangebtn").click( function() { 
			$.ajax({ 
				url : "../../controller/member/memberupdate.jsp" ,	
				data :{ newname:document.getElementById("inputname").value} , 	
				success : function( result ){ 
					if( result == 1 ){
						document.getElementById("tdname").innerHTML =  document.getElementById("inputname").value;
					}else{
						alert("수정 오류 [관리자에게 문의 바랍니다]");
					}
					document.getElementById("inputname").style = "display:none";
					document.getElementById("btnname").style = "display:block";
					document.getElementById("namechangebtn").style = "display:none";
					document.getElementById("tdnameresult").style = "display:none";
					location.reload();
				}
			});
		});
	});
}
function bitrhchange(){ 
		
	document.getElementById("inputbirth").style = "display:block";
	document.getElementById("btnbirth").style = "display:none";
	document.getElementById("birthchangebtn").style = "display:block";
	document.getElementById("tdbirthresult").style = "display:block";
	
	$( function(){
		$("#birthchangebtn").click( function() { 
			$.ajax({ 
				url : "../../controller/member/memberupdate.jsp" ,	
				data :{ newbirth:document.getElementById("inputbirth").value} , 	
				success : function( result ){ 
					if( result == 1 ){
						document.getElementById("tdbirth").innerHTML =  document.getElementById("inputbirth").value;
					}else{
						alert("수정 오류 [관리자에게 문의 바랍니다]");
					}
					document.getElementById("inputbirth").style = "display:none";
					document.getElementById("btnbirth").style = "display:block";
					document.getElementById("birthchangebtn").style = "display:none";
					document.getElementById("tdbirthresult").style = "display:none";
					location.reload();
				}
			});
		});
	});
}
function phonechange(){ 
		
	document.getElementById("inputphone").style = "display:block";
	document.getElementById("btnphone").style = "display:none";
	document.getElementById("phonechangebtn").style = "display:block";
	document.getElementById("tdphoneresult").style = "display:block";
	
	$( function(){
		$("#phonechangebtn").click( function() { 
			$.ajax({ 
				url : "../../controller/member/memberupdate.jsp" ,	
				data :{ newphone:document.getElementById("inputphone").value} , 	
				success : function( result ){ 
					if( result == 1 ){
						document.getElementById("tdphone").innerHTML =  document.getElementById("inputphone").value;
					}else{
						alert("수정 오류 [관리자에게 문의 바랍니다]");
					}
					document.getElementById("inputphone").style = "display:none";
					document.getElementById("btnphone").style = "display:block";
					document.getElementById("phonechangebtn").style = "display:none";
					document.getElementById("tdphoneresult").style = "display:none";
					location.reload();
				}
			});
		});
	});
}
/* 회원정보 수정 end */


/* 회원정보 수정 유효성검사 */

function memberinfoname() {
	
	// 회원가입 input값 호출 및 변수에 대입 
	var name = document.getElementById("inputname").value;
	// 텍스트 패턴 검사
	var namej = /^[A-Za-z0-9가-힣]{1,15}$/; // 이름 : 1글자 이상
	
	// 유효성검사 문구
	
	// 이름
	if (!namej.test(name)) {
		document.getElementById("tdnameresult").innerHTML = "이름을 입력해주시기 바랍니다";
		document.getElementById("tdnameresult").style.color = "red";
		return false;
	} else {
		document.getElementById("tdnameresult").innerHTML = "사용가능한 이름입니다";
		document.getElementById("tdnameresult").style.color = "green";
	}
} 

function memberinfobirth() {
	
	// 회원가입 input값 호출 및 변수에 대입 
	var birth = document.getElementById("inputbirth").value;
	
	// 생년월일
	if( birth == "" ){
		document.getElementById("tdbirthresult").innerHTML= "생년월일을 입력해주시기 바랍니다";
		document.getElementById("tdbirthresult").style.color = "red";
		return false;
	}else{
		document.getElementById("tdbirthresult").innerHTML="사용가능한 생년월일입니다";
		document.getElementById("tdbirthresult").style.color = "green";
	}
} 
function memberinfophone() {
	
	// 회원가입 input값 호출 및 변수에 대입 
	var phone = document.getElementById("inputphone").value;
	
	// 텍스트 패턴 검사
	var phonej = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/; // 연락처 : 000-0000-0000
	
	// 유효성검사 문구
	
	// 연락처
	if (!phonej.test(phone)) {
		document.getElementById("tdphoneresult").innerHTML = "01012345678 형식으로 입력해주시기 바랍니다";
		document.getElementById("tdphoneresult").style.color = "red";
		return false;
	} else {
		document.getElementById("tdphoneresult").innerHTML = "사용가능한 전화번호형식입니다";
		document.getElementById("tdphoneresult").style.color = "green";
	}
} 

/* 회원정보 수정 유효성검사 end*/




/* 비밀번호 변경 */

	$(function(){
		$("#pwchangebtn").click(function(){
			//alert('통신확인');
			$.ajax({
				url : "../../controller/member/memberupdate.jsp" ,
				data : {
					newpw :document.getElementById("inputpw").value ,
					newpwconfirm : document.getElementById("inputpwconfirm").value},
					success : function(result){
					if(result == 1){
						alert("비밀번호가 변경되었습니다");
						location.href='../../view/member/memberinfo.jsp';
					} else {
						alert("비밀번호가 일치하지 않습니다");
						location.href='../../view/member/memberinfo.jsp';
						document.getElementById("updatepwresult").innerHTML = "비밀번호가 일치하지 않습니다";
					}
					location.reload();
				}
			});
		});
	});
/* 비밀번호 변경 end*/


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

/* 이미지 미리보기 */
function readURL(input) {
	
  if (input.files && input.files[0]) { // 현재 태그에 파일이 있을경우 
    var reader = new FileReader();  // 이미지 경로 가져오는 객체 
    reader.onload = function(e) {	// 가져왔을때 이벤트 실행 [인수->파일경로 ]   
		document.getElementById('preview').src = e.target.result; // 가져온 이미지경로를 이미지 속성에 추가 	    
	};
    reader.readAsDataURL(input.files[0]);	// 객체에 태그 추가 
  } else {
    document.getElementById('preview').src = ""; // 없을경우 
  }
}
/* 이미지 미리보기 end */

/* 댓글 등록 start */
function replywrite(v_no){ 
	var r_contents = document.getElementById("replytext").value;
		$("#btnreplywrite").click( function(){ 
			alert("시작");
			alert(r_contents);
			$.ajax({
				url : "../controller/clip/clipviewreplycontroller.jsp" ,
				data : {
					v_no : v_no,
					r_contents : r_contents
					},
				success : function(result){
					if (result == 1){
						$( "#replybox" ).load(window.location.href + " #replybox" );
						$( "#replydiv" ).load(window.location.href + " #replydiv" );
						document.getElementById("replytext").value="";
					} else {
						alert("오류발생. 관리자에게 문의");
					}
				}
			});
		//}
	});
}		
/* 댓글 등록 end */

/* 댓글 삭제 start */

function replydelete(r_no){
	alert("삭제?")
	$.ajax({ //페이지 전환이 없음 [ 해당 페이지와 통신 ]
	
		url : "../controller/clip/clipviewreplydeletecontroller.jsp",
		data : {r_no:r_no},
		success : function(result){
			if(result ==1){
				alert("댓글이 삭제되었습니다.");
				 $( "#replybox" ).load(window.location.href + " #replybox" );
					$( "#replydiv" ).load(window.location.href + " #replydiv" );
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
	
	if(document.getElementById("ii").value == "0" ){ 
		document.getElementById("updatereply"+r_no).style.display="";
		document.getElementById("updatereply"+r_no).innerHTML="<textarea class='col-md-9' id='replytext2' placeholder='수정할 댓글 입력하기' class=' form-control ml-3'></textarea>"+
											"<button class='col-md-2 p-1 ml-4 btn btn-outline-danger' id='r_contentschangebtn'>확인</button>";
		
		document.getElementById("ii").value = "1";
		
		document.getElementById("replycancelbtn"+r_no).style.display = "";
		document.getElementById("replyupdatebtn"+r_no).style.display = "none";
	
		//수정 글자 눌렀을 때
		$(function(){
			$("#replycancelbtn"+r_no).click(function(){
				
				document.getElementById("replycancelbtn"+r_no).style.display="none";
				document.getElementById("replyupdatebtn"+r_no).style.display= "inline";
				document.getElementById("updatereply"+r_no).style.display="none";
				alert("취소버튼 누름");
				
				document.getElementById("ii").value = "0";
			});	
		});
		
	}
				
	alert(r_no);
	
	//수정버튼 눌렀을 때
		$(function(){
			if( document.getElementById("ii").value == "1" ){
					
				alert(r_no);
				$("#r_contentschangebtn").click(function(){	
					
					//alert("버튼 클릭");			
					//alert(r_no);
					//alert(document.getElementById("replytext2").value);					
					$.ajax({ //페이지 전환이 없음 [ 해당 페이지와 통신 ]
						url : "../controller/clip/clipviewreplyupdatecontroller.jsp",
						data : {r_no:r_no, replytext2:document.getElementById("replytext2").value},
						success : function(result){
							alert(result);
							if(result){
								alert("댓글이 수정되었습니다.");
								document.getElementById("updatereply"+r_no).style.display="none";
								$( "#replybox" ).load(window.location.href + " #replybox" );
								$( "#replydiv" ).load(window.location.href + " #replydiv" );
								document.getElementById("ii").value = "0";
								
							}else{
								alert("오류발생. 관리자에게 문의");
							}
						}
					});
				});
				
			}
		});
	}//if end

/* 댓글 수정 end */

/* 좋아요 시작 */
function v_like(v_no, m_no){
	alert("버튼눌림")
	
	if(m_no==0){
		alert("로그인 후 찜하기를 할 수 있습니다.");
		return;
	}
	
	//비동기식 통신용
	$(function(){
		alert(v_no);
		alert(m_no);
		$.ajax({
			url : "../controller/clip/likecontroller.jsp",
			data:{v_no : v_no, m_no : m_no }, //인수 담아서 넘기기
			
			//p_likecontroller.jsp 에서 out.print로 넘어온 값 result에 저장
			success:function(result){ //좋아요 빼기
				if(result == 1){
					//alert(result);
					document.getElementById("videolike").src = "../img/heart.png";
				}else if(result==2){ //좋아요 추가하기
					//alert(result);
					document.getElementById("videolike").src = "../img/heartfill.png";
				}
			}
		})
	});
}

/*좋아요 끝*/

/*무한 스크롤 */
var item = 2; // 게시물 갯수가 3개 이상이면 무한 스크롤 
	// $(window) : 현재 창 
	$(window).scroll(function() {
		
		if( $(window).scrollTop() == $(document).height() -$(window).height() ){
			//alert("ㅎㅇ2");
			$.ajax({
				url : "../../controller/channel/newchannelboard3controller.jsp",
				data : {item : item},
				success : function(result){
					alert(result);
					//alert(result);
					$('section').append(result);
				}
			});
			item++; // 스크롤 이벤트가 실행될때마다 게시물 1씩 증가 
		}
	});
/*무한 스크롤 끝 */

/*팔로우 시작 */
function c_follow(c_no, m_no){
	if(m_no==0){
		alert("로그인 후 팔로우를 할 수 있습니다.");
		return;
	}
	//비동기식 통신용
	$(function(){
		$.ajax({
			url : "../../controller/follow/followupdatecontroller.jsp",
			data:{c_no : c_no, m_no : m_no }, //인수 담아서 넘기기
			//follodwupdatecontroller.jsp 에서 out.print로 넘어온 값 result에 저장
			success:function(result){ //좋아요 빼기
			//alert(result);
				if(result == 1){
					//alert(result);
					document.getElementById("follow").innerHTML = "<button type='button' class='btn btn-danger btn-block'><span>팔로우</span> </button>";
				}else if(result==2){ //좋아요 추가하기
					//alert(result);
					document.getElementById("follow").innerHTML = "<button type='button' class='btn btn-danger btn-block'><span>팔로우 중</span> </button>";
				}
			}
		})
	});
}
/*팔로우 끝 */

/*clipviewmain 팔로우 시작 */
function c_follow2(c_no, m_no){
	alert("팔로우 통신");
	if(m_no==0){
		alert("로그인 후 팔로우를 할 수 있습니다.");
		return;
	}
	//비동기식 통신용
	$(function(){
		alert("팔로우 통신2");
		$.ajax({
			url : "../controller/follow/followupdatecontroller.jsp",
			data:{c_no : c_no, m_no : m_no }, //인수 담아서 넘기기
			//follodwupdatecontroller.jsp 에서 out.print로 넘어온 값 result에 저장
			success:function(result){ //좋아요 빼기
			//alert(result);
				if(result == 1){
					alert(result);
					document.getElementById("follow").innerHTML = "<button type='button' class='btn btn-danger btn-block'><span>팔로우</span> </button>";
				}else if(result==2){ //좋아요 추가하기
					alert(result);
					document.getElementById("follow").innerHTML = "<button type='button' class='btn btn-danger btn-block'><span>팔로우 중</span> </button>";
				}
			}
		})
	});
}
/*clipviewmain 팔로우 끝 */