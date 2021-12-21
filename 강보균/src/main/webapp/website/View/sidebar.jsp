<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/simple-sidebar.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="sidebar">
	    <span class="sidebar-brand">
	        <a href="#" data-toggle="sidebar">
	        	<i class="glyphicon glyphicon-arrow-left" style="white;"></i>
	       	</a>
	       	<br/>
	        <a href = "main.jsp"><img alt="" src="../IMG/로고.png" style="width: 40%; float: left"></a>
	    </span>
	    <ul class="sidebar-nav">
	        <li>
	            <a href="main.jsp">
	               사용자ID
	            </a>
	        </li>
	        <li>
	            <a href="main.jsp">
	               <h4>홈</h4>
	            </a>
	        </li>
	        <li>
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-1">
	                <h4>구독</h4>
	            </a>
	        </li>
	        <li>
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
	        <li>
	            <a href="#" data-toggle="collapse" data-target="#menu-collapse-3">
	                <h4>구독채널</h4>
	            </a>
	            <ul id="menu-collapse-3" class="collapse">
	                <li>
	                   	<%
	                   		for(int i = 0; i < 13; i++){
	                   	%>
			                    <a href="#" data-toggle="collapse" data-target="#menu-collapse-4">
			                    	<img alt="" src="">image<span>&emsp;채널명</span><br>
			                    </a>
	                   	<%	
	                   		}
	                   	%>
	               </li>
	            </ul>
	        </li>
	    </ul>
	</div>
	
	<div class="container-fluid">
	    <a href="main.jsp" class="btn btn-default" data-toggle="sidebar" style="margin: auto;">
	        <img alt="" src="../IMG/메인로고.png" style="width: 100%;">
	    </a>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="../JS/simple-sidebar.js"></script>
</body>
</html>