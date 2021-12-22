<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../sidebar.jsp"%>

	<div class="container">

		<br> <br>

		<div style="margin: 10px">
			<h3 style="border-bottom: solid 1px #eeeee;">회원 정보</h3>
			<br>
		</div>


		<div class="row">
			<div class="col-md-3">
				<div class="nav flex-column nav-pills">
					<a class="nav-link" data-toggle="pill" href="#pills-memberinfo"> 회원 정보 </a>
					<a class="nav-link" data-toggle="pill" href="#pills-memberwrite"> 비밀번호변경 </a>
				</div>
			</div>
			<div class="col-md-9">
				<div class="tab-content" id="pills-tabcontent">
					<div class="tab-pane fade show active" id="pills-order">
						<div class="border rounded">
							<div class="row p-4">
								<div class="col-md-2 justify-content-center align-self-center">
									<img src="../../img/profile.jpg" class="rounded-circle" width="75px">
								</div>
								<div class="col-md-10 justify-content-center align-self-center">
									<p style="font-size: 20px;">아이디</p>
								</div>
							</div>
						</div>
						<br> <br>

						<div class="border rounded">
							<div class="row p-4">
								<div class="col-md-2 justify-content-center align-self-center">
									<p>이름</p>
								</div>
								<div class="col-md-10 justify-content-center align-self-center">
									<p>홍길동</p>
								</div>
							</div>
							<div class="row p-4">
								<div class="col-md-2 justify-content-center align-self-center">
									<p>생년월일</p>
								</div>
								<div class="col-md-10 justify-content-center align-self-center">
									<p>1999-11-11</p>
								</div>
							</div>
							<div class="row p-4">
								<div class="col-md-2 justify-content-center align-self-center">
									<p>연락처</p>
								</div>
								<div class="col-md-10 justify-content-center align-self-center">
									<p>010-0000-0000</p>
								</div>
							</div>
						</div>
						
						<br><hr><br>
						<div class="border rounded">
							<div class="row p-4">
								<div class="col justify-content-center align-self-center">
									<h4>회원 탈퇴</h4>
								</div>
							</div>
						</div>
						<div class="border rounded">
						<br><br>
						<h5 class="text-center">회원 탈퇴 하시겠습니까?</h5>
							<div class="col-md-6 offset-3 text-center">
								<form>
									<br>
									<input type = "password" name = "password" class="form-control p-2" placeholder="패스워드">
									<br>
									<input type="button" id="delete" value="확인" class="form-control p-2 bg-danger text-white">
									<br>
								</form>
								<br><br><br><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br><br><br>
</body>
</html>