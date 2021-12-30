<%@page import="dao.FollowDao"%>
<%@page import="dao.ChannelDao"%>
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
	<style type="text/css">
	</style>
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
			
			//System.out.println("m_no11 : "+m_no);
			ArrayList<Reply> replies2;
			int v_no = Integer.parseInt(request.getParameter("v_no"));
			//System.out.println("clipviewmain v_no : " + v_no);
			replies2 = ReplyDao.getReplyDao().replies(v_no);
			//System.out.println("replies2.size() : " + replies2.size());
			
			Video video = VideoDao.getVideoDAO().getVideo(v_no);
			 int r_count = ReplyDao.getReplyDao().replycount(v_no);
			
			//System.out.println("비디오 넘버 : "+video.getM_no());
		/* 	for(Reply temp : replies2){
				System.out.println(temp.getR_contents());
			}
			 */
			ArrayList<Video> videos = VideoDao.getVideoDAO().getAllVideo();
			// System.out.println(thumb);
			
			
			String path = request.getSession().getServletContext().getRealPath("website/upload");
			//System.out.print("path : "+path);

			ArrayList<Video> videolist = VideoDao.getVideoDAO().getAllVideo();
			Collections.shuffle(videolist);
			System.out.println("1로그인세션: " + member.getM_id());
			System.out.println("1로그인세션2: " + login);
			%>

			<div class="col-md-10 p-0" style="overflow-y: auto; margin: 0 auto;">

				<input type="hidden" id="ii" value="0">
				<div class="row m-0">
					<!-- 메인-->

					<div class="col-md-8 my-5" style="margin-top: 20px; padding-top: 10px;">
						<!-- 비디오 플레이어 있는 곳 -->
						<div class="ml-2 row">
							<video style="border-radius: 10px;" controls="controls" width="100%" autoplay="autoplay">
								<!-- 영상 자체에 소리가 없음 -->
								<source src="../upload/<%= video.getV_name().split("_")[0] %>">
							</video>

						</div>
						<!-- 비디오 상세정보 시작 -->
						<!-- 영상 제목 -->
						<div class="col-md-12 mt-3" style="font-size: 2rem;"><%=video.getV_title() %></div>
						<div class="mainclip col-md-12 d-flex justify-content:space-between py-1" style="border-bottom: 1px solid #cccccc;">
							<div class="col-md-5  pl-0">
								<!-- 조회수 날짜 -->
								<span>등록 날짜</span> <span>:</span> <span><%=video.getUpdatedate().split(" ")[0] %></span>
							</div>
						</div>
						<div class="col-md-12 mainclip d-flex justify-content:space-between pt-2 py-3">
							<div class="col-md-12">
								<div class="row">
									<!-- 영상 상세정보의 멤버 이미지(m_image), 구독자 수, 채널 명 -->
									<div>
										<!-- 메인 영상의 멤버 이미지(m_image) -->
										<a href="#"><img src="../upload/<%=ReplyDao.getReplyDao().findm_image(video.getM_no()) %>" width="48px" height="48px" style="border-radius: 50%;"></a>
									</div>
									<div class="col-md-9 pr-1 mr-3">
										<!-- 메인 영상의 채널명 -->
										<a href="#"><%=ChannelDao.getChannelDAO().getChannelName(video.getM_no()) %></a><br> <span>구독자 : 1202만명</span>
									</div>
									<!------------------- 팔로우 시작 --------------------------->
									<div class="col-md-2 pl-4 pr-0">
								
										
										<%
										System.out.println("로그인세션: " + login);
										System.out.println("로그인세션2: " + login);
										if(login != null){ //로그인 아이디가 존재하면
											System.out.println("로그인세션2: " + login);
											int m_no = MemberDao.getMemberDao().getmemberno(member.getM_id());
											int c_no = ChannelDao.getChannelDAO().getChannelNo(m_no);
											boolean f_check = FollowDao.getFollowDao().followcheck(c_no, m_no);
											
											int f_checkcount = FollowDao.getFollowDao().followerCount(c_no);
											int f_checkcount2 = FollowDao.getFollowDao().followingCount(m_no);
											if(f_check  == true){%>
															
												<button id="followbtn" class="btn btn-danger pt-1" onclick="c_follow2(<%=c_no%>,<%=m_no%>);" >팔로우 중</button>
											<%}else{%>
												<button id="followbtn" class="btn btn-outline-danger pt-1" onclick="c_follow2(<%=c_no%>,<%=m_no%>);" >팔로우</button>
											
											<%
											}
											%>
										<%
											//영상 좋아요 체크 메소드
											if (VideoDao.getVideoDAO().videolikecheck(v_no, m_no)) {
										%>
										
												<img id="videolike" class="ml-3" src="../img/heartfill.png" onclick="v_like(<%=v_no%>,<%=m_no%>);"
												style="height: 30px; width: 30px; cursor: pointer;">
											<%
											} else { //좋아요가 존재하지 않으면
											%>
												<img id="videolike" class="ml-3" src="../img/heart.png" onclick="v_like(<%=v_no%>,<%=m_no%>);"
												style="height: 30px; width: 30px; cursor: pointer;">
											<%
											}
										}
										%> 
									</div>
									<!------------------- 팔로우 끝!--------------------------->
								</div>
							</div>
						</div>
						<div class="col-md-11 offset-1 pl-3">
							<div class="collpase navbar-collapse">
								<div class="navbar-nav">
									<!-- 기준식 써서 \n3 기준으로 자른다. -->
									<details class="nav-item">
										<summary>영상설명 펼치기</summary>
										<p><%=video.getV_detail() %></p>
									</details>
								</div>
							</div>
						</div>
						<hr>
					</div>
				
					<!------------------- 댓글 시작 --------------------------->
					<div class="col-md-4" style="margin-top: 50px;">
						<!-- <input class="form-control"> -->
						<div style="margin: 0 auto; height: 1000px;">
							<div id="replybox" class="mr-0" id=replylist style="overflow-y: auto; height: 700px;">
								<%
									
									replies2 = ReplyDao.getReplyDao().replies(v_no);
									//System.out.print("replies2.size() : " + count);
									for (int j =0; j<replies2.size(); j++) {
										//System.out.println("멤버넘버 : " + replies2.get(j).getM_no());
								%>
								
								<div class="col-md-12 d-flex justify-content-start ml-1 mt-1 mr-0 row">
								<!-- 댓글 창에서 로그인이 되어있고 회원 넘버가 영상의 회원넘버랑 같을 때 채널 이동-->
									<%if (login!=null && login.getM_no()==replies2.get(j).getM_no()) {%>
										<!-- 댓글창의 댓글 내용 (채널의 동그란 이미지(m_image) -->
										<a href="../view/channel/newchannel.jsp" class="col-md-1 px-0"> <img src="../upload/<%=ReplyDao.getReplyDao().findm_image(replies2.get(j).getM_no())%>" class="col-md-12 p-0"
											style="width: 40px; height: 40px; border-radius: 50%;">
										</a>
										<!-- 댓글창의 댓글 내용 (채널명, 댓글 내용) -->
										<div class="col-md-9 pl-2 mr-0">
										
											<a href="../view/channel/newchannel.jsp"><%=ChannelDao.getChannelDAO().getChannelName(replies2.get(j).getM_no())%></a>
											<div class="pl-0 my-2"><%=replies2.get(j).getR_contents()%></div>
										</div>
									<%}else if(login!=null && login.getM_no()!=replies2.get(j).getM_no()){%>
										<!-- 댓글창의 댓글 내용 (채널의 동그란 이미지(m_image) -->
										<a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(replies2.get(j).getM_no())%>" class="col-md-1 px-0"> <img src="../upload/<%=ReplyDao.getReplyDao().findm_image(replies2.get(j).getM_no())%>" class="col-md-12 p-0"
											style="width: 40px; height: 40px; border-radius: 50%;">
										</a>
										<!-- 댓글창의 댓글 내용 (채널명, 댓글 내용) -->
										<div class="col-md-9 pl-2 mr-0">
										
											<a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(replies2.get(j).getM_no())%>"><%=ChannelDao.getChannelDAO().getChannelName(replies2.get(j).getM_no())%></a>
											<div class="pl-0 my-2"><%=replies2.get(j).getR_contents()%></div>
										</div>
									<!-- 비회원 채널 이동 -->	
									<%}else{%>
										<!-- 댓글창의 댓글 내용 (채널의 동그란 이미지(m_image) -->
										<a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(replies2.get(j).getM_no())%>" class="col-md-1 px-0"> <img src="../upload/<%=ReplyDao.getReplyDao().findm_image(replies2.get(j).getM_no())%>" class="col-md-12 p-0"
											style="width: 40px; height: 40px; border-radius: 50%;">
										</a>
										<!-- 댓글창의 댓글 내용 (채널명, 댓글 내용) -->
										<div class="col-md-9 pl-2 mr-0">
										
											<a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(replies2.get(j).getM_no())%>"><%=ChannelDao.getChannelDAO().getChannelName(replies2.get(j).getM_no())%></a>
											<div class="pl-0 my-2"><%=replies2.get(j).getR_contents()%></div>
										</div>
									<%
									}
									%>
									 
									<%if (loginid != null && login.getM_no()==replies2.get(j).getM_no()){
									%>
										<!-- 댓글 삭제 취소 -->
											<div class="col-md-2 mt-3 d-flex justify-content-between px-1 row" style="color: #656461; cursor: pointer;">
												<a onclick="replydelete(<%=replies2.get(j).getR_no()%>);">삭제</a> <a id="replyupdatebtn<%=replies2.get(j).getR_no()%>" onclick="replyupdate(<%=replies2.get(j).getR_no()%>);">수정</a>
												<a id="replycancelbtn<%=replies2.get(j).getR_no()%>" style="display: none;">취소</a>
											</div>
											<div class="col-md-12 ml-4 row" id="updatereply<%=replies2.get(j).getR_no()%>" style="display: none;"></div>
									
									<% }  %>
									
								</div>
								<%
								}
								
								%>
							</div>
							<!-- 댓글 쓰기, 본인 댓글창 -->
							<div id="replydiv" class="mt-2">
								<div class="col-md-5 d-flex flex-direction:row">
									<div style="font-size: 1.2rem;">
										댓글 <span><%=r_count %></span>개
									</div>
								</div>
								<!-- 로그인 아이디가 값이 있으면 -->
								<%if (loginid != null) {%>
								<!------------------- 댓글 쓰기 시작 --------------------------->
								<div class="col-md-12 d-flex justify-content:end py-2">
									<a href="#"><img src="../upload/<%=member.getM_image()%>" width="40" height="40" style="border-radius: 50%;"></a>
									<textarea id="replytext" placeholder="공개 댓글 추가" class=" form-control ml-3" onchange="replywrite(<%=v_no%>);"></textarea>
								</div>
								<!------------------- 댓글 쓰기 끝 --------------------------->
								<!------------------- 댓글 등록 버튼 시작 --------------------------->
								<div class="col-md-12 d-flex justify-content-end py-2">
									
									<div class="row">
										<button id="btnreplywrite" class="btn btn-dark mr-3">등록</button>
										<button class="btn btn-light" id="replycancel">취소</button>
									</div>
								</div>
								<!------------------- 댓글 등록 버튼 끝--------------------------->
								<%} %>
							</div>
							<!------------------- 댓글 쓰기 끝 --------------------------->
						</div>
					</div>
					<!------------------- 댓글 끝 --------------------------->
					<!------------------- 추천 영상 시작 --------------------------->
					<div class="col-md-12">
						<!-- 추천 영상 목록 -->
						<div id="recommend" class="col-md-12 pr-2 pd-2 pl-0 mt-3">
							<div class="row col-md-12 m-0 ">
								<%
								
								for (int i =0; i<videolist.size(); i++) {
								%>
								<div class="col-md-2 pl-0 mb-4" style="border-radius: 15px;">
									<div>
										<!-- 추천 영상 썸네일 -->
										<a href="clipviewmain.jsp?v_no=<%=videolist.get(i).getV_no()%>"> <img src="../upload/<%=videolist.get(i).getV_thumbnail().split("_")[0] %>" class="recommendclips"
											style="border-radius: 15px; width: 100%; height: 100%; max-width: 256px; max-height: 144px;">
										</a>
									</div>
									<div class="col-md-12 mt-2 pl-0 pr-0">
										<!-- 추천 영상 제목 -->
										<h5><%=videolist.get(i).getV_title()%></h5>
										<!-- 추천 영상 채널 이미지(m_image) -->
										<!-- 로그인이 되어있고 회원 넘버가 영상의 회원넘버랑 같을 때 채널 이동-->
										<%if (login!=null && login.getM_no()==videolist.get(i).getM_no()) {%>
											<a href="../view/channel/newchannel.jsp"> <img src="../upload/<%=ReplyDao.getReplyDao().findm_image(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no())) %>" width="20" height="20" style="border-radius: 50%;">
												<!-- 추천 영상 채널명 -->
											</a> <a href="../view/channel/newchannel.jsp"> <span><%=ChannelDao.getChannelDAO().getChannelName(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no())) %></span>
											</a>
										<!-- 로그인이 되어있고 회원 넘버가 영상의 회원넘버랑 같지 않을 때  채널 이동 -->
										<%}else if (login!=null && login.getM_no()!=videolist.get(i).getM_no()){ %>
											<a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no()))%>"> <img src="../upload/<%=ReplyDao.getReplyDao().findm_image(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no())) %>" width="20" height="20" style="border-radius: 50%;">
												<!-- 추천 영상 채널명 -->
											</a> <a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no()))%>"> <span><%=ChannelDao.getChannelDAO().getChannelName(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no())) %></span>
											</a>
										<!-- 비회원 채널 이동 -->	
										<%}else {%>
											<a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no()))%>"> <img src="../upload/<%=ReplyDao.getReplyDao().findm_image(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no())) %>" width="20" height="20" style="border-radius: 50%;">
												<!-- 추천 영상 채널명 -->
											</a> <a href="../view/channel/otherchannel.jsp?c_no=<%=ChannelDao.getChannelDAO().getChannelNo(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no()))%>"> <span><%=ChannelDao.getChannelDAO().getChannelName(VideoDao.getVideoDAO().getM_no(videolist.get(i).getV_no())) %></span>
											</a>
											
										<%}%>
									</div>
								</div>
								<%}%>
							</div>
						</div>
					</div>
					<!------------------- 추천 영상 끝 --------------------------->
				</div>
			</div>
		</div>
	</div>
</body>
</html>