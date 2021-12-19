<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <body>
	<%@include file ="header.jsp" %>
	<br><br><br><br><br>
	<div class = "container">
	<!-- 프로필 사진 및 팔로우 버튼  -->
		<div class ="row">
			<div>
				<a href="#"><img src="../img/woman.jpg" width="116px" height="116px" style="border-radius: 50%;"></a>
			</div>
			<div class = "col">
				<h3>채널 이름</h3>
				<span>계정이름</span>
				<div class="md-4 pt-2">
					<a href="#" class="md-4"><button type = "button" class="btn btn-outline-dark btn-block "> <span>팔로우</span> </button></a>
					
				</div>
			</div>
		</div>	
	<!-- 프로필 사진 및 팔로우 버튼 end  -->
	<!-- 팔로잉 팔로워 좋아요 -->
		<div class = "row py-2">
			<div class="pr-2 ">
				26 팔로잉
			</div>	
			<div class="pr-2">
				642.4k 팔로워
			</div>	
			<div class="">
				7M 좋아요
			</div>	
		</div>
	<!-- 팔로잉 팔로워 좋아요 end -->	
		
		<div class = "py-2">
		아직 자기소개가 없습니다.
		</div>
		<div class = "row">
			<div class = "col-md-2">
				<p >동영상</p> 
				<hr>
			</div>
			<div class = "col-md-2">
				<p >좋아요</p> 
				<hr>
			</div>
			<div class = "col-md-2">
				<p >커뮤니티</p> 
				<hr>
			</div>
			<div class = "col-md-2">
				<p>정보</p> 
				<hr>
			</div>
		</div>
		
	</div>
	
  

</body>
</html>