<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userid = request.getParameter("userid");
	boolean result = MemberDao.getMemberDao().idcheck(userid);
	if(result) {
		out.print("1");
	} else {
		out.print("0");
	}

%>
