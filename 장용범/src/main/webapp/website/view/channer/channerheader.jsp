<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../header.jsp"%>

	<div id="carouselcontent" class="carousel slide" data-ride="carousel">

		<ol class="carousel-indicators">
			<li data-target="#carouselcontent" data-slide-to="0" class="active"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="../../img/banner.jpg">
			</div>
		</div>
	</div>
	<div class="row my-2">
		<div class="col-md-1 offset-1">
			<img src=""> 로고
		</div>
		<div class="col-md-8">
			<ul>
				<li>채널페이지명</li>
				<li>구독자수</li>
			</ul>
		</div>
		<div class=col-md-1>
			<button type="button" class="btn btn-danger">구독</button>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#main_manu">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="col-md-5 offset-1 collapse navbar-collapse" id="main_manu">
			<ul class="navbar-nav col-md-12 justify-content-between">
				<li class="nav-item"><a href="#" class="nav-link">홈</a></li>
				<li class="nav-item"><a href="#" class="nav-link">동영상</a></li>
				<li class="nav-item"><a href="#" class="nav-link">재생목록</a></li>
				<li class="nav-item"><a href="#" class="nav-link">커뮤니티</a></li>
				<li class="nav-item"><a href="#" class="nav-link">채널</a></li>
				<li class="nav-item"><a href="channerinfo.jsp" class="nav-link">정보</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>