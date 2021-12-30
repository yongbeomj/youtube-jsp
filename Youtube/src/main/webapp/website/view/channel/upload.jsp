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
   <div class = "container" style ="margin-top: 100px;">
      <div class = "card col" >
         <div class = "card-body" >
            <h4 style ="font-weight: bold;">동영상 업로드</h4>   
            <h6>계정에 동영상 게시</h6>
            <br>
            <form action = "../../controller/channel/uploadcontroller.jsp" method = "post" enctype="multipart/form-data">
               <div class ="row">
                  <div class ="col-sm2 offset-xs-2" style ="width : 256px; height: 454px; border-radius: 5%; border: dotted 2px;">
                  <br><br><br>
                     <div class="d-flex justify-content-center">
                        <img src="../../img/land3.png" alt="" style = "width : 30px; height: 30px;" >
                     </div>
                     <br>
                     <div class="d-flex justify-content-center">
                        <span>업로드 할 동영상 선택</span>
                     </div>
                     <div class = "d-flex justify-content-center">
                        <span style ="font-size: 3px;">또는 파일을 끌어서 놓기</span>
                     </div>
                     <br>
                     <div class = "d-flex justify-content-center">
                        <span style ="font-size: 3px;">MP4 또는 Web</span>
                     </div>
                     <div class = "d-flex justify-content-center">
                        <span style ="font-size: 3px;">720x1280 해상도 이상</span>
                     </div>
                     <br>
                     <div class = "d-flex justify-content-center">
                        <input type = "file" class = "form-control btn-outline-danger" name = "file">
                        <!-- <button type ="button" class ="btn btn-danger ">파일 선택</button> -->
                     </div>
                  </div>
                  <div class ="offset-md-2 col-md-7">
                     <div class = "row">
                        <label class = "col-md-2 text-center mt-1">제목</label>
                        <div class = "col-md-10">
                           <input class="form-control" name = "title">
                        </div> 
                     </div>
                     <div class = "row mt-2">
                        <label class = "col-md-2 text-center mt-3">내용</label> 
                        <div class = "col-md-10">
                           <textarea class="form-control" name = "contents" placeholder="영상보는페이지에서 더보기란에 들어갈 영상부가설명"></textarea>
                        </div>
                     </div>
                     <div class = "row mt-2">
                        <label class = "col-md-2 text-center mt-1">썸네일</label>
                        <div class = "col-md-10">
                           <input type = "file" class = "form-control" name = "thumbnail" id = "file" onchange = "readURL(this);">
                        </div>
                     </div>
                     <div class = "row">
                        <div class = "col-md-8 offset-md-2 mt-1">
                           <img id="preview" src="#" style="width: 100%;"/>
                        </div>
                     </div>
                     <br><br><br><br><br><br><br>
                     <button type ="submit" class ="btn btn-danger">게시</button>
                     <a href = "newchannel.jsp">
                        <button type ="button" class ="btn btn-danger">취소</button>
                     </a>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
</body>
</html>