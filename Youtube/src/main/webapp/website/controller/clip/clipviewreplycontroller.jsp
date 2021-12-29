<%@page import="dto.Reply"%>
<%@page import="dao.ReplyDao"%>
<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String r_contents = request.getParameter("r_contents");
System.out.println("r_contents : " + r_contents);
Login login = (Login)session.getAttribute("login");
//System.out.println(login);

// 댓글 다는 사람(로그인한 사람)
int m_no = login.getM_no();
System.out.println("m_no1 : " + m_no);
//int m_no = 1;
// 비디오 no
int v_no = Integer.parseInt(request.getParameter("v_no"));
System.out.println("v_no1 : " + v_no);

// 비디오 업로드한 유저
int m_nofr = ReplyDao.getReplyDao().findm_no(v_no);
System.out.println("m_nofr1 : " + m_nofr);

// 비디오 업로드한 유저 채널
int c_no = ReplyDao.getReplyDao().findc_no(m_nofr);
System.out.println("c_no1 : " + c_no);



Reply reply = new Reply(m_nofr, v_no, c_no, r_contents);
boolean rs = ReplyDao.getReplyDao().replywrite(reply);
System.out.println("rs" + rs);
if(rs){
	out.print(1);
}else{
	out.print(0);
}

%>