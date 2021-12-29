<%@page import="dao.ChannelDao"%>
<%@page import="dto.Member"%>
<%@page import="dao.ChannelBoardDao"%>
<%@page import="dto.ChannelBoard"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Channel"%>
<%@page import="dto.Login"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Login login = (Login)session.getAttribute("login");
	String loginid = null;
	if (login != null) { // 세션 있을경우 (로그인)
		loginid = login.getM_id(); // 아이디 반환
	}
%>
<%	
	int m_no = MemberDao.getMemberDao().getmemberno(loginid);
	Channel channel = ChannelDao.getChannelDAO().getChannelinfo(m_no);
	int c_no = ChannelDao.getChannelDAO().getChannelNo(m_no);
	ArrayList<ChannelBoard> channelboards = ChannelBoardDao.getChannelBoardDao().channelBoardList(c_no);
%>
<% int item =  Integer.parseInt( request.getParameter("item") ); // ajax 변수 요청  
	System.out.println(item + "item값");
%>
<% for( int i = item ; i<item+1; i++ ){ %>
<%-- <%
for(ChannelBoard channelBoard : channelboards){
%> --%>
<%for(int j =0; j<channelboards.size(); j++  ) {%>
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
				<%=channelboards.get(j).getCb_contents() %>
			</p>
		</div>
	</div>
	
		<div class ="pr-2 float-right" style = "">
		<a href="../channel/upload2update.jsp?cb_no=<%=channelboards.get(j).getCb_no()%>"> <button type="button" class="btn btn-danger">수정</button> </a>
		</div>
		<div class ="">
		<a href="../../controller/channel/channelboarddeletecontroller.jsp?cb_no=<%=channelboards.get(j).getCb_no()%>"> <button type="button" class="btn btn-danger">삭제</button> </a>
		</div>
	
</div>
<!-- 커뮤니티 채널명 및 내용 작성 end -->
<!-- 커뮤니티 사진 게시 -->
	<div class = "d-flex pl-4 pr-2">
		<a href="clipviewmain.jsp"> <img src="../../upload/<%=channelboards.get(j).getCb_image()%>"
			class="recommendclips"
			style="border-radius: 15px; width: 800px; height : 400px;"  />
		</a>
	</div><br>
<!-- 커뮤니티 사진 게시 end -->
<%
}
%>
<% } %>
								