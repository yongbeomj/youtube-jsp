<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩css 설정 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- 본인 css 호출 -->
<link rel="stylesheet" href="/Youtube/website/css/main.css">
</head>
<body>

	<!-- 부트스트랩 js 설정 -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<!-- 본인 js 호출 -->
	<script src="/Youtube/website/js/main.js"></script>


	<div class="fixed-top bg-dark">
		<header>
			<div class="row my-2">
				<div class="col-md-3">
					<a href="/Youtube/website/view/main.jsp"><img src="../img/logo.png"
						style="width: 120px; height: 30px; margin-top: 6px;" class="ml-5"></a>
				</div>
				<div class="col-md-5 offset-1">
					<div class="row">
						<div class="col-md-10 navbar navbar-expand-md navbar-dark bg-dark"
							style="padding: 0;">
							<div class="collapse navbar-collapse">
								<div class="navbar-nav justify-content-between" style="width: 100%;">
									<input type="text" class="form-control nav-item col-md-12"
										style="background-color: black; border-style: none; width: 100%; margin: 0;"
										placeholder="Search">
								</div>
							</div>
						</div>
						<div class="col-md-2" style="padding: 0;">
							<button class="form-control text-center"
								style="background-color: gray; border-style: none; width: 100%; height: 40px;">Q</button>
						</div>
					</div>
				</div>
				<div class="col-md-2 offset-1">
					<div class="row">
						<div class="col-md-8 offset-4">
							<span class="col-md-6 bg-dark"
								style="border-style: none; width: 60px; color: white;">접속ID</span>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
	<br>
	<br>
</body>
</html>