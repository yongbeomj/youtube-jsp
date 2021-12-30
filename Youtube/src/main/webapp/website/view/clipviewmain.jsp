<%@page import="java.util.Collections"%>
<%@page import="dao.VideoDao"%>
<%@page import="dto.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ReplyDao"%>
<%@page import="dto.Reply"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div style="background-color: white;">

		<div class="row m-0">
			<div class="col-md-1 fixed">
				<%@ include file="sidebar.jsp"%>
			</div>
			<%
			//로그인 연결시	
			//Login login = (Login)session.getAttribute("login");
			int m_no = login.getM_no();
			//System.out.println("m_no11 : "+m_no);
			int v_no = Integer.parseInt(request.getParameter("v_no"));
			//System.out.println("clipviewmain v_no : " + v_no);
			ArrayList<Reply> replies2 = ReplyDao.getReplyDao().replies(v_no);
			System.out.println("replies2.size() : " + replies2.size());
			
			Video video = VideoDao.getVideoDAO().getVideo(v_no);
			
			for(Reply temp : replies2){
				System.out.println(temp.getR_contents());
			}
			
			ArrayList<Video> videos = VideoDao.getVideoDAO().getAllVideo();
			// System.out.println(thumb);
			int r_count = ReplyDao.getReplyDao().replycount();
			String path = request.getSession().getServletContext().getRealPath("website/upload");
			//System.out.print("path : "+path);

			ArrayList<Video> videolist = VideoDao.getVideoDAO().getAllVideo();
			Collections.shuffle(videolist);
			%>

			<div class="col-md-10 p-0" style="overflow-y: auto; margin: 0 auto;">

				<input type="hidden" id="ii" value="0">
				<div class="row m-0">
					<!-- 메인-->

					<div class="col-md-8 my-5" style="margin-top: 20px; padding-top: 10px;">
						<!-- 비디오 플레이어 있는 곳 -->
						<div class="row">
							<video style="border-radius: 10px;" controls="controls" width="100%" autoplay="autoplay">
								<!-- 영상 자체에 소리가 없음 -->
								<source src="../upload/<%= video.getV_name().split("_")[0] %>">
							</video>

						</div>
						<!-- 비디오 상세정보 -->
						<div class="col-md-12 mt-3" style="font-size: 2rem;">영상 제목</div>
						<div class="mainclip col-md-12 d-flex justify-content:space-between py-1" style="border-bottom: 1px solid #cccccc;">
							<div class="col-md-5  pl-0">
								<span>조회수</span> <span>·</span> <span>날짜</span>
							</div>
						</div>
						<div class="col-md-12 mainclip d-flex justify-content:space-between pt-2 py-3">
							<div class="col-md-12">
								<div class="row">
									<div>
										<a href="#"><img src="../img/woman.jpg" width="48px" height="48px" style="border-radius: 50%;"></a>
									</div>
									<div class="col-md-9 pr-1 mr-3">
										<a href="#">aaa</a><br> <span>구독자 : 1202만명</span>
									</div>
									<div class="col-md-2 pl-4 pr-0">
										<%
										//if(login != null){ //로그인 아이디가 존재하면

										//영상 좋아요 체크 메소드 !!로그인 아이디 연결해야됨
										if (VideoDao.getVideoDAO().videolikecheck(v_no, m_no)) {
										%>
										<button class="btn btn-outline-dark pt-1">팔로우</button>
										<img id="videolike" class="ml-3" src="../img/heartfill.png" onclick="v_like(<%=v_no%>,<%=m_no%>);"
											style="height: 30px; width: 30px; cursor: pointer;">
										<%
										} else { //좋아요가 존재하지 않으면
										%>
										<img id="videolike" class="ml-3" src="../img/heart.png" onclick="v_like(<%=v_no%>,<%=m_no%>);"
											style="height: 30px; width: 30px; cursor: pointer;">
										<%
										}
										//}
										%>
									</div>
									<!-- 기능 추가할 곳 좋아요나, 공유나, 보관함등 -->
								</div>
							</div>
						</div>
						<div class="col-md-11 offset-1 pl-3">
							<div class="collpase navbar-collapse">
								<div class="navbar-nav">
									<!-- 기준식 써서 \n3 기준으로 자른다. -->
									<details class="nav-item">
										<summary>영상설명 펼치기</summary>
										<p>영상에 관한 세부적인 내용이 입력되는 곳입니다.</p>
									</details>
								</div>
							</div>
						</div>
						<hr>
					</div>

					<!-- 댓글 -->
					<div class="col-md-4" style="margin-top: 50px;">
						<!-- <input class="form-control"> -->
						<div style="margin: 0 auto; height: 1000px;">
							<div id="replybox" class="mr=0" id=replylist style="overflow-y: auto; height: 700px;">
								<%
								System.out.print("replies2.size() : " + replies2.size());
								for (Reply temp : replies2) {
									for (int i = 0; i < videos.size(); i++) {
										String thumb = videos.get(i).getV_thumbnail().split("_")[0];
										//System.out.println(videos.get(i).getV_path() + "/" + thumb);
										String c_img = VideoDao.getVideoDAO().getImg(videos.get(i).getM_no());
								%>
								<div class="col-md-12 d-flex justify-content-start ml-1 mt-1 mr-0 row">
									<a href="channel/newchannel.jsp" class="col-md-1 px-0"> <img src="<%=c_img%>" class="col-md-12 p-0"
										style="width: 40px; height: 40px; border-radius: 50%;">
									</a>
									<div class="col-md-9 pl-2 mr-0">
										<a href="channel/newchannel.jsp"><%=temp.getC_name()%></a>
										<div class="pl-0 my-2"><%=temp.getR_contents()%></div>
									</div>
									<%
									//if (loginid != null && loginid.equals(temp.getC_name())){
									%>
									<div class="col-md-2 mt-3 d-flex justify-content-between px-1 row" style="color: #656461; cursor: pointer;">
										<a onclick="replydelete(<%=temp.getR_no()%>);">삭제</a> <a id="replyupdatebtn<%=temp.getR_no()%>" onclick="replyupdate(<%=temp.getR_no()%>);">수정</a>
										<a id="replycancelbtn<%=temp.getR_no()%>" style="display: none;">취소</a>
									</div>
									<div class="col-md-12 ml-4 row" id="updatereply<%=temp.getR_no()%>" style="display: none;"></div>
									<%//} %>
								</div>
								<%
								}
								}
								%>
							</div>
							<!-- 댓글 쓰기 -->
							<div id="replydiv" class="mt-2">
								<div class="col-md-5 d-flex flex-direction:row">
									<div style="font-size: 1.2rem;">
										댓글 <span></span><%=r_count%>개
									</div>
								</div>
								<div class="col-md-12 d-flex justify-content:end py-2">
									<a href="#"><img src="../img/woman.jpg" width="40" height="40" style="border-radius: 50%;"></a>
									<textarea id="replytext" placeholder="공개 댓글 추가" class=" form-control ml-3" onchange="replywrite(<%=v_no%>);"></textarea>
								</div>
								<div class="col-md-12 d-flex justify-content-end py-2">
									<!-- 로그인이 되어있을 때 -->
									<%
									//if (loginid != null) {
									%>
									<div class="row">
										<button id="btnreplywrite" class="btn btn-dark mr-3">등록</button>
										<button class="btn btn-light" id="replycancel">취소</button>
									</div>
									<%//} %>
								</div>
							</div>
						</div>
					</div>
					<!-- 추천비디오 라인 -->
					<div>
						<!-- 추천 영상 목록 -->
						<div class="col-md-12   pr-2 pd-2 pl-0 mt-3">
							<div class="row col-md-12 m-0 ">
								<%
								for (Video temp : videolist) {
								%>
								<div class="col-md-2 pl-0 mb-4" style="border-radius: 15px;">
									<div>
										<a href="clipviewmain.jsp?v_no=<%=v_no%>"> <img src="../img/<%=temp.getV_thumbnail().split("_")[0] %>" class="recommendclips"
											style="border-radius: 15px; width: 100%;">
										</a>
									</div>
									<div class="col-md-12 mt-2 pl-0 pr-0">
										<h5><%=temp.getV_title()%></h5>
										<a href="#"> <img src="../img/woman.jpg" width="20" height="20" style="border-radius: 50%;">
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
</body>
</html>