<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class = "col-md-2 fixed">
		<%@ include file = "../sidebar.jsp" %> 
	</div>

	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="col-md-6 offset-3">
			<form action="../../controller/member/logincontroller.jsp" method="post">
				<div class="card" style="padding: 30px; width: 40rem;">
					<div class="card-body">
						<div class="text-center">
							<h3 class="card-title">로그인</h3>
							<p class="card-text">아이디 및 비밀번호를 입력해주세요.</p>
						</div>

						<hr>
						<div class="row">
							<div class="col-md-3 offset-1 my-2">
								<label>아이디</label>
							</div>
							<div class="col-md-7">
								<input id="id" type="text" class="form-control p-2" name="id" placeholder="아이디">
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>비밀번호</label>
							</div>
							<div class="col-md-7">
								<input id="pw" type="password" class="form-control p-2" name="pw" placeholder="비밀번호">
							</div>
						</div>

						<hr>
						
						<%
						String result = request.getParameter("result");
						if( result != null ){
						%>
							<div>
								<span class="text-danger">회원정보가 올바르지 않습니다.</span>
							</div>
						<%
						}
						%>
						<div class="col-md-4 offset-4 my-4" style="text-align: center;">
							<input class="form-control p-2 bg-danger text-white" type="submit" value="로그인">
						</div>
						<br> <br> <br>
					</div>

					<div>
						<ul class="d-flex">
							<li>아이디 및 비밀번호가 생각나지 않으세요?</li>
							<li><a href="findid.jsp" class="ml-3">아이디 찾기</a></li>
							<li><a href="findpw.jsp" class="ml-3">비밀번호 찾기</a></li>

						</ul>
						<ul class="d-flex">
							<li>가입하신 아이디가 없다면, 회원가입을 진행해주세요.
							<li><a href="signup.jsp" class="ml-3">회원가입</a></li>
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
			</form>
		</div>
	</div>


</body>
</html>