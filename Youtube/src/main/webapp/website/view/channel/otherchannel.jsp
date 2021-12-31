<%@page import="dao.VideoDao"%>
<%@page import="dto.Video"%>
<%@page import="dao.FollowDao"%>
<%@page import="dao.ChannelDao"%>
<%@page import="dto.Channel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	int c_no = Integer.parseInt(request.getParameter("c_no"));
	Channel channel = ChannelDao.getChannelDAO().getSoloChannel(c_no);
	int m_no2 = login.getM_no();
	int m_no = ChannelDao.getChannelDAO().getm_No(c_no);
	Member member2 = MemberDao.getMemberDao().mnoselect(m_no);
	boolean f_check = FollowDao.getFollowDao().followcheck(c_no, m_no2);
	int f_checkcount = FollowDao.getFollowDao().followerCount(c_no);
	int f_checkcount2 = FollowDao.getFollowDao().followingCount(m_no);
	%>
	<%!int vl_totalcheck = 0;%>
	<%
	if (loginid == null || !login.getM_id().equals(member2.getM_id())) {
	%>
	<%
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
							<a href="#"><img src="../../upload/<%=member2.getM_image()%>" width="116px" height="116px" style="border-radius: 50%;"></a>
						</div>
						<div class="col-md-2">
							<h3><%=channel.getC_name()%></h3>
							<%
							if (channel.getC_no() != MemberDao.getMemberDao().getmemberno(loginid)) {
							%>
							<span></span>
							<!-- 계정명이 뭐지; -->
							<%
							} else {
							%>
							<span><%=member2.getM_name()%></span>
							<!-- 계정명이 뭐지; -->
							<%
							}
							%>
							<div class="md-2 pt-2">
								<%
								if (f_check == true) {
								%>
								
								<a href="#" id="follow" class="md-4" onclick="c_follow(<%=c_no%>,<%=m_no2%>);">
									<button type="button" class="btn btn-danger btn-block">
										<span>팔로우 중</span>
									</button>
								</a>
								<%
								} else if (f_check == false) {
								%>
								
								<a href="#" id="follow" class="md-4" onclick="c_follow(<%=c_no%>,<%=m_no2%>);">
									<button type="button" class="btn btn-danger btn-block">
										<span>팔로우</span>
									</button>
								</a>
								<%
								}
								%>
							</div>
						</div>
						<div class="col" style="width: 1000px; height: 180px;">
							<img src="../../upload/<%=channel.getC_image()%>" alt="" width="100%" height="100%" style="border-radius: 15px;" />
						</div>
					</div>
				</div>
			</div>
			<!-- 프로필 사진 및 팔로우 버튼 end  -->
			<!-- 팔로잉 팔로워 좋아요 -->
			<%
			if (vl_totalcheck > 0) {
			%>

			<%
			}
			%>
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
						<%
						vl_totalcheck = 0;
						%>
					</div>
					<%
					if (channel.getC_present() == null) {
					%>
					<div style="font-weight: bold">아직 자기소개가 없습니다.</div>
					<%
					} else {
					%>
					<div style="font-weight: bold"><%=channel.getC_present()%></div>
					<%
					}
					%>
				</div>
			</div>
			<!-- 팔로잉 팔로워 좋아요 end -->

			<div class="card pt-0" style="border-radius: 15px;">
				<div class="card-body">
					<form class="form-control" style="border: none;">
						<div class="row py-2 justify-content-center">
							<div class="card col-md-2 mx-3">
								<input type="hidden" value="<%=c_no%>" name="c_no">
								<button type="submit" formaction="otherchannel.jsp" class="btn" style="background-color: white; border: white;">
									<span style="font-weight: bold">HOME</span>
									<hr style="border: solid 1px;">
								</button>
							</div>
							<div class="card col-md-2 mx-3">
								<button type="submit" formaction="otherchannel2.jsp" " class="btn" style="background-color: white; border: white;">
									<span style="font-weight: bold">LIKE VIDEO</span>
									<hr style="border: solid 1px;">
								</button>
							</div>
							<div class="card col-md-2 mx-3">
								<button type="submit" formaction="otherchannel3.jsp" " class="btn" style="background-color: white; border: white;">
									<span style="font-weight: bold">COMMUNITY</span>
									<hr style="border: solid 1px;">
								</button>
							</div>
							<div class="card col-md-2 mx-3">
								<button type="submit" formaction="otherchannel4.jsp" " class="btn" style="background-color: white; border: white;">
									<span style="font-weight: bold">INFORMATION</span>
									<hr style="border: solid 1px;">
								</button>
							</div>



						</div>
					</form>
					<div class="card">
						<div class="card-body">
							<div class="col-md-12   pr-2 pd-2 pl-0 mt-3">
								<div class="row col-md-12 m-0 ">
									<%
									for (Video temp : videos) {
									%>
									<div class="col-md-3 mb-4" style="border-radius: 15px;">
										<div>
											<a href="../clipviewmain.jsp?v_no=<%=temp.getV_no()%>"> <img src="../../upload/<%=temp.getV_thumbnail().split("_")[0]%>"
												class="recommendclips" style="border-radius: 15px; width: 100%;">
											</a>
											<%
											int v_no = temp.getV_no();
											vl_totalcheck += VideoDao.getVideoDAO().videolikeCount(v_no);
											System.out.println(v_no + "fsadfsdafsd");
											System.out.println(vl_totalcheck + "f");
											%>
										</div>
										<div class="col-md-12 mt-2 pr-0">
											<h5><%=temp.getV_title()%></h5>
											<a href="../channel/otherchannel.jsp?c_no=<%=c_no%>"> <img src="../../upload/<%=member2.getM_image()%>" width="20" height="20"
												style="border-radius: 50%;">
											</a> <a href="../channel/otherchannel.jsp?c_no=<%=c_no%>"> <span><%=channel.getC_name()%></span>
											</a>
										</div>
									</div>
									<%
									}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 컨테이너 end -->
	</div>
	<%
	} else if (login.getM_id().equals(member2.getM_id())) {
	response.sendRedirect("../../view/channel/newchannel.jsp");
	%>

	<%
	}
	%>
</body>
</html>