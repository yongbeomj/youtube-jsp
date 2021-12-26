<%@page import="dao.MemberDao"%>
<%@page import="dto.Member"%>
<%@page import="dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 부트스트랩css 설정 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
	<!-- 본인 css 호출 -->
	<link rel="stylesheet" href="/최병호/website/css/main.css">
</head>
<body>
	
	<!-- jquery -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	
	<!-- google CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	
	<!-- 부트스트랩 js 설정 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	<!-- 본인 js 호출 -->
	<script src="/최병호/website/js/main.js"></script>
	
	<%
		Login login = (Login)session.getAttribute("login");
		String loginid = null;
		if (login != null) { // 세션 있을경우 (로그인)
			loginid = login.getM_id(); // 아이디 반환
		}
		Member member = MemberDao.getMemberDao().getmember(loginid);
	%>

	<div class="sidebar fixed">
	    <span class="sidebar-brand" aria-hidden="true">
	        <a href="#" data-toggle="sidebar">
	        	<i class="glyphicon glyphicon-arrow-left" style="color: red;">◀</i>
	       	</a>
	       	<br>
	    </span>
	        <a href = "main.jsp" style="margin-left: 20px;"><img alt="" src="../img/로고.png"></a>
	    <ul class="sidebar-nav my-3">
	    	<%
	    		if (loginid != null){
	    	%>
	    	<li class = "d-flex justify-content-end" style="font-size: 13px;">
	        	<a href="member/memberinfo.jsp">
	               <span><%=loginid %>님</span>
	            </a>
	            <a href="../controller/member/logoutcontroller.jsp"></a>
	               <span>로그아웃</span>
	        </li>
	    	<%		
	    		} else {
	    	%>		
	    	<li class = "d-flex justify-content-end" style="font-size: 13px;">
	            <a href="member/login.jsp">
	               <span>로그인</span>
	            </a>
	        </li>	
	    	<%	
	    		}
	    	%>
	        
	        <li class = "my-2">
	        	<input type = "text" placeholder="Search" style="margin-left: 20px; margin-bottom: 5px; width: 11rem;" class = "form-control">
	        </li>
	        <li>
	            <a href="/최병호/website/view/main.jsp">
	               <h4>홈</h4>
	            </a>
	        </li>
	        <li class = "my-2">
	            <a href="/최병호/website/view/channel/newchannel.jsp">
	                <h4>내 채널</h4>
	            </a>
	        </li>
	        <li class = "my-2">
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-1">
	            </a>
	            <a href = "#">
	                <h4>구독</h4>
	            </a>
	        </li>
	        <li class = "my-2">
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-2">
	            </a>
	            <a href = "#">
	                <h4>보관함</h4>
	            </a>
	            <ul id="menu-collapse-2" class="collapse"> <!-- class="collapse in" : 콜랩스가 펼쳐진 상태 -->
	                <li>
	                    <a href="javascript:void(0)">
	                        &emsp;&emsp;시청기록
	                    </a>
	                </li>
	                <li>
	                    <a href="javascript:void(0)">
	                        &emsp;&emsp;나중에 볼 영상
	                    </a>
	                </li>
	                <li>
	                    <a href="javascript:void(0)">
	                        &emsp;&emsp;재생목록
	                    </a>
	                </li>
	            </ul>
	        </li>
	        <li class = "my-2">
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-3">
	                <h4>구독채널</h4>
	            </a>
	            <ul id="menu-collapse-3" class="collapse">
	                <li>
	                   	<%
	                   		for(int i = 0; i < 13; i++){
	                   	%>
		                    	<a href = "#">
			                    	<img alt="" src="">&emsp;image
			                    	<span>&emsp;채널명</span><br>
		                    	</a>
	                   	<%	
	                   		}
	                   	%>
	               </li>
	            </ul>
	        </li>
	        <li>
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-5">
	            	<h4>▼</h4>
	            </a>
                <ul id = "menu-collapse-5" class = "collapse">
                	<li>
	                	<a href = "footer1.jsp">
	                		<span>&emsp;개인정보처리방침</span><br>
	                	</a>
	                	<a href = "footer2.jsp">
		                	<span>&emsp;약관</span><br>
	                	</a>
	                	<a href = "footer3.jsp">
		                	<span>&emsp;정보</span><br>
	                	</a>
	                	<a href = "footer4.jsp">
		                	<span>&emsp;위치</span>
	                	</a>
	                </li>
                </ul>
			</li>
	    </ul>
	</div>
	<div class="container">
	    <a href="main.jsp" class="btn btn-default" data-toggle="sidebar" style="width: 100%;">
	        <img alt="" src="../img/메인로고.png">
	    </a>
	</div>
	
</body>
</html>