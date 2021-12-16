<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
   <%@ include file="header.jsp"%>
   
   <div>
      <div class="row mr-2">
         <div class="col-md-2 bg-dark" style="margin-top: 55px; overflow-y: auto; height: 30px; position: fixed; height: 100%;">
         	<div class = "row">
         		<div class = "col-md-4">
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         		</div>
         		<div class = "col-md-8">
		            <h3 style="color: white;">홈</h3>
		            <h3 style="color: white;">구독</h3>
		            <h3 style="color: white;">보관함</h3>
		            <h3 style="color: white;">재생목록</h3>
		            <h3 style="color: white;">구독목록</h3>
		            <div>
		            	<p>유튜버1
		            	<p>유튜버2
		            	<p>유튜버3
		            	<p>유튜버4
		            	<p>유튜버5
		            	<p>유튜버6
		            	<p>유튜버7
		            	<p>유튜버8
		            </div>
         		</div>
         	</div>
         </div>
         <div class="col-md-9 offset-2" style="margin-top: 80px; overflow-y: auto; float: right;">
            <div class="row">
               <%
               for (int i = 0; i < 107; i++) {
               %>
               <div class="col-md-3">
                  <div class="row p-2">
                     <img alt="" src="../img/나이키.png"
                        style="width: 100%; height: 100%;">
                     <div class="col-md-3 ml-0 col-sm-2 col-xs-2 mt-2">
                        <img alt="" src="../img/profile.jpg"
                           style="width: 35px; height: 35px; border-radius: 70%; float: left;">
                     </div>
                     <div class="col-md-8 col-sm-8 col-xs-8 mt-2">
                        <p>title
                        <p>contents
                     </div>
                  </div>
               </div>
               <%
               }
               %>
            </div>
         </div>
      </div>
   </div>
</body>
</html>