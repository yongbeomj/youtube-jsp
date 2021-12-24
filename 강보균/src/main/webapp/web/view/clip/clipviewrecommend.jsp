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
<%
	//int v_no = Integer.parseInt(request.getParameter("v_no"));
	//Video video = VideoDao.getVideoDao().getvideo(v_no);
	
%>
	<!-- 추천 영상 목록 -->
	<div class="col-md-12   pr-2 pd-2 pl-0 mt-3">
		<div class="row col-md-12 m-0 ">
			<%
			
	        for (int i = 0; i < 107; i++) {
	    	 %>
			<div class="col-md-2 pl-0 mb-4" style="border-radius: 15px;">
				<div>
					<a href="clipviewmain.jsp">
						<img src="../../img/land.jpg"<%//v_thumbnail %> class="recommendclips" style="border-radius: 15px; width: 100%;">
					</a>
				</div>
				<div class="col-md-12 mt-2 pl-0 pr-0">
				    <h5><%//v_name %>영상 제목</h5>
				    <a  href="#">
						<img src="../../img/woman.jpg" width="20" height="20" style="border-radius: 50%;">
					</a>
					<a  href="#">
						<span>채널명<%//c_name %></span>
					</a>
				</div>
			</div>
			<%}%>
		</div>
	</div>
</body>
</html>