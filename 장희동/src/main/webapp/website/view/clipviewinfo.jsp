<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="col-md-6 mt-3 " style="border:solid 1px #cccccc; border-radius: 15px;">
		<div class="col-md-12 mt-3" style="font-size: 2rem;">영상 제목</div>
		<div class="mainclip col-md-12 d-flex justify-content:space-between py-1" style="border-bottom: 1px solid #cccccc;">
			<div class="col-md-5  pl-0">
				<span>조회수</span>
				<span>·</span>
				<span>날짜</span>
			</div>
		</div>
		<div class="col-md-12 mainclip d-flex justify-content:space-between pt-2 py-3">
			<div  class="col-md-12">
				<div class="row">
					<div>
						<a  href="#"><img src="../img/woman.jpg" width="48px" height="48px" style="border-radius: 50%;"></a>
					</div>
					<div class="col-md-5 pr-1">
						<a href="#">채널wdasdsadasdda이름3123123123132</a><br>
						<span>구독자 : 1202만명</span>
					</div>	
					<div class="col-md-2 pl-0 pr-0">
						<a href="#" class="pt-1"><button class="btn btn-outline-dark">팔로우</button></a>
					</div>
					<!-- 기능 추가할 곳 좋아요나, 공유나, 보관함등 -->
				</div>
			</div>
		</div>
		<div class="col-md-11 offset-1 pl-3">
			<div class="collpase navbar-collapse">
				<div class="navbar-nav">
				<!-- 기준식 써서 \n3 기준으로 자른다. -->
					<details class="nav-item">
					    <summary>영상설명 펼치기</summary>
						<p>영상에 관한 세부적인 내용이 입력되는 곳입니다.</p>
					</details>
				</div>
			</div>
		</div>
		<hr>
		
		<!-- 댓글 -->
		<div class="col-md-5 d-flex flex-direction:row">
			<div style="font-size: 1.2rem;">댓글 <span>538</span>개 </div>
		</div>
		<div class="col-md-12 d-flex justify-content:end py-2">
			<a  href="#"><img src="../img/woman.jpg" width="40" height="40" style="border-radius: 50%;"></a>
			<input type="text" placeholder="공개 댓글 추가" class=" form-control ml-3">
		</div>
		<div class="col-md-12 d-flex justify-content-end py-2">
			<div class="row">
				<a href="#"><button class="btn btn-dark mr-3">등록</button></a>
				<a href="#"><button class="btn btn-light">취소</button></a>
			</div>
		</div>
		<hr style="border-style: dashed;">
		<div class="col-md-12 d-flex justify-content-start mt-1">
			
				<a href="#" class="col-md-1 px-0"><img src="../img/woman.jpg" class="col-md-12 p-0"  style=" width: 40px; height: 40px; border-radius: 50%;"></a>
				<div class="col-md-10 pl-2 mr-0">
					<a  href="#">채널명</a>
					<div class="pl-0 my-2">댓글내용</div>
				</div>
			
		</div>
	</div>
</body>
</html>