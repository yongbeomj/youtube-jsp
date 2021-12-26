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
	<div class = "row" style="height: 100%;">
		<div class = "col-md-2 fixed">
			<%@ include file = "sidebar.jsp" %> 
		</div>
		<div class = "container col-md-9  offset-md-3 col-sm-10 offset-sm-2 col-xs-6 offset-xs-2 mt-2 ml-2">
			<div class = "row justify-content-between ml-3">
				<%
					ArrayList<Video> videos = VideoDAO.getVideoDAO().getAllVideo();
					// System.out.println(thumb);
					for(int i = 0; i < videos.size(); i++){
						String thumb = videos.get(i).getV_thumbnail().split("_")[0];
						System.out.println(videos.get(i).getV_path() + "/" + thumb);
						String c_img = VideoDAO.getVideoDAO().getImg(videos.get(i).getM_no());
				%>
						<div class = "card col-xs-8 offset-xs-2 m-2" style="width: 16rem;">
							<img alt="" src="<%= videos.get(i).getV_path() + "/" + thumb %>" class = "card-img-top">
							<div class = "card-body row" style="height: 6rem;">
								<div class = "col-md-2 pt-2 col-xs-2 col-sm-2" style=" padding-left: 0; margin-left: 0">
									<img alt="" src="<%= videos.get(i).getV_path() + "/" + c_img + ".jpg" %>" style="width: 2.5rem; height: 2.5rem; border-radius: 70%;">
								</div>
								<div class = "col-md-10 col-xs-10 col-sm-10">
									<h5 class = "card-title"><%= videos.get(i).getV_title() %></h5>
									<p class = "card-text" style="font-size: 4px;">채널명/업로드시간 등
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