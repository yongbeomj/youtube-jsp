<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩css 설정 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- 본인 css 호출 -->
<link rel="stylesheet" href="/장용범/website/css/main.css">

</head>
<body>

	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

	<!-- 부트스트랩 js 설정 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	<!-- 본인 js 호출 -->
	<script src="/장용범/website/js/main.js"></script>

	<%
		Login login = (Login)session.getAttribute("login");
		String loginid = null;
		if (login != null) { // 세션 있을경우 (로그인)
			loginid = login.getM_id(); // 아이디 반환
		}
	%>
	
	<div class="fixed-top bg-dark">
		<header>
			<div class="row my-2">
				<div class="col-md-3">
					<a href="/장용범/website/view/main.jsp"><img src="/장용범/website/img/logo.png" style="width: 120px; height: 30px; margin-top: 4px;" class="ml-5"></a>
				</div>
				<div class="col-md-5 offset-1">
					<div class="row">
						<div class="col-md-10 navbar navbar-expand-md navbar-dark bg-dark" style="padding: 0;">
							<div class="collapse navbar-collapse">
								<div class="navbar-nav justify-content-between" style="width: 100%;">
									<input type="text" class="form-control nav-item col-md-12" style="background-color: black; border-style: none; width: 100%; margin: 0;"
										placeholder="Search">
								</div>
							</div>
						</div>
						<div class="col-md-2" style="padding: 0;">
							<button class="form-control text-center" style="background-color: gray; border-style: none; width: 100%; height: 35px;">Q</button>
						</div>
					</div>
				</div>
				<div class="col-md-2 offset-1">
					<div class="row">
						<div class="col-md-8 offset-4">
							<a href="../member/login.jsp"> <span class="col-md-6 bg-dark" style="border-style: none; width: 60px; color: white;">접속ID</span></a>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
</body>
</html>