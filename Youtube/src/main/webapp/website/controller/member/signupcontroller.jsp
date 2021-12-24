<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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

String folderpath = "C:/Users/ez201206/git/youtube-jsp/강보균/src/main/webapp/web/upload";
MultipartRequest multi = new MultipartRequest(request, folderpath, 1024 * 1024 * 10, "UTF-8",
		new DefaultFileRenamePolicy());

request.setCharacterEncoding("UTF-8");
String id = multi.getParameter("id");
String pw = multi.getParameter("pw");
String pwconfirm = multi.getParameter("pwconfirm");
String name = multi.getParameter("name");
String birth = multi.getParameter("birth");
String phone = multi.getParameter("phone");
String image = multi.getFilesystemName("file");
// 프로필사진 선택
Member member = new Member(id, pw, name, birth, phone, image);
boolean result = MemberDao.getMemberDao().imgsignup(member);

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