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

	<%@include file="../header.jsp"%>
	
	<div class="container" style="margin-top: 45px;">
		<div class="row">
			<!-- 메인 영상 -->
			<div class="col-md-7 my-5" style="margin: 0 auto; padding: 0px 24px 0 0;">
				<%@include file="clipview.jsp"%>
				<!-- 영상제목 라인 -->
				<%@include file="clipviewinfo.jsp"%>

			</div>


			<!-- 오른쪽 영상목록 쪽 -->
			<div class="col-md-5 my-5 ml-0 mr-0 pl-0 pr-0">
				<%@include file="clipviewside.jsp"%>
			</div>
		</div>
	</div>
	<div></div>
</body>
</html>