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
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	System.out.println("name : " + name);
	String phone = request.getParameter("phone");
	System.out.println("phone : " + phone);
	String result = MemberDao.getMemberDao().findid(name, phone);
	System.out.println("result : " + result);
	if (result != null) {
		out.print("<script>alert('아이디 : "+result+"');</script>");
		out.println("<script>location.href='../../view/member/login.jsp';</script>");
	} else {
		response.sendRedirect("../../view/member/findid.jsp");
	}
	%>

</body>
</html>