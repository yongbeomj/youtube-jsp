Skip to content
Search or jump to…
Pull requests
Issues
Marketplace
Explore
 
@ImaMature 
yongbeomj
/
youtube-jsp
Public
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
youtube-jsp/강보균/src/main/webapp/website/View/main.jsp

강보균 ㅂㅂ
Latest commit 510bf52 3 days ago
 History
 0 contributors
93 lines (91 sloc)  3.67 KB
   
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
   <%@ include file="header.jsp"%>
   <div style="background-color: white; height: 100%; min">
      <div class="row">
         <div class="col-md-2" style="margin-top: 44px; overflow-y: auto; height: 100%; position: fixed; height: 100%; background-color: #0A1931;">
         	<div class = "row" style="background-color: #0A1931; padding-top: 10px; height: 100%;">
         		<div class = "col-md-4" style=" height: 100%; background-color: #0A1931;">
         			<div class = "navbar navbar-expand-lg navbar-light bg-#0A1931">
         				<a class = "navbar-toggler" data-toggle = "collapse" data-target = "#homemenu">
         					<span><img alt="" src="../img/임시로고.jpg">하위</span>
         				</a>
         			</div>
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         			<img alt="" src="">이미지
         		</div>
         		<div class = "col-md-8">
         			<div class = "collpase navbar-collapse" id = "homemenu">
         				<ul class = "navbar-nav">
         					<li class = "nav-item"><h4 style="color: white; font-size: 1rem;">홈</h4>
         					<li class = "nav-item"><h4 style="color: white; font-size: 1rem;">보관함</h4>
         					<li class = "nav-item"><h4 style="color: white; font-size: 1rem;">재생목록</h4>
         					<li class = "nav-item"><h4 style="color: white; font-size: 1rem;">구독목록</h4>
         				</ul>
         			</div>
		            
		            <!-- <h4 style="color: white; font-size: 1rem;">구독</h4>
		            <h4 style="color: white; font-size: 1rem;">보관함</h4> 
		            <h4 style="color: white; font-size: 1rem;">재생목록</h4>
		            <h4 style="color: white; font-size: 1rem;">구독목록</h4> -->
		            <div>
		            	<p>유튜버1
		            	<p>유튜버2
		            	<p>유튜버3
		            	<p>유튜버4
		            	<p>유튜버5
		            	<p>유튜버6
		            	<p>유튜버7
		            	<p>유튜버8
		            	<p>유튜버8
		            	<p>유튜버8
		            	<p>유튜버8
		            	<p>유튜버8
		            	<p>유튜버8
		            	<p>유튜버8
		            </div>
         		</div>
         	</div>
         </div>
         <div class="col-md-9 offset-2 rounded" style=" margin-top: 80px; overflow-y: auto; width: 100%;">
            <div class="row">
               <%
               for (int i = 0; i < 107; i++) {
               %>
               <div class="col-md-3">
                  <div class="row p-2" style=" background-color: white;">
                    <a href="clipviewmain.jsp"> <img alt="" src="../img/영상화면.jpg"
                        style="width: 100%; height: 100%; border-radius: 15px;"></a>
                     <div class="col-md-3 ml-0 col-sm-2 col-xs-2 mt-2">
                        <img alt="" src="../img/채널.jpg"
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
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete