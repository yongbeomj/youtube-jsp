<%@page import="dao.MemberDao"%>
<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
						<a class="nav-link" data-toggle="pill" href="#pills-memberupdate"> 회원정보수정 </a> <a class="nav-link" data-toggle="pill" href="#pills-password">
							회원탈퇴 </a> <a class="nav-link" data-toggle="pill" href="#pills-channel"> 채널등록 </a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content" id="pills-tabcontent">
						<div class="tab-pane fade show active" id="pills-memberupdate">
							<div class="border rounded">
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<img src="../../img/profile.jpg" class="rounded-circle" width="75px">
									</div>
									<div class="col-md-9 justify-content-center align-self-center">
										<p style="font-size: 20px;">아이디</p>
										<%-- <p style="font-size: 20px;"><%=member.getM_id() %></p> --%>
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
									<div class="col-md-9 justify-content-center align-self-center">
										<%-- <p><%=member.getM_name() %></p> --%>
										<p>홍길동</p>
									</div>
								</div>
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<p>생년월일</p>
									</div>
									<div class="col-md-9 justify-content-center align-self-center">
										<p>2021-03-19</p>
										<%-- <p><%=member.getM_birth() %></p> --%>
									</div>
								</div>
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<p>연락처</p>
									</div>
									<div class="col-md-9 justify-content-center align-self-center">
										<p>010-0000-0000</p>
										<%-- <p><%=member.getM_phone() %></p> --%>
									</div>
								</div>
							</div>


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
									<form>
										<br> <input type="password" name="password" class="form-control p-2" placeholder="패스워드"> <br>
										<div class="offset-1">
											<span id="deleteresult"></span>
										</div>
										<br> <input type="button" id="delete" value="확인" class="form-control p-2 bg-danger text-white"> <br>
									</form>
									<br> <br> <br> <br>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="pills-channel">

							<div class="border rounded">
								<div class="row p-4">
									<div class="col justify-content-center align-self-center">
										<h4>채널 등록</h4>
									</div>
								</div>
							</div>
							<div class="border rounded">
								<br> <br>
								<div class="row">
									<div class="col-md-3 d-flex justify-content-end align-self-center">
										<img src="../../img/profile.jpg" class="rounded-circle" width="130px">
									</div>
									<div class="col-md-8">
										<div class="p-4 justify-content-start align-self-center">
											<h5>새 채널 페이지명</h5>
											<input type="text" name="channelpage" class="form-control p-2 my-1" placeholder="새 채널 페이지명">
										</div>

										<div class="p-4 justify-content-start align-self-center">

											<h5>채널 프로필 사진</h5>
											<input class="my-1" type="file" name="file">
										</div>
									</div>
								</div>

								<br> <br>
								<div class="col-md-6 offset-3 text-center">
									<a href=""> <input type="button" id="channelregister" value="확인" class="form-control p-2 bg-danger text-white">
									</a>
								</div>
								<br> <br> <br> <br>
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