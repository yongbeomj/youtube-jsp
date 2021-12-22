<%@page import="dao.MemberDao"%>
<%@page import="dto.Member"%>
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
	String pw = request.getParameter("pw");
	String pwconfirm = request.getParameter("pwconfirm");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String phone = request.getParameter("phone");

	Member member = new Member (id, pw, name, birth, phone);
	boolean result = MemberDao.getMemberDao().signup(member);
	if (result) {
		System.out.println("회원가입 성공");
		response.sendRedirect("../../view/member/login.jsp");
	} else {
		System.out.println("회원가입 실패");
		response.sendRedirect("../../view/member/signup.jsp");
	}
	

%>
</body>
</html>