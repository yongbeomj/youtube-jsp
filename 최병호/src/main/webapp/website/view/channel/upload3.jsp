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
	<!-- 정보 수정 및 업로드 -->
	
	<div class = "col-md-2">
		<%@include file="../sidebar.jsp"%>

	</div>
	<%	
		int m_no = MemberDao.getMemberDao().getmemberno(loginid);
		System.out.println(m_no);
		Channel channel = ChannelDAO.getChannelDAO().getChannelinfo(m_no);
		System.out.println(channel.getC_name());
	%>
	<div class = "container" style ="margin-top: 100px;  ">
			<form action="../../controller/channel/channelinfocontroller.jsp" method ="post" enctype = "multipart/form-data">
			<div class = "card col" >
				<div class = "card-body" >
					
					<h4 style ="font-weight: bold;">채널 정보 작성</h4>	
					<h6>채널 정보 게시</h6>
					<br>
					<div class ="row">
						<div class ="col-sm2 offset-xs-2" style ="width : 256px; height: 454px; border-radius: 5%; border: dotted 2px;">
						<br><br><br>
								<div class="d-flex justify-content-center">
									<img src="../../img/land3.png" alt="" style = "width : 30px; height: 30px;" >
								</div>
								<br>
								<div class="d-flex justify-content-center">
									
									<span> 업로드 할 채널 배경 이미지 선택</span>
								</div>
								
								<br>
								<div class = "d-flex justify-content-center">
									<span style ="font-size: 3px;">PNG 또는 JPG</span>
								</div>
								<div class = "d-flex justify-content-center">
									<span style ="font-size: 3px;">720x1280 해상도 이상</span>
								</div>
								<br>
								<!-- 이전 이미지 파일 받는 태그 -->
								<input type = "hidden" name="oldfile" value = "<%=channel.getC_image() %>" >
								
								<!-- 이미지 파일 첨부 -->
								<input id="c_image" name="c_image" class ="form-control" type = "file" style ="" > *<%=channel.getC_image() %>
								
						</div>
						
							<div class ="offset-md-2 col-md-7">
								
									<label>	채널 이름 </label>
									<input id = "c_name" name="c_name" type="text" class="form-control" placeholder = "채널 이름" value = "<%=channel.getC_name() %>"> 
									<br>
									<label >자기소개</label> 
									<input id = "c_presentation" name="c_presentation" type="text" class="form-control" placeholder = "채널 자기 소개" value = "<%=channel.getC_present()%>">
									<br>
									<label >설명</label> 
									<textarea id = "c_info" name="c_info" class="form-control" > <%=channel.getC_info() %> </textarea>
									<br><br><br><br><br><br><br>
									
									<button type ="submit" class ="btn btn-danger">게시</button>
									<a href = "../../view/channel/newchannel4.jsp"> <button type ="button" class ="btn btn-danger">취소</button></a>
								
							</div>
						
					</div>
					
					
				</div>
			</div>
			</form>
		
	</div>
</body>
</html>