<%@page import="dao.ChannelBoardDao"%>
<%@page import="dto.ChannelBoard"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ChannelDAO"%>
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
<!-- 채널 커뮤니티 -->
	<div class="col-md-2">
		<%@include file="../sidebar.jsp"%>
 
	</div>
	<%	
		// request를 통해 channelboard에서 누른 cb_no값을 찾아야됨  
		
		// cb_no를 가지고와서 해당 cb_no의 게시물을 업데이트 시킬거임 (즉 이건 수정이다 이 말씀이지)
		int m_no = MemberDao.getMemberDao().getmemberno(loginid);
		System.out.println(m_no);
		Channel channel = ChannelDAO.getChannelDAO().getChannelinfo(m_no);
		int c_no = ChannelDAO.getChannelDAO().getChannelNo(m_no);
		// 
		// 단순히 게시물을 등록하기 위해서는 c_no를 우선적으로 알아야하고 그다음으로 c_no를 통해 cb_no를 계속 늘려야 게시물 증가임 
		ArrayList<ChannelBoard> channelboards = ChannelBoardDao.getChannelBoardDao().channelBoardList(c_no);
		System.out.println(c_no);
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
					
					<%if(channel.getC_present() == null){ %>
						<div style="font-weight: bold">아직 자기소개가 없습니다.</div>
					<%}else{%>
						<div style="font-weight: bold"><%=channel.getC_present() %></div>
					<%}%>
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
									<%
									for(ChannelBoard channelBoard : channelboards){
									%>
									
									<!--  커뮤니티 채널명 및 내용 작성 -->
									<div class = "row">
										<div class = "col-md-10">
											<div class="mt-2 ml-3 pr-0 d-flex justify-content-start" style = "border:  ; border-radius : 5px;">
												
												<a href="#"> <img src="../../upload/<%=channel.getC_image()%>" width="20"
													height="20" style="border-radius: 50%;">
												</a> <a href="#"> <span> <%=channel.getC_name() %></span>
												</a>
											</div>
											
											<div class =" mt-2 ml-4 " style = "border: solid 1px ; border-radius : 5px;">
												<p class ="form-control py-5" style ="background: white" >
													<%=channelBoard.getCb_contents() %>
												</p>
											</div>
										</div>
										
											<div class ="pr-2 float-right" style = "">
											<a href="../channel/upload2update.jsp?cb_no=<%=channelBoard.getCb_no()%>"> <button type="button" class="btn btn-danger">수정</button> </a>
											</div>
											<div class ="">
											<a href="../../controller/channel/channelboarddeletecontroller.jsp?cb_no=<%=channelBoard.getCb_no()%>"> <button type="button" class="btn btn-danger">삭제</button> </a>
											</div>
										
									</div>
									<!-- 커뮤니티 채널명 및 내용 작성 end -->
									<!-- 커뮤니티 사진 게시 -->
										<div class = "d-flex pl-4 pr-2">
											<a href="clipviewmain.jsp"> <img src="../../upload/<%=channelBoard.getCb_image()%>"
												class="recommendclips"
												style="border-radius: 15px; width: 800px; height : 400px;"  />
											</a>
										</div><br>
									<!-- 커뮤니티 사진 게시 end -->
									<%
									}
									%>
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