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
		String id = request.getParameter("id");
		if(id.equals("null")) {
			response.sendRedirect("../../view/member/login.jsp");
		} else {
			response.sendRedirect("../../view/channel/newchannel.jsp");
		}
	%>
</body>
</html>