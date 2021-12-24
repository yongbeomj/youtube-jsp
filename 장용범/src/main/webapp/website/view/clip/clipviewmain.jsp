<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/clipview.css">
</head>
<body>
		<%@include file="../sidebar.jsp"%>

	<div style="background-color: white;">
		<div class="row m-0">
			<div class="col-md-10 p-0" style="overflow-y: auto; margin: 0 auto;">
				<div class="row m-0">
					<!-- 메인 영상 -->
					<div class="row">

						<div class="col-md-8 my-5"
							style="margin-top: 20px; padding-top: 10px;">
							<%@include file="clipview.jsp"%>
							<!-- 영상 상세정보 라인 -->
							<%@include file="clipviewinfo.jsp"%>
						</div>

						<div class="col-md-4">
							<%@include file="clipviewreply.jsp" %>
						</div>
					</div>

					<!-- 추천영상 라인 -->
					<div>

						<%@include file="clipviewrecommend.jsp"%>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>