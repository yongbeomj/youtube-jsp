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
		<div class = "card " style="border-radius: 15px;">
			<div class = "card-body">
				<div class ="row">
					<div class = "pl-2">
						<a href="#"><img src="../img/woman.jpg" width="116px" height="116px" style="border-radius: 50%;"></a>
					</div>
					<div class = "col-md-2">
						<h3>채널 이름</h3>
						<span>계정이름</span>
						<div class="md-2 pt-2">
							<a href="#" class="md-4"><button type = "button" class="btn btn-danger btn-block"> <span>팔로우</span> </button></a>
						</div>			
					</div>
					<div class = "col" style ="width: 1000px; height: 180px;">
						
						<img src="../img/land.jpg" alt="" width="100%" height="100%" style="border-radius: 15px;"/>
					</div>
				</div>	
			</div>
		</div>
		<!-- 프로필 사진 및 팔로우 버튼 end  -->
		<!-- 팔로잉 팔로워 좋아요 -->
		<div class = "card pt-0 " style="border-radius: 15px;">
			<div class = "card-body">
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
				<div class = "">
					아직 자기소개가 없습니다.
				</div>
			</div>
		</div>
		<!-- 팔로잉 팔로워 좋아요 end -->	
			
		<div class = "card pt-0" style="border-radius: 15px;">
			<div class = "card-body">
				<div class = "row py-2 justify-content-center">
					<div class = "card col-md-2 ml-3">
						<button class ="" style = "background-color: white; border: white;">
							<span>홈</span> 
							<hr>
						</button>	
							
					</div>
					<div class = "card col-md-2 mx-2">
						<button class ="" style = "background-color: white; border: white;">
							<span>동영상</span> 
							<hr>
						</button>	
							
					</div>
					<div class = "card col-md-2 mx-2">
						<button class ="" style = "background-color: white; border: white;">
							<span>커뮤니티</span> 
							<hr>
						</button>	
							
					</div>
					
					<div class = "card col-md-2 mx-2">
						<button class ="" style = "background-color: white; border: white;">
							<span>공지사항</span> 
							<hr>
						</button>	
							
					</div>
					<!-- 
					<a href="clipviewmain.jsp"> <img src="../img/land.jpg"
										class="recommendclips"
										style="border-radius: 15px; width: 100%;">
									</a>
					
					
					 -->
				</div>
				<div class = "card">
					<div class = "card-body ">
						<table>
							<tr>
								
							</tr>
						
						</table>
					</div>
				</div>
				
			</div>
		</div>
		
	
			
		
	</div><!-- 컨테이너 end -->
	
  

</body>
</html>