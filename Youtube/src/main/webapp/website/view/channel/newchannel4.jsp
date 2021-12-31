<%@page import="dto.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.VideoDao"%>
<%@page import="dao.FollowDao"%>
<%@page import="dao.ChannelDao"%>
<%@page import="dto.Channel"%>
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
	<%	
		int m_no = MemberDao.getMemberDao().getmemberno(loginid);
		System.out.println(m_no);
		Channel channel = ChannelDao.getChannelDAO().getChannelinfo(m_no);
		System.out.println(channel.getC_name());
	%>
	<%	
		int c_no = ChannelDao.getChannelDAO().getChannelNo(m_no);
		int f_checkcount = FollowDao.getFollowDao().followerCount(c_no);
		int f_checkcount2 = FollowDao.getFollowDao().followingCount(m_no);
		ArrayList<Video> videos = VideoDao.getVideoDAO().getmyVideo(m_no);
	%>
	<%! int vl_totalcheck = 0; %>
	<div class="container">

		<div class="col">
			<!-- 프로필 사진 및 팔로우 버튼  -->
			<div class="card " style="border-radius: 15px;">
				<div class="card-body">
					<div class="row">
						<div class="pl-2">
							<!-- 21.12.25 임시적으로 이미지 채널 배경이미지로 했음 추후에 member에서 이미지 가져오기 -->
							<a href="#"><img src="../../upload/<%=member.getM_image()%>" width="116px"
								height="116px" style="border-radius: 50%;"></a>
						</div>
						<div class="col-md-2">
							<h3><%=channel.getC_name() %></h3>
							<span><%=member.getM_id() %></span>
							
						</div>
						<div class="col" style="width: 1000px; height: 180px;">

							<img src="../../upload/<%=channel.getC_image()%>" alt="" width="100%" height="100%"
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
							<!-- 내가 팔로잉 한 채널 찾기 -->
							<span style="font-weight: bold"><%=f_checkcount2%></span> 팔로잉
						</div>
						<div class="pr-2">
							<span style="font-weight: bold"><%=f_checkcount%></span> 팔로워
						</div>
						<div class="">
							<span style="font-weight: bold"><%=vl_totalcheck%></span> 좋아요
						</div>
						<div class="offset-6"></div>
						<div class="mx-4"></div>
						
								<div class="mx-5">
									<a href="../channel/upload3.jsp"> <button type="button" class="btn btn-danger">정보수정</button> </a>
								</div>
						
					</div>
					<%if(channel.getC_present() == null){ %>
						<div style="font-weight: bold">아직 자기소개가 없습니다.</div>
					<%}else{%>
						<div style="font-weight: bold"><%=channel.getC_present() %></div>
					<%}%>
				</div>
			</div>
			<!-- 팔로잉 팔로워 좋아요 end -->

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
							<div class ="row d-flex justify-content-center ">
								<div class = "col-md-7 ">
									<div>
										<h6>설명</h6> 
									</div>
									
									<div>
										<p>
											<%=channel.getC_info() %>
										</p>
										
									</div>
									
									<hr>
									<div>
										<h6>세부정보</h6>
										<p>비지니스 문의</p><br> 
										
										<p>위치</p> 
									</div>
									
								</div>
								<div class = "col-md-5" >
								
									<div>통계</div>
									<hr>
									<!-- 채널 가입일 날짜만 나오도록 조정 해야됨-->
									<div>가입일: <span><%=member.getM_date()%></span></div>
									<hr>
									<!-- 팔로잉 팔로우 이후 동영상 조회수 갱신시 총 조회수를 갱신해서 넣을 예정  -->
									<div>조회수: <span>5,000,000</span>회</div>
								
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