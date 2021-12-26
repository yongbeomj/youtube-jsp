<%@page import="dto.Reply"%>
<%@page import="dao.ReplyDao"%>
<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String r_contents = request.getParameter("r_contents");
//System.out.println(r_contents);
Login login = (Login)session.getAttribute("login");
//System.out.println(login);
//int m_no = login.getM_no();
int m_no = 1;
//System.out.println(m_no);
int v_no = Integer.parseInt(request.getParameter("v_no"));
//System.out.println(v_no);

Reply reply = new Reply(m_no, v_no, r_contents);
boolean rs = ReplyDao.getReplyDao().replywrite(reply);

if(rs){
	out.print(1);
}else{
	out.print(0);
}

%>