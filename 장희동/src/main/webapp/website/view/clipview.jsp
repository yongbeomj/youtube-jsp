<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		
	</style>
</head>
<body>
	<div class="row">
		<div class="col-md-8">
			<video style="border-radius: 10px;" controls="controls" width="100%">
				<!-- 영상 자체에 소리가 없음 -->
				<source src="../clip/Seoul.mp4">
			</video>
		</div>
		<%@include file="clipviewreply.jsp" %>
	</div>
</body>
</html>