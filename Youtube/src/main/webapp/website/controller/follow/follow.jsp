<%@page import="dao.FollowDao"%>
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
int c_no = Integer.parseInt(request.getParameter("c_no"));
int m_no = Integer.parseInt(request.getParameter("m_no"));
boolean followcheck = FollowDao.getFollowDao().followcheck(c_no, m_no);
if (followcheck) {
	out.print("1");
} else {
	out.print("0");
}

%>
</body>
</html>