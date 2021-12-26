
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

// 사이드바
+function ($) {
    'use strict';

    $(document).on('click.bs.sidebar.data-api', '[data-toggle="sidebar"]', function (e) {
        e.preventDefault();
        $(".sidebar").toggleClass("toggled");
        $(".has-sidebar").toggleClass("toggled");
    });
}(jQuery);

// 이미지 미리보기
var upload = document.querySelector("#upload");
var preview = document.querySelector("#preview");
preview.addEventListener('change', function(e){
	var get_file = e.target.files;
	var img = document.createElement('img');
	
	// 파일리더 객체 생성
	var reader = new FileReader();
	
	// 리더 시작시 함수 구현
	reader.onload = (function(aImg) {
		console.log(1);
		return function(e) {
			console.log(3);
			// base64 인코딩 된 스트링 데이터
			aImg = e.targer.result
		}
	})(img)
	if(get_file) {
		reader.readAsDataURL(get_file[0]);
		console.log(2);
	}
	preview.appendChild(img);
});