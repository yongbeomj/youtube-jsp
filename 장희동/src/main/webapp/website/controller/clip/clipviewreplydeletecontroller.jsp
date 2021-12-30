<%@page import="dao.ReplyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int r_no = Integer.parseInt(request.getParameter("r_no"));
//System.out.println("r_no :"+r_no);
boolean rs = ReplyDao.getReplyDao().replydelete(r_no);
if(rs){
	out.print(1);
}else{
	out.print(0);
}

%>