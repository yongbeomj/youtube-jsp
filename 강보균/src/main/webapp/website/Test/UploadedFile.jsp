<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "../View/sidebar.jsp" %>
	<div class = "container">
		<div class = "row">
			<div class = "col-md-3">
				<div class = "card">
					<video controls="controls" autoplay="autoplay" style="height: 300px; width: 700px;">
						<source src="../UploadTest/Mike Tyson.mp4">
					</video>
					<div class = "card-body">
						<div class = "card-text">
							<h4>영상제목</h4>
							<p>부가설명
						</div>
					</div>
				</div>
				<div>
					<progress value = "20" max = "100"></progress>
				</div>
			</div>
		</div>
	</div>
</body>
</html>