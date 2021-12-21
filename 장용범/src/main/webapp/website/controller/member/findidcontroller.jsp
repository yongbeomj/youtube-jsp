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
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	
	String result = MemberDao.getMemberDao().findid(name, phone);
	System.out.println("ID : " + result);
	if (result != null) {
		System.out.println("ID : " + result);
		response.sendRedirect("../../view/member/login.jsp");
	} else {
		System.out.println("일치하는 정보가 존재하지 않습니다");
		response.sendRedirect("../../view/member/findid.jsp");
	}

%>
</body>
</html>