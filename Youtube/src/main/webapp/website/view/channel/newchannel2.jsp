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
		int c_no =  ChannelDao.getChannelDAO().getChannelNo(m_no);
		int f_checkcount = FollowDao.getFollowDao().followerCount(c_no);
		int f_checkcount2 = FollowDao.getFollowDao().followingCount(m_no);
		ArrayList<Video> videos = VideoDao.getVideoDAO().getmyVideo(m_no);
	%>
	<div class="container">

		<div class="col">
			<!-- 프로필 사진 및 팔로우 버튼  -->
			<div class="card " style="border-radius: 15px;">
				<div class="card-body">
					<div class="row">
						<div class="pl-2">
							<!-- 21.12.25 임시적으로 이미지 채널 배경이미지로 했음 추후에 member에서 이미지 가져오기 -->
							<a href="#"><img src="../../upload/<%=channel.getC_image()%>" width="116px"
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
							<span style="font-weight: bold">7M</span> 좋아요
						</div>
						<div class="offset-6"></div>
						<div class="mx-4"></div>
						<%
							if(channel.getC_no() != MemberDao.getMemberDao().getmemberno(loginid)){
						%>
								<div></div>
						<%	
							} else {
						%>
								<div class="mx-5">
									<a href="../channel/upload.jsp"> <button type="button" class="btn btn-danger">업로드</button> </a>
								</div>
						<%
							}
						%>
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
							<div class="col-md-12   pr-2 pd-2 pl-0 mt-3">
								<div class="row col-md-12 m-0 ">
									<%
									for (int i = 0; i < 5; i++) {
									%>
									<div class="col-md-3 mb-4" style="border-radius: 15px;">
										<div>
											<a href="clipviewmain.jsp"> <img src="../../img/land.jpg"
												class="recommendclips"
												style="border-radius: 15px; width: 100%;">
											</a>
										</div>
										<div class="col-md-12 mt-2 pr-0">
											<h5>Card title</h5>
											<a href="#"> <img src="../../img/woman.jpg" width="20"
												height="20" style="border-radius: 50%;">
											</a> <a href="#"> <span>채널명</span>
											</a>
										</div>
									</div>
									<%}%>
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