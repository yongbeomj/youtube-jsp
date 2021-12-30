<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// 로그인된 아이디[ 세션 ]
Login Login = (Login) session.getAttribute("login");
String id = Login.getM_id();
// ajax로부터 요청한 변수	
String newname = request.getParameter("newname");
//System.out.println("newname : " + newname);
String newbirth = request.getParameter("newbirth");
//System.out.println("newbirth : " + newbirth);
String newphone = request.getParameter("newphone");
//System.out.println("newphone : " + newphone);
String pw = request.getParameter("password");
//System.out.println("pw : " + pw);
String pwj = MemberDao.getMemberDao().getmember(id).getM_pw();
String newpw = request.getParameter("newpw");
//System.out.println("newpw : " + newpw);
String newpwconfirm = request.getParameter("newpwconfirm");
//System.out.println("newpwconfirm : " + newpwconfirm);

// name db 저장
if (newname != null) {
	if (MemberDao.getMemberDao().update("m_name", newname, id)) {
		out.print("1");
	} else {
		out.print("0");
	}
}

// birth db 저장
if (newbirth != null) {
	if (MemberDao.getMemberDao().update("m_birth", newbirth, id)) {
		out.print("1");
	} else {
		out.print("0");
	}
}

// phone db 저장
if (newphone != null) {
	if (MemberDao.getMemberDao().update("m_phone", newphone, id)) {
		out.print("1");
	} else {
		out.print("0");
	}
}

// password db 저장
if (newpw != null && newpw.equals(newpwconfirm)) {
	if (MemberDao.getMemberDao().update("m_pw", newpw, id)) {
		out.print("1");
	} else {
		out.print("0");
	}
}
%>

