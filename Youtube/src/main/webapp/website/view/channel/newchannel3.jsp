<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div class="col-md-2">
		<%@include file="../sidebar.jsp"%>

	</div>
	<div class="container">

		<div class="col">
			<!-- 프로필 사진 및 팔로우 버튼  -->
			<div class="card " style="border-radius: 15px;">
				<div class="card-body">
					<div class="row">
						<div class="pl-2">
							<a href="#"><img src="../../img/woman.jpg" width="116px"
								height="116px" style="border-radius: 50%;"></a>
						</div>
						<div class="col-md-2">
							<h3>채널 이름</h3>
							<span>계정이름</span>
							<div class="md-2 pt-2">
								<a href="#" class="md-4"><button type="button"
										class="btn btn-danger btn-block">
										<span>팔로우</span>
									</button></a>
							</div>
						</div>
						<div class="col" style="width: 1000px; height: 180px;">

							<img src="../../img/land.jpg" alt="" width="100%" height="100%"
								style="border-radius: 15px;" />
						</div>
					</div>
				</div>
			</div>
			<!-- 프로필 사진 및 팔로우 버튼 end  -->
			<!-- 팔로잉 팔로워 좋아요 -->
			<div class="card pt-0 " style="border-radius: 15px;">
				<div class="card-body">
					<div class="row py-1">
						<div class="pr-2 pl-2">
							<span style="font-weight: bold">26</span> 팔로잉
						</div>
						<div class="pr-2">
							<span style="font-weight: bold">642.4k</span> 팔로워
						</div>
						<div class="">
							<span style="font-weight: bold">7M</span> 좋아요
						</div>
						<div class="offset-6"></div>
						<div class="mx-4"></div>
						<div class="mx-5">
							<a href="../channel/upload2.jsp"> <button type="button" class="btn btn-danger">업로드</button> </a>
						</div>
					</div>
					<div style="font-weight: bold">아직 자기소개가 없습니다.</div>
				</div>
			</div>
			<!-- 팔로잉 팔로워 좋아요 end -->
			<!-- <form>
					<button type="submit" formaction="/">TEST</button>
			</form> -->
			
			<div class="card pt-0" style="border-radius: 15px;">
				<div class="card-body">
					<form class ="form-control" style = "border : none;" >
						<div class="row py-2 justify-content-center">
								
								<div class="card col-md-2 mx-3">
								
									<button type = "submit" formaction="newchannel.jsp" class="btn"
										style="background-color: white; border: white;">
										<span style="font-weight: bold">HOME</span>
										<hr style = "border: solid 1px;">
									</button>
									
								</div>
								
							<div class="card col-md-2 mx-3">
								<button type = "submit" formaction="newchannel2.jsp" class="btn"
									style="background-color: white; border: white;">
									<span style="font-weight: bold">LIKE VIDEO</span>
									<hr style = "border: solid 1px;">
								</button>
							</div>
	
							<div class="card col-md-2 mx-3">
								<button type = "submit" formaction="newchannel3.jsp" class="btn"
									style="background-color: white; border: white;">
									<span style="font-weight: bold">COMMUNITY</span>
									<hr style = "border: solid 1px;">
								</button>
							</div>
	
							<div class="card col-md-2 mx-3">
								<button type = "submit" formaction="newchannel4.jsp" class="btn"
									style="background-color: white; border: white;">
									<span style="font-weight: bold">INFORMATION</span>
									<hr style = "border: solid 1px;">
								</button>
							</div>
							
							<!-- 
							<a href="clipviewmain.jsp"> <img src="../../img/land.jpg"
												class="recommendclips"
												style="border-radius: 15px; width: 100%;">
											</a>
							
							
							 -->
						</div>
					</form>	
					<div class="card">
						<div class="card-body">
							<div class="col-md-12  pr-2 pd-2 pl-0 mt-3">
								<div class="">
									<!-- 커뮤니티 사진 게시 -->
										<div class = "">
											<a href="clipviewmain.jsp"> <img src="../../img/land.jpg"
												class="recommendclips"
												style="border-radius: 15px; width: 100%;">
											</a>
										</div>
									<!-- 커뮤니티 사진 게시 end -->
									
									<!-- 커뮤니티 채널명 및 내용 작성 -->
									<div class = "row">
										<div class="mt-2 ml-3 pr-0 d-flex justify-content-center" style = "border:  ; border-radius : 5px;">
											
											<a href="#"> <img src="../../img/woman.jpg" width="20"
												height="20" style="border-radius: 50%;">
											</a> <a href="#"> <span> 채널명</span>
											</a>
										</div>
										
										<div class ="col-md-10 mt-2 ml-4" style = "border: solid 1px ; border-radius : 5px;">
											<span>
												내용입니다. 안녕하세요 최병호 입니다. <br>
												반갑습니다. 안녕하세요 최병호 입니다. <br>
											</span>
											<span>
												내용입니다. 안녕하세요 최병호 입니다. <br>
												반갑습니다. 안녕하세요 최병호 입니다. <br>
											</span>
											<span>
												내용입니다. 안녕하세요 최병호 입니다. <br>
												반갑습니다. 안녕하세요 최병호 입니다. <br>
											</span>
										</div>
									</div>
									
									<!-- 커뮤니티 채널명 및 내용 작성 end -->
									
									
									
								</div>
								
							</div>
						</div>
					</div>

				</div>
			</div>




		</div>
		<!-- 컨테이너 end -->
	</div>


</body>
</html>