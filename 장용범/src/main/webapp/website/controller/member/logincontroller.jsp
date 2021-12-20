<%@page import="dto.Login"%>
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

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	boolean result = MemberDao.getMemberDao().login(id, pw);
	if (result) {
		System.out.println("로그인 성공");
		// 세션 부여
		int m_no = MemberDao.getMemberDao().getmemberno(id);
		Login login = new Login(m_no, id);
		session.setAttribute("login", login);
		response.sendRedirect("../../view/main.jsp");
	} else {
		System.out.println("로그인 실패");
		response.sendRedirect("../../view/member/login.jsp?result=fail");
	}
			

%>
</body>
</html>