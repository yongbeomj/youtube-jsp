<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
	.recommendclips:hover{}
		
	</style>
</head>
<body>
	<!-- 추천 영상 목록 -->
	<div class="col-md-6 pr-0 mt-3">
		<div class="row col-md-12 m-0 p-0 " style="justify-content:space-around;">
			<%
	        for (int i = 0; i < 108; i++) {
	    	 %>
			<div class="col-md-6 p-0 mb-4" style="border-radius: 15px;">
				<div class="col-md-12 pr-0">
					<a href="clipviewmain.jsp">
						<img src="../img/land.jpg" class="recommendclips" style="border-radius: 15px; width: 100%;">
					</a>
				</div>
				<div class="col-md-12 mt-2 pr-0">
				    <h5>Card title</h5>
				    <a  href="#">
						<img src="../img/woman.jpg" width="20" height="20" style="border-radius: 50%;">
					</a>
					<a  href="#">
						<span>채널명</span>
					</a>
				</div>
			</div>
			<%}%>
		</div>
	</div>
</body>
</html>