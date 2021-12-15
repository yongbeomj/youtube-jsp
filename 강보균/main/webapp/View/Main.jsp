<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
   /* border: 1px solid black; */
   
}
</style>
</head>
<body>
   <%@ include file="Header.jsp"%>
   <div style="background-color: black;">
      <div class="row mr-2">
         <div class="col-md-2 bg-dark" style="margin-top: 55px;">
            <h3 style="color: white;">홈</h3>
            <h3 style="color: white;">구독</h3>
            <h3 style="color: white;">보관함</h3>
         </div>
         <div class="col-md-10" style="margin-top: 80px;">
            <div class="row">
               <%
               for (int i = 0; i < 7; i++) {
               %>
               <div class="col-md-3">
                  <div class="row p-2">
                     <img alt="" src="../IMG/6726568.jpg"
                        style="width: 100%; height: 100%;">
                     <div class="col-md-3 ml-0 col-sm-2 col-xs-2 mt-2">
                        <img alt="" src="../IMG/채널.jpg"
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