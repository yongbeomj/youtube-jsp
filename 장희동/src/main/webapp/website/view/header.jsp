<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
   /* border: solid 1px black; */
}
</style>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">
</head>
<body>
   <div class="fixed-top" style="background-color: #0A1931;">
      <header>
         <div class="row my-2">
            <div class="col-md-3">
               <a href="/YoutubeProject/View/Main.jsp"><img src = "../IMG/유도부.png" style="width: 120px; height: 30px; margin-top: 6px;" class="ml-5"></a>
            </div>
            <div class="col-md-5 offset-1">
               <div class="row">
                  <div class="col-md-10 navbar navbar-expand-md" style="padding: 0;">
                     <div class="collapse navbar-collapse">
                        <div class="navbar-nav justify-content-between" style="width: 100%;">
                           <input type="text" class="form-control nav-item col-md-12 rounded-left border border-dark"
                              style="background-color: #eeeeee; border-radius:8px; width: 100%; margin: 0;"
                              placeholder="Search">
                        </div>
                     </div>
                  </div>
                  <div class="col-md-2" style="padding: 0;">
                     <button class="form-control text-center"
                        style="background-color: #185ADB; border-radius:12px;   color:white; border-style: none; width: 30%; height: 38px;">Q</button>
                  </div>
               </div>
            </div>
            <div class="col-md-2 offset-1">
               <div class="row">
                  <div class="col-md-8 offset-4">
                     <span class="col-md-6 bg-dark"
                        style="border-style: none; width: 60px; color: white;">접속ID</span>
                  </div>
               </div>
            </div>
         </div>
      </header>
   </div>

   <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"></script>
</body>
</html>