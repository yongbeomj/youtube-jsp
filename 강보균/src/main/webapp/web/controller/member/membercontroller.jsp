<%@page import="dao.MemberDao"%>
<%@page import="dto.Login"%>
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
	
	String password = request.getParameter("password");	

	// 로그인된 아이디[세션]
	Login Login = (Login)session.getAttribute("login");		
	String id = Login.getM_id();
	
	// 현재 세션에 있는 로그인 정보와 패스워드가 동일하면
	boolean result = MemberDao.getMemberDao().delete( id , password);
	if( result ){ out.print("1"); }
	else{ out.print("0"); }
	
%>

</body>
</html>