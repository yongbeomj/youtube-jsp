<%@page import="dao.VideoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int v_no = Integer.parseInt(request.getParameter("v_no"));
int m_no = Integer.parseInt(request.getParameter("m_no"));
System.out.print(v_no);
System.out.print(m_no);
/* out.print("v_no : " + v_no);
out.print("m_no : " + m_no); */
out.print(VideoDao.getVideoDAO().videolikeupdate(v_no, m_no));

%>