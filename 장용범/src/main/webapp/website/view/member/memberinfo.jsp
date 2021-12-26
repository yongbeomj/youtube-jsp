<%@page import="dao.MemberDao"%>
<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-md-2 fixed">
			<%@ include file="../sidebar.jsp"%>
		</div>
		<div class="container">
			<br> <br>
			<div style="margin: 10px">
				<h3 style="border-bottom: solid 1px #eeeee;">회원 정보</h3>
				<br>
			</div>


			<div class="row">
				<div class="col-md-3">
					<div class="nav flex-column nav-pills">
						<a class="nav-link" data-toggle="pill" href="#pills-memberupdate">
							회원정보수정 </a> <a class="nav-link" data-toggle="pill"
							href="#pills-password"> 회원탈퇴 </a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content" id="pills-tabcontent">
						<div class="tab-pane fade show active" id="pills-memberupdate">
							<div class="border rounded">
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<img src="../../img/profile.jpg" class="rounded-circle"
											width="75px">
									</div>
									<div class="col-md-9 justify-content-center align-self-center">
										<p style="font-size: 20px;"><%=member.getM_id()%></p>
									</div>
								</div>
							</div>
							<br> <br>

							<div class="border rounded">
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<p>비밀번호</p>
									</div>
									<div class="col-md-9 justify-content-center align-self-center">
										<p>
											<a href="#">비밀번호 변경</a>
										</p>
									</div>

								</div>
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<p>이름</p>
									</div>
									<div class="col-md-7 justify-content-center align-self-center">
										<p id="tdname"><%=member.getM_name()%></p>
									</div>
									<div class="col-md-2 justify-content-center align-self-center">
										<button id="btnname" onclick="namechange();" class="form-control">수정</button>
									</div>
								</div>
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<p>생년월일</p>
									</div>
									<div class="col-md-7 justify-content-center align-self-center">
										<p id="tdbirth"><%=member.getM_birth()%></p>
									</div>
									<div class="col-md-2 justify-content-center align-self-center">
										<button id="btnbirth" onclick="bitrhchange();" class="form-control">수정</button>
									</div>
								</div>
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<p>연락처</p>
									</div>
									<div class="col-md-7 justify-content-center align-self-center">
										<p id="tdphone"><%=member.getM_phone()%></p>
									</div>
									<div class="col-md-2 justify-content-center align-self-center">
										<button id="btnphone" onclick="phonechange();" class="form-control">수정</button>
									</div>
								</div>
							</div>
							<br> <br>
							


						</div>

						<div class="tab-pane fade" id="pills-password">

							<div class="border rounded">
								<div class="row p-4">
									<div class="col justify-content-center align-self-center">
										<h4>회원 탈퇴</h4>
									</div>
								</div>
							</div>
							<div class="border rounded">
								<br> <br>
								<h5 class="text-center">회원 탈퇴 하시겠습니까?</h5>
								<div class="col-md-6 offset-3 text-center">
									<form id="deleteform">
										<br> <input type="password" name="password"
											class="form-control p-2" placeholder="패스워드"> <br>
										<div>
											<span id="deleteresult"></span>
										</div>
										<br> <input type="button" id="delete" value="확인"
											class="form-control p-2 bg-danger text-white"> <br>
									</form>
									<br> <br> <br> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
</body>
</html>