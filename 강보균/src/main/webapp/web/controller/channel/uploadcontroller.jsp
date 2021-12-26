<%@page import="dao.VideoDAO"%>
<%@page import="dto.Video"%>
<%@page import="java.io.FileReader"%>
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
	<%@ include file = "../../view/sidebar.jsp" %>
	<%
		//String path = "C:/Users/강보균/git/youtube-jsp/강보균/src/main/webapp/web/upload";
		String path = request.getSession().getServletContext().getRealPath("web/upload");
		MultipartRequest mr = new MultipartRequest(request, path, 1024*1024*1024, "UTF-8", new DefaultFileRenamePolicy());	
		
		String title = mr.getParameter("title");
		String contents = mr.getParameter("contents");
		String beforename = mr.getFilesystemName("file");
		String beforethumbnail = mr.getFilesystemName("thumbnail");
		
		int m_no = MemberDao.getMemberDao().getmemberno(loginid);

		String name = beforename + "_" + m_no;
		String thumbnail = beforethumbnail + "_" + m_no;
		
		Video video = new Video(thumbnail, name, title, contents, m_no, path);
		boolean result = VideoDAO.getVideoDAO().insertVideo(video);
		
		if(result) {
			out.print("<script>alert('UploadSuccess')</script>");
			out.print("<script>location.href = '../../view/channel/newchannel.jsp'</script>");
		} else {
			out.print("<script>alert('UploadFailed')</script>");
			out.print("<script>location.href = '../../view/channel/upload.jsp'</script>");
		}
	%>
</body>
</html>