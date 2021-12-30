<%@page import="dao.FollowDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
int c_no = Integer.parseInt(request.getParameter("c_no"));
int m_no = Integer.parseInt(request.getParameter("m_no"));
//System.out.print(c_no +"??");
//System.out.print(m_no +"??");
/* out.print("v_no : " + v_no);
out.print("m_no : " + m_no); */
out.print(FollowDao.getFollowDao().followUpdate(c_no, m_no));

%>