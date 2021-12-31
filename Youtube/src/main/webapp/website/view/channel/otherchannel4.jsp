<%@page import="dto.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.VideoDao"%>
<%@page import="dao.FollowDao"%>
<%@page import="dao.ChannelDao"%>
<%@page import="dto.Channel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int c_no = Integer.parseInt(request.getParameter("c_no"));
	Channel channel = ChannelDao.getChannelDAO().getSoloChannel(c_no);
	%>
	<div class="col-md-2">
		<%@include file="../sidebar.jsp"%>
	</div>
	<%
	int m_no = ChannelDao.getChannelDAO().getm_No(c_no);
	Member member2 = MemberDao.getMemberDao().mnoselect(m_no);
	boolean f_check = FollowDao.getFollowDao().followcheck(c_no, m_no);
	int f_checkcount = FollowDao.getFollowDao().followerCount(c_no);
	int f_checkcount2 = FollowDao.getFollowDao().followingCount(m_no);
	%>

	<%! int vl_totalcheck = 0; %>
	<%if(loginid == null || !login.getM_id().equals(member2.getM_id()) ){%>
	
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

							<div class="md-2 pt-2">
								<%
								if (f_check == true) {
								%>
								<a href="#" id="follow" class="md-4" onclick="c_follow(<%=c_no%>,<%=m_no%>);">
									<button type="button" class="btn btn-danger btn-block">
										<span>팔로우 중</span>
									</button>
								</a>
								<%
								} else {
								%>
								<a href="#" id="follow" class="md-4" onclick="c_follow(<%=c_no%>,<%=m_no%>);">
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

					</div>
					<%
					if (channel.getC_present() == null) {
					%>
					<div style="font-weight: bold">아직 자기소개가 없습니다.</div>
					<%
					} else {
					%>
					<div style="font-weight: bold"><%=channel.getC_present()%></div>
					<%}%>
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
							<div class="row d-flex justify-content-center ">
								<div class="col-md-7 ">
									<div>
										<h6>설명</h6>
									</div>

									<div>
										<p>
											<%=channel.getC_info()%>
										</p>

									</div>

									<hr>
									<div>
										<h6>세부정보</h6>
										<p>비지니스 문의</p>
										<br>

										<p>위치</p>
									</div>

								</div>
								<div class="col-md-5">

									<div>통계</div>
									<hr>
									<!-- 채널 가입일 날짜만 나오도록 조정 해야됨-->
									<div>
										가입일: <span><%=member2.getM_date()%></span>
									</div>
									<hr>
									<!-- 팔로잉 팔로우 이후 동영상 조회수 갱신시 총 조회수를 갱신해서 넣을 예정  -->
									<div>
										조회수: <span>5,000,000</span>회
									</div>
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
	} else if (login.getM_id().equals(member2.getM_id())) { // 세션 있을경우 (로그인)
	response.sendRedirect("../../view/channel/newchannel.jsp");
	}
	%>

</body>
</html>