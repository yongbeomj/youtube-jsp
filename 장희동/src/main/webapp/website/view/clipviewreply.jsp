<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br>
	<div style=" margin: 0 auto; height: 1000px;" >
		<div >
			<div id=replylist style="overflow-y: auto; height:800px;" >
				<%
		        for (int i = 0; i < 100; i++) {
		    	 %>
				<section >
					<div class="col-md-12 d-flex justify-content-start mt-1 row">
					<a href="#" class="col-md-1 px-0"><img src="../img/woman.jpg" class="col-md-12 p-0"  style="width: 40px; height: 40px; border-radius: 50%;"></a>
					<div class="col-md-11 pl-2 mr-0">
						<a  href="#">채널명</a>
						<div class="pl-0 my-2">댓글내용</div>
					</div>
				</div>
				</section>
				<%} %>
			</div>
		</div>
		<!-- 댓글 쓰기 -->
		<div class="mt-2">
			<div class="col-md-5 d-flex flex-direction:row">
				<div style="font-size: 1.2rem;">댓글 <span>538</span>개 </div>
			</div>
			<div class="col-md-12 d-flex justify-content:end py-2">
				<a  href="#"><img src="../img/woman.jpg" width="40" height="40" style="border-radius: 50%;"></a>
				<input type="text" placeholder="공개 댓글 추가" class=" form-control ml-3">
			</div>
			<div class="col-md-12 d-flex justify-content-end py-2">
				<div class="row">
					<a href="#"><button class="btn btn-dark mr-3">등록</button></a>
					<a href="#"><button class="btn btn-light">취소</button></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>