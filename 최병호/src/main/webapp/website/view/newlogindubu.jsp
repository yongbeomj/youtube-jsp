<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%@include file="header.jsp"%>
   <br> <br><br><br><br><br><br>
   <div class="container">
<!--  -->
      <div class="col-md-6 offset-3">
         <div class="card" style="padding: 30px; width: 30rem;">
            <div class="card-body rounded">
               <div style="text-align: center;">
                  <img src="../img/dubulogomini.png" alt="" width = "120" height="35" style="margin-bottom: 20px">
                  <h2 class="card-title">Login</h2>
                  
               </div>
               
               <div>
                  <input type="text" class="form-control p-2 my-4" placeholder="ID" style ="">
               </div>
               <div>
                  <input type="text" class="form-control p-2 my-4" placeholder="pw">
               </div>

               
                  

               <div>
                  <button type="button" class="btn btn-primary btn-lg btn-block">다음</button>
               </div>      
                  
               <br>
               <div class ="row"> 
                  <div class = "col-md-4"><a href="#">아이디 찾기</a></div>
                  <div class = "col-md-4"></div>
                  <div class = "col-md-4 justify-content-end"><a href="#">비밀번호 찾기</a></div>
               </div>
               
               <br> <br> 
            </div>
         </div>
         
      </div>
   </div>


</body>
</html>