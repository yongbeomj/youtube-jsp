<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../header.jsp" %>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<!--  -->
		<div class="col-md-6 offset-3">
			<div class="card" style="padding: 30px; width: 30rem;">
				<div class="card-body">
					<div style="text-align: center;">
						<h3 class="card-title">로그인</h3>
						<p class="card-text">Google 계정 사용</p>
					</div>
					<input type="text" class="form-control p-2 my-4" placeholder="이메일 또는 휴대전화">
					<input type="text" class="form-control p-2 my-4" placeholder="비밀번호">

					<div class="row">
						<div class="col-md-4 "></div>
						<div class="col-md-4 px-0 d-flex justify-content-end offset-4">
							<button type="button" class="btn btn-primary ">다음</button>
						</div>
					</div>
					
					<div class="row my-4">
					<div class="col-md-4 no-gutters">
						<a href = "signup.jsp" class="col-md-4">계정 만들기</a>
					</div>
					<div class="col-md-8 d-flex justify-content-end no-gutters ">
						<a href = "findid.jsp" class="col-md-5 ml-1">아이디 찾기</a>
						<a href = "findpw.jsp" class="col-md-5">비밀번호 찾기</a>
					</div>
					
					</div>
					
					<br> <br> <br> <br><br><br>
					
				</div>
			</div>
		</div>
	</div>


</body>
</html>