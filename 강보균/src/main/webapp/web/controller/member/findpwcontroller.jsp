<%@page import="dao.MemberDao"%>
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
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	
	String result = MemberDao.getMemberDao().findpw(id, name, phone);
	if (result != null) {
		out.print("<script>alert('비밀번호 : "+result+"');</script>");
		out.println("<script>location.href='../../view/member/login.jsp';</script>");
	} else {
		response.sendRedirect("../../view/member/findpw.jsp");
	}
%>
</body>
</html>