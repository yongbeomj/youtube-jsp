<%@page import="dao.ChannelDao"%>
<%@page import="dto.Login"%>
<%@page import="dto.Channel"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.Member"%>
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
String c_name = multi.getParameter("c_name");
String c_presentation = multi.getParameter("c_presentation");
String c_info = multi.getParameter("c_info");
String image = multi.getFilesystemName("c_image");

c_presentation = c_presentation.replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
c_info = c_info.replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>");
c_info = c_info.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\S)*(/)?","");

// 첨부파일이 없을경우 이전에 존재했던 파일을 전달
if( image == null ){
	image = multi.getParameter("oldfile");
}

// 프로필사진 선택
Channel channel = new Channel(c_name,image, c_info, c_presentation);
Login login = (Login)session.getAttribute("login");  // 세션 저장 아이디 가져오기
int m_no = MemberDao.getMemberDao().getmemberno(login.getM_id()); // 저장 아이디를 통해 멤버 no 호출 
System.out.println(m_no);
boolean result = ChannelDao.getChannelDAO().infoChannelUpdate(channel, m_no);

if (result) {
	System.out.println("내 채널 정보수정 성공");
	out.print("<script> alert('채널 정보가 수정 되었습니다') </script>");
	response.sendRedirect("../../view/channel/newchannel4.jsp");
} else {
	System.out.println("내 채널 정보수정 실패");
	out.print("<script> alert('채널 정보가 수정 실패(관리자 문의)') </script>");
	response.sendRedirect("../../view/channel/upload3.jsp");
}
%>
</body>
</html>