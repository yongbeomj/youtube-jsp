<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div id="findpw" class="col-md-6 offset-3";>
			<div class="card" style="padding: 30px; width: 40rem;">
				<div class="card-body">
					<div class="text-center">
						<h3 class="card-title">비밀번호 찾기</h3>
						<p class="card-text">회원가입 시 입력한 정보로 비밀번호를 찾을 수 있습니다.</p>
					</div>

					<hr>

					<div class="row">
						<div class="col-md-3 offset-1 my-2">
							<label>아이디</label>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control p-2" placeholder="아이디">
						</div>
					</div>
					<div class="row my-3">
						<div class="col-md-3 offset-1 my-2">
							<label>이름</label>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control p-2" placeholder="이름">
						</div>
					</div>
					<div class="row my-3">
						<div class="col-md-3 offset-1 my-2">
							<label>연락처</label>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control p-2" placeholder="연락처">
						</div>
					</div>

					<hr>
					<div class="col-md-4 offset-4 my-4" style="text-align: center;">
						<a href="#"> <input class="form-control p-2 bg-danger text-white"
							type="submit" value="확인">
						</a>
					</div>
					<br> <br> <br>
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
		</div>
	</div>


</body>
</html>