<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		*{
			border: 1px solid green;
			font-family: 'Noto Sans KR';
		}
		@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

		.notosanskr * { 
		 font-family: 'Noto Sans KR', sans-serif;
		}
	</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<div class="container" style="margin-top: 45px;">
		<div class="row">
			<!-- 메인 영상 -->
			<div class="col-md-7 my-5" style="margin: 0 auto; padding:0px 24px 0 0;">
				<video  controls="controls" width="100%">
					<!-- 영상 자체에 소리가 없음 -->
					<source src="../clip/Seoul.mp4">
				</video>
				<!-- 영상제목 라인 -->
				<div class="mt-2" style="font-size: 1.5rem;">영상 제목</div>
				<div class="mainclip col-md-12 d-flex justify-content:space-between pl-0 pr-0 py-3" style="border-bottom: 1px solid #cccccc;">
					<div class="col-md-5  pl-0">
						<span>조회수</span>
						<span>·</span>
						<span>날짜</span>
					</div>
				
					<div class=" offset-1 col-md-6 d-flex justify-content:end pl-1 pr-0">
						<div class="col-md-6 ">좋아요</div>
						<div class="col-md-6 ">싫어요</div>
					</div>
				</div>
				<div class="mainclip d-flex justify-content:space-between pt-2 py-3" style="border-bottom: 1px solid #cccccc;">
					<a  href="#"><img src="../img/user.png" width="48px" height="48px"></a>
					<div  class="col-md-4 pl-2">
						<a href="#">채널wdasdsadasdda이름</a><br>
						<span>구독자 : 1202만명</span>
					</div>
					<a href="#" class="offset-6 pt-1"><input type="submit" class="btn btn-danger" value="구독"></a>
				</div>
				<div class="mainclip offset-1 col-md-11 pl-2 pb-2" style="border-bottom: 1px solid #cccccc;">
					<div class="clipContents" style="display:">
						<div>
						<!-- 기준식 써서 \n3 기준으로 자른다. -->
							<details>
							    <summary>더 많은 내용</summary>
							    <p>내부에 넣을 내용을 입력해주세요</p>
							</details>
						</div>
					</div>
				</div>
				
				<!-- 댓글 -->
				<div class="col-md-5 px-2 py-3 d-flex flex-direction:row">
					<div style="font-size: 1.2rem;">댓글 <span>538</span>개 </div>
				</div>
				<div class="d-flex justify-content:space-between pt-2 py-3">
					<a  href="#"><img src="../img/user.png" width="40" height="40"></a>
					<input type="text" placeholder="공개 댓글 추가" class="form-control">
				</div>
				<div class="pt-3">
					<div class=>
						<a  href="#"><img src="../img/user.png" width="40" height="40"></a>
					</div>
				</div>
			</div>
			
			<!-- 오른쪽 영상목록 쪽 -->
			<div class="col-md-5 my-5 ml-0 mr-0 pl-0 pr-0" >
				<div class="col-md-12 ml-0 mr-0 pl-0 pr-0" style="display: flex; flex-direction: row;">
					<div class="col-md-5 mb-5 ml-0 mr-0 pl-0 pr-0" style=" width: 168px; height: 94px;">
						<a  href="#" ><img  alt="" src="../img/나이키.png" style="width: 168px; height: 94px; "></a>
						
					</div>
					<div class="col-md-7 no-gutters">
						<div>aa
							 <span> aa</span>
						</div>
						<div>bb</div>
						<div>cc</div>
						<div>dd</div>
					</div>
				</div >
				<div class="col-md-12  ml-0 mr-0 pl-0 pr-0" style="display: flex; flex-direction: row;">
					<div class="col-md-5 mb-5 ml-0 mr-0 pl-0 pr-0" style=" width: 168px; height: 94px;">
						<a  href="#" ><img  alt="" src="../img/나이키.png" style="width: 168px; height: 94px; "></a>
						
					</div>
					<div class="col-md-7 ml-0 mr-0 pl-0 pr-0">
						<div>aa
							 <span> aa</span>
						</div>
						<div>bb</div>
						<div>cc</div>
						<div>dd</div>
					</div>
				</div >
			</div>
		</div>	
	</div>
	<div>
	
	</div>
</body>
</html>