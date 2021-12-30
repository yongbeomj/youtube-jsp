<%@page import="dto.Reply"%>
<%@page import="dao.ReplyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String r_contents = request.getParameter("replytext2");
int r_no = Integer.parseInt(request.getParameter("r_no"));
System.out.print("r_no : " + r_no);
System.out.print("r_contents : " + r_contents);
Reply reply = new Reply(r_no, r_contents);
boolean rs = ReplyDao.getReplyDao().replyupdate(r_contents,r_no);
if(rs){
	out.print(1);
}else{
	out.print(0);
}
%>