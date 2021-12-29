<%@page import="dao.ChannelDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ChannelBoardDao"%>
<%@page import="dto.ChannelBoard"%>
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
	<!-- 게시물 업로드 화면 -->
	
	<!-- 아 -->
	<div  class = "col-md-2">
		
		<%@include file="../sidebar.jsp"%>

	</div>
	<%	
		// request를 통해 channelboard에서 누른 cb_no값을 찾아야됨  
		//int cb_no = request.getParameter("cb_no");
		// cb_no를 가지고와서 해당 cb_no의 게시물을 업데이트 시킬거임 (즉 이건 수정이다 이 말씀이지)
		int m_no = MemberDao.getMemberDao().getmemberno(loginid);
		System.out.println(m_no);
		int c_no = ChannelDao.getChannelDAO().getChannelNo(m_no);
		
		// 단순히 게시물을 등록하기 위해서는 c_no를 우선적으로 알아야하고 그다음으로 c_no를 통해 cb_no를 계속 늘려야 게시물 증가임 
		ArrayList<ChannelBoard> channelboards = ChannelBoardDao.getChannelBoardDao().channelBoardList(c_no);
		System.out.println(c_no);
		
	
	%>
	<div class = "container" style ="margin-top: 100px;  ">
		<form action="../../controller/channel/channelboardwritecontroller.jsp" method ="post" enctype = "multipart/form-data">
			<div class = "card col" >
				<div class = "card-body" >
					
					<h4 style ="font-weight: bold;">채널 게시물 작성</h4>	
					<h6>채널 게시물 게시</h6>
					<br>
					<div class ="row">
						<div class ="col-sm2 offset-xs-2" style ="width : 256px; height: 454px; border-radius: 5%; border: dotted 2px;">
						<br><br><br>
								<div class="d-flex justify-content-center">
									<img src="../../img/land3.png" alt="" style = "width : 30px; height: 30px;" >
								</div>
								<br>
								<div class="d-flex justify-content-center">
									
									<span>업로드 할 이미지 선택</span>
								</div>
								
								<br>
								<div class = "d-flex justify-content-center">
									<span style ="font-size: 3px;">PNG 또는 JPG</span>
								</div>
								<div class = "d-flex justify-content-center">
									<span style ="font-size: 3px;">720x1280 해상도 이상</span>
								</div>
								<br>
								
								<!-- 게시물 이미지 파일 첨부 -->
								<input id="cb_image" name="cb_image" class ="form-control" type = "file" style ="" > 
						</div>
						<div class ="offset-md-2 col-md-7">
							
							
							<label >제목</label> 
							<input id = "cb_title" name="cb_title" type="text" class="form-control" placeholder = "채널 이름" > 
							<br>
							<label >내용</label> 
							<textarea id = "cb_contents" name="cb_contents" class="form-control" >  </textarea>
							<br><br><br><br><br><br><br>
							
							<button type ="submit" class ="btn btn-danger">게시</button>
							<a href = "../../view/channel/newchannel3.jsp"> <button type ="button" class ="btn btn-danger">취소</button></a>
						</div>
						
					</div>
					
					
				</div>
			</div>
			</form>
		
	</div>
</body>
</html>