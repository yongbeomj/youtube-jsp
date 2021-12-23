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
			<div class = "col-md-8 offset-2">
				<form action = "VideoTestController.jsp" method = "post" enctype="multipart/form-data">
					<div>ID</div><div><input type = "text" class = "form-control" placeholder="ID" name = "id"></div>
					<div>NAME</div><div><input type = "text" class = "form-control" placeholder="NAME" name = "name"></div>
					<div>FILE</div><div><input type = "file" class = "form-control" placeholder="FILE" name = "file"></div>
					<input type = "submit" class = "btn btn-info" value = "Upload" style="margin-top: 3px;">
					<a><input type = "button" class = "btn btn-danger" value = "Cancle" style="margin-top: 3px;"></a>
				</form>
			</div>
			<div class="progress">     
			    <div class="bar"></div>     
			    <div class="percent">0%</div> 
			</div> 
			<div id="status"></div> 
		</div>
	</div>
</body>
</html>