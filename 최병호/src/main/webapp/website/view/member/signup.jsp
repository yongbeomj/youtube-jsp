<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../sidebar.jsp"%>
	<br>
	<br>
	<br>
	<br>

	<%
	// 로그인 되어있는 경우
	if (loginid != null) {
		out.print("<script>alert('로그인이 되어있습니다.');</script>");
		out.println("<script>location.href='../main.jsp';</script>");
	}
	%>
	<div class="container">
		<div class="col-md-6 offset-3">
			<form id="signupform" action="../../controller/member/signupcontroller.jsp" method="post" onsubmit="return signupcheck()"
				enctype="multipart/form-data">
				<div class="card" style="padding: 30px; width: 40rem;">
					<div class="card-body">
						<div class="text-center">
							<h3 class="card-title">회원 가입</h3>
						</div>

						<hr>
						<div class="text-center">
							<img id="preview" name="preview" src="../../img/profile.jpg" class="rounded-circle" width="130px">
						</div>
						<br>
						<div>
							<label class="col-md-4 offset-4 form-control" for="file">프로필 선택</label>
							<div class="row justify-content-center align-items-center">
								<input id="file" name="file" class="my-1 text-center" type="file" style="display: block; width : 35%;" onchange="readURL(this);">
							</div>
						</div>

						<br>
						<div class="row">
							<div class="col-md-3 offset-1 my-2">
								<label>아이디</label>
							</div>
							<div class="col-md-7">
								<input id="id" type="text" class="form-control p-2" name="id" onchange="signupcheck()" placeholder="아이디">
							</div>
							<div class="offset-1">
								<span id="idresult"></span>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>비밀번호</label>
							</div>
							<div class="col-md-7">
								<input id="pw" type="password" class="form-control p-2" name="pw" onchange="signupcheck()" placeholder="비밀번호">
							</div>
							<div class="offset-1">
								<span id="pwresult"></span>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>비밀번호확인</label>
							</div>
							<div class="col-md-7">
								<input id="pwconfirm" type="password" class="form-control p-2" name="pwconfirm" onchange="signupcheck()" placeholder="비밀번호확인">
							</div>
							<div class="offset-1">
								<span id="pwconfirmresult"></span>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>이름</label>
							</div>
							<div class="col-md-7">
								<input id="name" type="text" class="form-control p-2" name="name" onchange="signupcheck()" placeholder="이름">
							</div>
							<div class="offset-1">
								<span id="nameresult"></span>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>생년월일</label>
							</div>
							<div class="col-md-7">
								<input id="birth" type="date" class="form-control p-2" name="birth" onchange="signupcheck();">
							</div>
							<div class="offset-1">
								<span id="birthresult"></span>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>연락처</label>
							</div>
							<div class="col-md-7">
								<input id="phone" type="text" class="form-control p-2" name="phone" onchange="signupcheck()" placeholder="000-0000-0000">
							</div>
							<div class="offset-1">
								<span id="phoneresult"></span>
							</div>
						</div>

						<hr>
						<div class="col-md-4 offset-4 my-4" style="text-align: center;">
							<input class="form-control p-2 bg-danger text-white" type="submit" value="확인">
						</div>
						<p>
							이미 계정이 있으신가요? <span class="ml-3"><a href="login.jsp">로그인</a></span>
						</p>

						<br> <br>
					</div>

					<nav class="navbar navbar-expand-lg navbar-light bg-white">
						<div class="row" id="main_manu" style="font-size: 12px;">
							<ul class="navbar-nav col-md-12 justify-content-start">
								<li class="nav-item"><a href="#" class="nav-link">한국어</a></li>
								<li class="nav-item"><a href="#" class="nav-link">도움말</a></li>
								<li class="nav-item"><a href="#" class="nav-link">개인정보처리방침</a></li>
								<li class="nav-item"><a href="#" class="nav-link">약관</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</form>
		</div>
	</div>

</body>
</html>