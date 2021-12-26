<%@page import="dto.Channel"%>
<%@page import="dao.ChannelDAO"%>
<%@page import="dao.MemberDao"%>
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
		Channel channel = ChannelDAO.getChannelDAO().getChannelinfo(m_no);
		System.out.println(channel.getC_name());
	%>
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
							<div class="md-2 pt-2">
								<a href="#" class="md-4"><button type="button"
										class="btn btn-danger btn-block">
										<span>팔로우</span>
									</button></a>
							</div>
						</div>
						<div class="col" style="width: 1000px; height: 180px;">

							<img src="../../upload/<%=channel.getC_image()%>" alt="" width="100%" height="100%"
								style="border-radius: 15px;" />
						</div>
					</div>
				</div>
			</div>
			<!-- 프로필 사진 및 팔로우 버튼 end  -->
</body>
</html>