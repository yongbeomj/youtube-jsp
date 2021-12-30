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
							비밀번호변경 </a> <a class="nav-link" data-toggle="pill" href="#pills-delete"> 회원탈퇴 </a>
					</div>
				</div>
				<div id="memberinfo" class="col-md-9">
					<div class="tab-content" id="pills-tabcontent">
						<div class="tab-pane fade show active" id="pills-memberupdate">
							<div class="border rounded">
								<div class="row p-4">
									<div class="col-md-3 justify-content-center align-self-center">
										<img id="preview" name="preview" src="../../upload/<%=member.getM_image()%>" class="rounded-circle" style="width: 75px; height: 75px">
									</div>
									<div class="col-md-9 justify-content-center align-self-center">
										<p style="font-size: 20px;"><%=member.getM_id()%></p>
									</div>
								</div>
							</div>
							<br> <br>

							<div class="border rounded">
								<form id="profileform" action="../../controller/member/profilecontroller.jsp" method="post" enctype="multipart/form-data">
									<div class="row p-4">
										<div class="col-md-3 justify-content-center align-self-center">
											<p>프로필 변경</p>
										</div>
										<div class="col-md-7 justify-content-center align-self-center">
											<input id="file" name="file" class="form-control" type="file" onchange="readURL(this);">
										</div>
										<div class="col-md-2 justify-content-center align-self-center">
											<button id="btnimg" type="submit" class="form-control">수정</button>
										</div>
									</div>
								</form>
								<!-- <form id="memberinfoform" action="../../controller/member/memberupdate.jsp" method="post"> -->
									<div class="row p-4">
										<div class="col-md-3 justify-content-center align-self-center">
											<p>이름</p>
										</div>
										<div class="col-md-7 justify-content-center align-self-center">
											<p id="tdname"><%=member.getM_name()%></p>
											<input type="text" id="inputname" class="form-control my-3" onchange="memberinfoname()" style="display: none;">
										</div>
										<div class="col-md-2 justify-content-center align-self-center">
											<button id="btnname" onclick="namechange();" class="form-control">수정</button>
											<button id="namechangebtn" class="form-control" style="display: none">확인</button>
										</div>
										<div class="offset-3">
											<span id="tdnameresult" class="ml-3" style="display:none"></span>
										</div>
									</div>
									<div class="row p-4">
										<div class="col-md-3 justify-content-center align-self-center">
											<p>생년월일</p>
										</div>
										<div class="col-md-7 justify-content-center align-self-center">
											<p id="tdbirth"><%=member.getM_birth()%></p>
											<input type="text" id="inputbirth" class='form-control my-3' onchange="memberinfobirth()" style="display: none;">
										</div>
										<div class="col-md-2 justify-content-center align-self-center">
											<button id="btnbirth" onclick="bitrhchange();" class="form-control">수정</button>
											<button id="birthchangebtn" class="form-control" style="display: none">확인</button>
										</div>
										<div class="offset-3">
											<span id="tdbirthresult" class="ml-3" style="display:none"></span>
										</div>
									</div>
									<div class="row p-4">
										<div class="col-md-3 justify-content-center align-self-center">
											<p>연락처</p>
										</div>
										<div class="col-md-7 justify-content-center align-self-center">
											<p id="tdphone"><%=member.getM_phone()%></p>
											<input type="text" id="inputphone" class='form-control my-3' onchange="memberinfophone()" style="display: none;">
										</div>
										<div class="col-md-2 justify-content-center align-self-center">
											<button id="btnphone" onclick="phonechange();" class="form-control">수정</button>
											<button id="phonechangebtn" class="form-control" style="display: none">확인</button>
										</div>
										<div class="offset-3">
											<span id="tdphoneresult" class="ml-3" style="display:none"></span>
										</div>
									</div>
								<!-- </form> -->
							</div>

							<br> <br>

						</div>

						<div class="tab-pane fade" id="pills-password">

							<div class="border rounded">
								<div class="row p-4">
									<div class="col justify-content-center align-self-center">
										<h4>비밀번호 변경</h4>
									</div>
								</div>
							</div>
							<div id="pwupdate" class="border rounded">
								<br> <br>
								<h5 class="text-center">새 비밀번호</h5>
								<div class="col-md-6 offset-3 text-center">
									<form id="updatepwform" action="../../controller/member/memberupdate.jsp" method="post">
										<br> <input type="password" id="inputpw" name="inputpw" class="form-control p-2" placeholder="비밀번호"> <br> <input
											type="password" id="inputpwconfirm" name="inputpwconfirm" class="form-control p-2" placeholder="비밀번호확인"> <br>
										<div>
											<span id="updatepwresult"></span>
										</div>
										<button id="pwchangebtn" class="form-control p-2 bg-danger text-white" onclick="pwchange();">확인</button>
										<br>
									</form>
									<br> <br> <br> <br>
								</div>
							</div>
						</div>


						<div class="tab-pane fade" id="pills-delete">

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
										<br> <input type="password" id="password" name="password" class="form-control p-2" placeholder="패스워드"> <br>
										<div>
											<span id="deleteresult"></span>
										</div>
										<br> <input type="button" id="delete" value="확인" class="form-control p-2 bg-danger text-white"> <br>
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