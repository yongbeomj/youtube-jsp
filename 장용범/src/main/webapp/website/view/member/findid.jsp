<%@page import="dao.MemberDao"%>
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
	<div class="container">
		<div id="findid" class="col-md-6 offset-3">
			<form id="findidform" action="../../controller/member/findidcontroller.jsp" method="post"  onsubmit="return findidcheck()">
				<div class="card" style="padding: 30px; width: 40rem;">
					<div class="card-body">
						<div class="text-center">
							<h3 class="card-title">아이디 찾기</h3>
							<p class="card-text">회원가입 시 입력한 정보로 아이디를 찾을 수 있습니다.</p>
						</div>

						<hr>
						<div class="row">
							<div class="col-md-3 offset-1 my-2">
								<label>이름</label>
							</div>
							<div class="col-md-7">
								<input id="name" type="text" class="form-control p-2" name="name" onchange="findidcheck()" placeholder="이름">
							</div>
						</div>
						<div class="row my-3">
							<div class="col-md-3 offset-1 my-2">
								<label>연락처</label>
							</div>
							<div class="col-md-7">
								<input id="phone" type="text" class="form-control p-2" name="phone" onchange="findidcheck()" placeholder="연락처">
							</div>
						</div>

						<hr>
						
						<div>
							<span id="findidresult"></span>
						</div>
						
						<%
						String result = request.getParameter("result");
						System.out.println(result);
						if( result == null ){
						%>
							<div>
								<span class="text-danger">일치하는 정보가 존재하지 않습니다.</span>
							</div>
						<%
						}
						%>
						
						<div class="col-md-4 offset-4 my-4" style="text-align: center;">
							<input id = "btnfindid" class="form-control p-2 bg-danger text-white" type="submit" value="확인">
						</div>
						<br> <br> <br>
					</div>

					<div>
						<ul class="d-flex">
							<li>비밀번호가 생각나지 않으세요?</li>
							<li><a href="findpw.jsp" class="ml-3">비밀번호 찾기</a></li>
						</ul>
						<ul class="d-flex">
							<li>가입하신 아이디가 없다면, 회원가입을 진행해주세요.
							<li><a href="signup.jsp" class="ml-3">회원가입</a></li>
						</ul>
					</div>
					<nav class="navbar navbar-expand-lg navbar-light bg-white">
						<div class="row" id="main_manu" style="font-size: 12px">
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