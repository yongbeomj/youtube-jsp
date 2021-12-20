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
   /* border: 1px solid black; */
   
}
</style>
</head>
<body>

	<%@ include file = "header.jsp" %>
	<div class = "row" style="height: 100%;">
		<div class = "d-flex justify-content-center align-items-center" style="position: fixed; height: 100%; background-color: gray;">
			<div class = "col-md-1" style="height: 100%; width: 100%; z-index: 998;" id = "sidebar1">
				<h3 class = "justify-content-center" onclick = "sidemenubar();" id = "togglesidemenubar">>></h3>
				<ul id = "sidebar3">
					<li>home
					<li>subs
					<li>box
					<li>subslist
				</ul>
			</div>
		</div>
		<div class = "container col-md-10 offset-md-1 col-sm-10 offset-sm-2 col-xs-10 offset-xs-2 mt-2">
			<div class = "row justify-content-between">
				<%
					for(int i = 0; i < 16; i++){
				%>
						<div class = "card" style="width: 16rem; margin-right: 2px;">
							<div class = "item">
								<img alt="" src="../IMG/영상화면.jpg" class = "card-img-top">
								<div class = "card-body row" style="height: 6rem;">
									<div class = "col-md-2 pt-2 col-xs-2 col-sm-2" style=" padding-left: 0; margin-left: 0">
										<img alt="" src="../IMG/채널.jpg" style="width: 2.5rem; height: 2.5rem; border-radius: 70%;">
									</div>
									<div class = "col-md-10 col-xs-10 col-sm-10">
										<h5 class = "card-title">title</h5>
										<p class = "card-text">contents
									</div>
								</div>
							</div>
						</div>
				<%
					}
				%>
			</div>
		</div>
		<div class = "col-md-1"></div>
	</div>
</body>
</html>