<%@page import="dao.MemberDao"%>
<%@page import="dto.Login"%>
<%@page import="dto.Member"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String folderpath = "C:/Users/ez201209/git/youtube-jsp/Youtube/src/main/webapp/website/upload";
	MultipartRequest multi = new MultipartRequest(request, folderpath, 1024 * 1024 * 10, "UTF-8",
			new DefaultFileRenamePolicy());

	Login Login = (Login) session.getAttribute("login");
	String id = Login.getM_id();

	String newimg = multi.getFilesystemName("file");

	if (newimg != null) {
		MemberDao.getMemberDao().update("m_image", newimg, id);
		response.sendRedirect("../../view/member/memberinfo.jsp");
	} else {
		out.print("<script>alert('프로필 변경 실패');</script>");
		out.println("<script>location.href='../../view/member/memberinfo.jsp';</script>");
	}
	%>
</body>
</html>