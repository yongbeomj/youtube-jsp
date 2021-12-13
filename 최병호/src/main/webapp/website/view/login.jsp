<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file ="header.jsp" %>
	<br> <br><br><br><br><br><br>
	<div class = "container">
		<section class="login-block">
		    <div class="container-fluid">
		        <div class="row">
		            <div class="col-sm-12">
		                <form class="md-float-material form-material" action="#" method="POST">
		                    <div class="auth-box card">
		                        <div class="card-block">
		                            <div class="row">
		                                <div class="col-md-12">
		                                    <h3 class="text-center heading">이젠 회원가입</h3>
		                                </div>
		                            </div>
		                            <div class="form-group form-primary"> <input type="text" class="form-control" placeholder="Display name" > </div>
		                            <div class="form-group form-primary"> <input type="text" class="form-control"  placeholder="Email" > </div>
		                            <div class="form-group form-primary"> <input type="password" class="form-control" placeholder="Password"> </div>
		                            <div class="form-group form-primary"> <input type="password" class="form-control" placeholder="Repeat password"  > </div>
		                            <div class="row">
		                                <div class="col-md-12"> <input type="submit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20" > 
		                                </div>
		                            </div>
		                            <div class="or-container">
		                                <div class="line-separator"></div>
		                                <div class="or-label">or</div>
		                                <div class="line-separator"></div>
		                            </div>
		                            <div class="row">
		                                <div class="col-md-12"> <a class="btn btn-lg btn-google btn-block text-uppercase btn-outline" href="#"><img src="https://img.icons8.com/color/16/000000/google-logo.png"> Signup Using Google</a> </div>
		                            </div> <br>
		                            <p class="text-inverse text-center">Login</a></p>
		                        </div>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </div>
		</section>
	</div>
</body>
</html>