<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		*{
			;
			font-family: 'Noto Sans KR';
			color: #black;
			
		}
		@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

		.notosanskr * { 
		 font-family: 'Noto Sans KR', sans-serif;
		}
	</style>
	<link rel="stylesheet" href="../css/clipview.css">
</head>
<body>
	<%@include file="header.jsp" %>
	
	<div style=" background-color: white;">
		<div class="col-md-10 p-0" style="overflow-y: auto;  margin: 0 auto;">
			<!-- 메인 영상 -->
			<div class="col-md-12 my-5" style="margin-top: 20px; padding-top:10px; ">
				<%@include file="clipview.jsp" %>
				<!-- 영상 상세정보 라인 -->
				<div class="row m-0">
					<%@include file="clipviewinfo.jsp" %>
					<!-- 추천영상 라인 -->
					
					<%@include file="clipviewrecommand.jsp" %>
			
				</div>
			</div>	
		</div>
	</div>
	<div>
	
	</div>
</body>
</html>