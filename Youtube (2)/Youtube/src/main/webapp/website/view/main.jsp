<%@page import="dao.ChannelDao"%>
<%@page import="dao.VideoDao"%>
<%@page import="dto.Channel"%>
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
		ArrayList<Video> videos = VideoDao.getVideoDAO().getAllVideo();
	%>
	<div class = "row" style="height: 100%;">
		<div class = "col-md-2 fixed">
			<%@ include file = "sidebar.jsp" %> 
		</div>
		<div class = "container col-md-9  offset-md-3 col-sm-10 offset-sm-2 col-xs-6 offset-xs-2 mt-2 ml-2">
			<div class = "row justify-content-between ml-3">
				<%
					for(int i = 0; i < videos.size() ; i++){
						int v_no = videos.get(i).getV_no();
						int m_no = VideoDao.getVideoDAO().getM_no(v_no);
						int channelno = ChannelDao.getChannelDAO().getChannelNo(m_no);
						Channel channel = ChannelDao.getChannelDAO().getSoloChannel(channelno);
						System.out.println(channel.getC_no());
				%>
						<div class = "card col-xs-8 offset-xs-2 m-2" style="width: 16rem;">
							<a href = "clipviewmain.jsp?v_no=<%=v_no%>">
								<img alt="" src="../upload/<%= videos.get(i).getV_thumbnail().split("_")[0] %>" class = "card-img-top" style="max-width: 256px; max-height: 144px;">
							</a>
							<%-- <a href = "희동이페이지"><video style="width: 100%; height: 100%;" src = "../upload/<%= videos.get(i).getV_name().split("_")[0] %>" autoplay="autoplay" muted="muted" poster="<%= videos.get(i).getV_thumbnail().split("_")[0] %>"></video></a> --%>
							<div class = "card-body row" style="height: 6rem;">
								<div class = "col-md-2 pt-2 col-xs-2 col-sm-2" style=" padding-left: 0; margin-left: 0">
									<a href = "channel/otherchannel.jsp?c_no=<%= channel.getC_no() %>">
										<img alt="" src="<%= channel.getC_image() %>" style="width: 2.5rem; height: 2.5rem; border-radius: 70%;">
									</a>
								</div>
								<div class = "col-md-10 col-xs-10 col-sm-10">
									<%
										if(videos.get(i).getV_title().split(".mp4")[0].length() > 16) {
											String videoTitle = videos.get(i).getV_title().split(".mp4")[0].substring(0,16) + "...";
									%>
											<h5 class = "card-title" style="font-size: 16px;"><%= videoTitle %></h5>
									<%
										} else {
									%>
											<h5 class = "card-title" style="font-size: 16px;"><%= videos.get(i).getV_title().split(".mp4")[0] %></h5>
									<%
										}
									%>
									<p class = "card-text" style="font-size: 4px;"><a href = "channel/otherchannel.jsp?c_no=<%= channel.getC_no() %>" style="text-decoration: none; color: black;"><%= channel.getC_name() %> · <%= channel.getC_updatedate().split(" ")[0] %></a>
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