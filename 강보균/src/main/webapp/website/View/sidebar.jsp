<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel = "stylesheet" href = "/youtube-jsp/website/CSS/simple-sidebar.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="../CSS/simple-sidebar.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="sidebar fixed">
	    <span class="sidebar-brand" aria-hidden="true">
	        <a href="#" data-toggle="sidebar">
	        	<i class="glyphicon glyphicon-arrow-left" style="color: red;">◀</i>
	       	</a>
	       	<br>
	    </span>
	        <a href = "main.jsp" style="margin-left: 20px;"><img alt="" src="../IMG/로고.png"></a>
	    <ul class="sidebar-nav my-3">
	        <li class = "d-flex justify-content-end" style="font-size: 10px;">
	            <a href="main.jsp">
	               사용자ID
	            </a>
	        </li>
	        <li class = "my-2">
	        	<input type = "text" placeholder="Search" style="margin-left: 20px; margin-bottom: 5px; width: 11rem;" class = "form-control">
	        </li>
	        <li>
	            <a href="main.jsp">
	               <h4>홈</h4>
	            </a>
	        </li>
	        <li class = "my-2">
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-1">
	                <h4>구독</h4>
	            </a>
	        </li>
	        <li class = "my-2">
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-2">
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
			                    <a href="#" data-toggle="collapse" data-target="#menu-collapse-4">
			                    	<img alt="" src="">&emsp;image<span>&emsp;채널명</span><br>
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
	                	<a href = "footer1.jsp" data-toggle = "collapse" data-target = "#menu-collapse-5">
	                		<span>&emsp;개인정보처리방침</span><br>
	                	</a>
	                	<a href = "footer2.jsp" data-toggle = "collapse" data-target = "#menu-collapse-5">
		                	<span>&emsp;약관</span><br>
	                	</a>
	                	<a href = "footer3.jsp" data-toggle = "collapse" data-target = "#menu-collapse-5">
		                	<span>&emsp;정보</span><br>
	                	</a>
	                	<a href = "footer4.jsp" data-toggle = "collapse" data-target = "#menu-collapse-5">
		                	<span>&emsp;위치</span>
	                	</a>
	                </li>
                </ul>
			</li>
	    </ul>
	</div>
	<div class="container">
	    <a href="main.jsp" class="btn btn-default" data-toggle="sidebar" style="width: 100%;">
	        <img alt="" src="../IMG/메인로고.png">
	    </a>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="../JS/simple-sidebar.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   <script src = "/youtube-jsp/website/JS/simple-sidebar.js"></script>
</body>
</html>