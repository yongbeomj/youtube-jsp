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
		<div id="findid" class="col-md-6 offset-3">
			<div class="card" style="padding: 30px; width: 30rem;">
				<div class="card-body">
					<div style="text-align: center;">
						<h3 class="card-title">비밀번호 찾기</h3>
						<p class="card-text">아이디, 이름 및 연락처를 입력하세요.</p>
					</div>
					<input type="text" class="form-control p-2 my-4" placeholder="아이디">
					<input type="text" class="form-control p-2 my-4" placeholder="이름">
					<input type="text" class="form-control p-2 my-4" placeholder="연락처">

					<div class="my-4" style="text-align: right;">
						<button type="button" class="btn btn-primary">찾기</button>
					</div>
					<br>
					<br>
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