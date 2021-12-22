<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width, initial-scale=1, minimum-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
   border: 1px solid black;
   
}
</style>
</head>
<body>
	<div class = "row" style="height: 100%;">
		<div class = "col-md-2 fixed">
			<%@ include file = "sidebar.jsp" %>
		</div>
		<div class = "container col-md-9  offset-md-3 col-sm-10 offset-sm-2 col-xs-6 offset-xs-2 mt-2 ml-2">
			<div class = "row justify-content-between ml-3">
				<%
					for(int i = 0; i < 16; i++){
				%>
						<div class = "card col-xs-8 offset-xs-2 m-2" style="width: 16rem;">
							<img alt="" src="../img/영상화면.jpg" class = "card-img-top">
							<div class = "card-body row" style="height: 6rem;">
								<div class = "col-md-2 pt-2 col-xs-2 col-sm-2" style=" padding-left: 0; margin-left: 0">
									<img alt="" src="../img/채널.jpg" style="width: 2.5rem; height: 2.5rem; border-radius: 70%;">
								</div>
								<div class = "col-md-10 col-xs-10 col-sm-10">
									<h5 class = "card-title">title</h5>
									<p class = "card-text">contents
								</div>
							</div>
						</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>