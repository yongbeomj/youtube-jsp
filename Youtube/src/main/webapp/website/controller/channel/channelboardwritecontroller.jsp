<%@page import="dao.ChannelDao"%>
<%@page import="dao.ChannelBoardDao"%>
<%@page import="dto.Channel"%>
<%@page import="dto.Login"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.ChannelBoard"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// String folderpath2 = request.getSession().getServletContext().getRealPath("");  // 서버 경로 설정 
String folderpath = "C:/Users/ez201209/git/youtube-jsp/Youtube/src/main/webapp/website/upload";
MultipartRequest multi = new MultipartRequest(request, folderpath, 1024 * 1024 * 10, "UTF-8",
		new DefaultFileRenamePolicy());

request.setCharacterEncoding("UTF-8");
String cb_title = multi.getParameter("cb_title");
String cb_contents = multi.getParameter("cb_contents");
String cb_image = multi.getFilesystemName("cb_image");

cb_title = cb_title.replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
cb_contents = cb_contents.replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
cb_contents = cb_contents.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\S)*(/)?","");


Login login = (Login)session.getAttribute("login");  // 세션 저장 아이디 가져오기
int m_no = MemberDao.getMemberDao().getmemberno(login.getM_id()); // 저장 아이디를 통해 멤버 no 호출 
System.out.println(m_no);
int c_no = ChannelDao.getChannelDAO().getChannelNo(m_no);
System.out.println(c_no);
ChannelBoard channelBoard = new ChannelBoard(c_no, cb_title,cb_contents, cb_image);
System.out.println(channelBoard);

// 해당 채널의 게시판 등록 
boolean result = ChannelBoardDao.getChannelBoardDao().channelBoardWrite(c_no, channelBoard);

if (result) {
	System.out.println("내 채널 게시물등록 성공");
	out.print("<script> alert('채널 게시물이 등록되었습니다.') </script>");
	response.sendRedirect("../../view/channel/newchannel3.jsp");
} else {
	System.out.println("내 채널 게시물등록 실패");
	out.print("<script> alert('채널 게시물이 등록실패(관리자 문의)') </script>");
	response.sendRedirect("../../view/channel/upload2.jsp");
}
%>
</body>
</html>