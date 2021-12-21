<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");

	String result = MemberDao.getMemberDao().findid(name, phone);
	System.out.println("ID : " + result);
	if (result != null) {
		out.print(result);
		out.print("<script>alert('123');</script>");
		out.println("<script>location.href='../../view/member/login.jsp';</script>");

	} else {
		out.print("<script>alert('일치하는 정보가 존재하지 않습니다.');</script>");
		out.println("<script>location.href='../../view/member/findid.jsp';</script>");
	}
	%>
</body>
</html>