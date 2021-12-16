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
		<div id="findid" class="col-md-6 offset-2">
			<div class="card" style="padding: 30px; width: 50rem;">
				<div class="card-body">
					<div>
						<h3 class="card-title">아이디 찾기</h3>
						<p class="card-text">회원가입 시 입력한 정보로 아이디를 찾을 수 있습니다.</p>
					</div>
					
					<hr>
					<div class = "row">
						<div class="col-md-3 offset-1 my-2">
							<label>이름</label>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control p-2" placeholder="이름">
						</div>
					</div>
					<div class = "row my-3">
						<div class="col-md-3 offset-1 my-2">
							<label>연락처</label>
						</div>
						<div class="col-md-7">
							<input type="text" class="form-control p-2" placeholder="연락처">
						</div>
					</div>

					<hr>
					<div class="my-4" style="text-align: center;">
						<a href="#">
							<input class="btn btn-success btn-lg" type="submit" value="확인">
						</a>
					</div>
					<br> <br> <br> <br>
				</div>

				<div>
					<ul class="d-flex">
						<li>비밀번호가 생각나지 않으세요?</li>
						<li><button type="button" class="form-control btn-sm ml-3">
						<a href="#" class="text-secondary">비밀번호찾기</a></button></li>
					</ul>
					<ul class="d-flex">
						<li>가입하신 아이디가 없다면, 회원가입을 진행해주세요.
						<li><button type="button" class="form-control btn-sm ml-3">
						<a href="#" class="text-secondary">회원가입</a></button></li>
					</ul>
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