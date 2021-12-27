<%@page import="dao.MemberDao"%>
<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
// 이전 비밀번호
String pw = request.getParameter("password");
System.out.println("pw : "+pw);
// 로그인된 아이디[세션]
Login Login = (Login) session.getAttribute("login");
String id = Login.getM_id();
System.out.println("id : "+id);
int m_no = MemberDao.getMemberDao().getmemberno(id);
System.out.println("no : "+m_no);
// 신규 비밀번호
String newpw = request.getParameter("inputpw");
System.out.println("newpw : "+newpw);
String newpwconfirm = request.getParameter("inputpwconfirm");
System.out.println("newpwconfirm : "+newpwconfirm);
// 현재 세션에 있는 로그인 정보와 패스워드가 동일하면
boolean result = MemberDao.getMemberDao().checkidpw(id, pw);
boolean updateresult = MemberDao.getMemberDao().update(pw, newpw, m_no);

if (result) {
	if (updateresult){
		out.print("1");	
	} else {
		out.print("0");	
	}
} else {
	out.print("0");
}
%>