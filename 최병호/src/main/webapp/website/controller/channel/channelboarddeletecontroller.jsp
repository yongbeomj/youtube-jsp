<%@page import="dao.ChannelBoardDao"%>
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
		int cb_no = Integer.parseInt(request.getParameter("cb_no")); 
		
		boolean result = ChannelBoardDao.getChannelBoardDao().channelBoardDelete(cb_no);
		
		if(result){
			System.out.println("내 채널 게시물삭제 성공");
			out.print("<script> alert('채널 게시물이 삭제되었습니다.') </script>");
			response.sendRedirect("../../view/channel/newchannel3.jsp");
		}else {
			System.out.println("내 채널 게시물삭제 실패");
			out.print("<script> alert('채널 게시물이 삭제실패(관리자 문의)') </script>");
			response.sendRedirect("../../view/channel/newchannel3.jsp");
		}
		
		
	%>
</body>
</html>