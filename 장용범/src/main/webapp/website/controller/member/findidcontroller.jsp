<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" id="findid">
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	System.out.println("name : " + name);
	String phone = request.getParameter("phone");
	System.out.println("phone : " + phone);
	String result = MemberDao.getMemberDao().findid(name, phone);
	System.out.println("result : " + result);
	if (result != null) {
		out.print("1");
		System.out.println("성공");
	} else {
		out.print("0");
		System.out.println("실패");
	}
	%>

</body>
</html>