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

String folderpath = "C:/Users/ez201209/git/youtube-jsp/장용범/src/main/webapp/website/upload";
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

Member member = null;
if (image != null) {
	member = new Member(id, pw, name, birth, phone, image);	
} else {
	member = new Member(id, pw, name, birth, phone, "profile.jpg");
}
// 프로필사진 선택

boolean result = MemberDao.getMemberDao().signup(member);

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