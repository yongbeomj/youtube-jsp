<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- fsdfds -->
	
	
	<div class = "col-md-2">
		<%@include file="../sidebar.jsp"%>

	</div>
	
	<div class = "container" style ="margin-top: 100px;  ">
		
			<div class = "card col" >
				<div class = "card-body" >
					
					<h4 style ="font-weight: bold;">채널 정보 작성</h4>	
					<h6>채널 정보 게시</h6>
					<br>
					<div class ="row">
						<div class ="col-sm2 offset-xs-2" style ="width : 256px; height: 454px; border-radius: 5%; border: dotted 2px;">
						<br><br><br>
								<div class="d-flex justify-content-center">
									<img src="../../img/land3.png" alt="" style = "width : 30px; height: 30px;" >
								</div>
								<br>
								<div class="d-flex justify-content-center">
									
									<span>업로드 할 채널 배경 이미지 선택</span>
								</div>
								
								<br>
								<div class = "d-flex justify-content-center">
									<span style ="font-size: 3px;">PNG 또는 JPG</span>
								</div>
								<div class = "d-flex justify-content-center">
									<span style ="font-size: 3px;">720x1280 해상도 이상</span>
								</div>
								<br>
								<div class = "d-flex justify-content-center">
									<button type ="button" class ="btn btn-danger">파일 선택</button>
								</div>
						</div>
						<div class ="offset-md-2 col-md-7">
							<label >설명</label> 
							<input class="form-control">
							<br>
							<label >내용</label> 
							<textarea class="form-control" > </textarea>
							<br><br><br><br><br><br><br>
							
							<button type ="button" class ="btn btn-danger">게시</button>
							<button type ="button" class ="btn btn-danger">취소</button>
						</div>
						
					</div>
					
					
				</div>
			</div>
			
		
	</div>
</body>
</html>