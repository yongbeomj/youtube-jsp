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
		request.setCharacterEncoding("UTF-8");
		String path = request.getSession().getServletContext().getRealPath("website/UploadTest");
		System.out.println(path);
		
		MultipartRequest mr = new MultipartRequest(request, path, 1073741824 , "UTF-8", new DefaultFileRenamePolicy());
		String id = mr.getParameter("id");
		String name = mr.getParameter("name");
		String file = mr.getFilesystemName("file");
		out.print("id : " + id);
		out.print("name : " + name);
		out.print("file : " + file);
	%>
</body>
</html>