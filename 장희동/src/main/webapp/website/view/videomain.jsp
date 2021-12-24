<%@page import="java.util.ArrayList"%>
<%@page import="dao.ReplyDao"%>
<%@page import="dto.Reply"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/clipview.css">
</head>
<body>
	<%@include file="header.jsp"%>

	<%
		
		int v_no = 1; 
		//Integer.parseInt(request.getParameter("v_no"));
		ArrayList <Reply> replies2 = ReplyDao.getReplyDao().replies(1);
										
		System.out.print(String.valueOf(replies2));
		
		
	%>
	
	<div style="background-color: white;">
		<div class="row m-0">
			<div class="col-md-10 p-0" style="overflow-y: auto; margin: 0 auto;">
				<div class="row m-0">
					<!-- 메인-->

						<div class="col-md-8 my-5" style="margin-top: 20px; padding-top: 10px;">
							<!-- 비디오 플레이어 있는 곳 -->
							<div class="row">
									<video style="border-radius: 10px;" controls="controls" width="100%">
										<!-- 영상 자체에 소리가 없음 -->
										<source src="../clip/Seoul.mp4">
									</video>
								
							</div>
							<!-- 비디오 상세정보 -->
							<div class="col-md-12 mt-3" style="font-size: 2rem;">영상 제목</div>
							<div class="mainclip col-md-12 d-flex justify-content:space-between py-1" style="border-bottom: 1px solid #cccccc;">
								<div class="col-md-5  pl-0">
									<span>조회수</span>
									<span>·</span>
									<span>날짜</span>
								</div>
							</div>
							<div class="col-md-12 mainclip d-flex justify-content:space-between pt-2 py-3">
								<div  class="col-md-12">
									<div class="row">
										<div>
											<a  href="#"><img src="../img/woman.jpg" width="48px" height="48px" style="border-radius: 50%;"></a>
										</div>
										<div class="col-md-5 pr-1">
											<a href="#">aaa</a><br>
											<span>구독자 : 1202만명</span>
										</div>	
										<div class="col-md-2 pl-0 pr-0">
											<a href="#" class="pt-1"><button class="btn btn-outline-dark">팔로우</button></a>
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

						<div class="col-md-4" style="margin-top: 50px;">
							<!-- 댓글 -->
							<div style=" margin: 0 auto; height: 1000px;" >
								<div >
									<div id=replylist style="overflow-y: auto; height:700px;" >
										<%
											for (int i = 0; i<replies2.size(); i++) {
												System.out.print(replies2.size());
										%>
											<section>
											<div class="col-md-12 d-flex justify-content-start mt-1 row">
												<a href="Main.jsp" class="col-md-1 px-0"><img src="../img/woman.jpg" class="col-md-12 p-0"  style="width: 40px; height: 40px; border-radius: 50%;"></a>
												<div class="col-md-11 pl-2 mr-0">
													<a  href="#"><%=replies2.get(i).getC_name() %></a>
													<div class="pl-0 my-2"><%=replies2.get(i).getR_contents() %></div>
												</div>
											</div>
											</section>
										<%	} %>
									</div>
								</div>
								<!-- 댓글 쓰기 -->
								<div class="mt-2">
									<div class="col-md-5 d-flex flex-direction:row">
										<div style="font-size: 1.2rem;">댓글 <span>538</span>개 </div>
									</div>
									<div class="col-md-12 d-flex justify-content:end py-2">
										<a  href="#"><img src="../img/woman.jpg" width="40" height="40" style="border-radius: 50%;"></a>
										<textarea name="replytext" placeholder="공개 댓글 추가" class=" form-control ml-3"></textarea>
									</div>
									<div class="col-md-12 d-flex justify-content-end py-2">
										<div class="row">
											<button class="btn btn-dark mr-3" onclick="replyreg();">등록</button>
											<button class="btn btn-light" id="replycancel">취소</button>
										</div>
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
								
						        for (int i = 0; i < 107; i++) {
						    	 %>
								<div class="col-md-2 pl-0 mb-4" style="border-radius: 15px;">
									<div>
										<a href="clipviewmain.jsp">
											<img src="../img/land.jpg"<%//v_thumbnail %> class="recommendclips" style="border-radius: 15px; width: 100%;">
										</a>
									</div>
									<div class="col-md-12 mt-2 pl-0 pr-0">
									    <h5><%//v_name %>영상 제목</h5>
									    <a  href="#">
											<img src="../img/woman.jpg" width="20" height="20" style="border-radius: 50%;">
										</a>
										<a  href="#">
											<span>채널명<%//c_name %></span>
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