<%@page import="dto.Channel"%>
<%@page import="dao.ChannelDAO"%>
<%@page import="dao.VideoDAO"%>
<%@page import="dto.Video"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width, initial-scale=1, minimum-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
   /* border: 1px solid black; */
   
}
</style>
</head>
<body>
	<%
		ArrayList<Video> videos = VideoDAO.getVideoDAO().getAllVideo();
	%>
	<div class = "row" style="height: 100%;">
		<div class = "col-md-2 fixed">
			<%@ include file = "sidebar.jsp" %> 
		</div>
		<div class = "container col-md-9  offset-md-3 col-sm-10 offset-sm-2 col-xs-6 offset-xs-2 mt-2 ml-2">
			<div class = "row justify-content-between ml-3">
				<%
					for(int i = 0; i < videos.size(); i++){
						int v_no = videos.get(i).getV_no();
						int m_no = VideoDAO.getVideoDAO().getM_no(v_no);
						ArrayList<Channel> channels = ChannelDAO.getChannelDAO().getChannel(m_no);
						// System.out.println(channels.get(0).getC_image());
				%>
						<div class = "card col-xs-8 offset-xs-2 m-2" style="width: 16rem;">
							<a href = "희동이페이지"><img alt="" src="../upload/<%= videos.get(i).getV_thumbnail().split("_")[0] %>" class = "card-img-top"></a>
							<div class = "card-body row" style="height: 6rem;">
								<div class = "col-md-2 pt-2 col-xs-2 col-sm-2" style=" padding-left: 0; margin-left: 0">
									<a href = "channel/otherchannel.jsp?c_no=<%= channels.get(i).getC_no() %>">
										<img alt="" src="<%= channels.get(i).getC_image() %>" style="width: 2.5rem; height: 2.5rem; border-radius: 70%;">
									</a>
								</div>
								<div class = "col-md-10 col-xs-10 col-sm-10">
									<%
										if(videos.get(i).getV_name().split(".mp4")[0].length() > 16) {
											String videoTitle = videos.get(i).getV_name().split(".mp4")[0].substring(0,16) + "...";
									%>
											<h5 class = "card-title" style="font-size: 16px;"><%= videoTitle %></h5>
									<%
										} else {
									%>
											<h5 class = "card-title" style="font-size: 16px;"><%= videos.get(i).getV_name().split(".mp4")[0] %></h5>
									<%
										}
									%>
									<p class = "card-text" style="font-size: 4px;"><a href = "channel/otherchannel.jsp?c_no=<%= channels.get(i).getC_no() %>" style="text-decoration: none; color: black;"><%= channels.get(i).getC_name() %> · <%= channels.get(i).getC_updatedate().split(" ")[0] %></a>
								</div>
							</div>
						</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>