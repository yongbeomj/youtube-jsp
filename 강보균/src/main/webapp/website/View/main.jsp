<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content = "width=device-width, initial-scale=1, minimum-scale=1">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
   /* border: 1px solid black; */
   
}
</style>
</head>
<body>

	<%@ include file = "header.jsp" %>
	
	
	<div class="sidebar">
    <span class="sidebar-brand">
		        <a href="javascript:void(0)" data-toggle="sidebar"><i class="glyphicon glyphicon-arrow-left"></i> HIDE</a><br/>
		        JDA Laboratory<br/>
		        <small>Simple Sidebar </small>
		    </span>
		    <ul class="sidebar-nav">
		        <li>
		            <a href="javascript:void(0)">
		                Menu 1
		            </a>
		        </li>
		        <li>
		            <a href="javascript:void(0)" data-toggle="collapse" data-target="#menu-collapse-1">
		                Menu 2
		                <div class="caret"></div>
		            </a>
		            <ul id="menu-collapse-1" class="collapse in">
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 2-1
		                    </a>
		                </li>
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 2-2
		                    </a>
		                </li>
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 2-2
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:void(0)" data-toggle="collapse" data-target="#menu-collapse-2">
		                Menu 3
		                <div class="caret"></div>
		            </a>
		            <ul id="menu-collapse-2" class="collapse in">
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 3-1
		                    </a>
		                </li>
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 3-2
		                    </a>
		                </li>
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 3-3
		                    </a>
		                </li>
		            </ul>
		        </li>
		        <li>
		            <a href="javascript:void(0)" data-toggle="collapse" data-target="#menu-collapse-3">
		                Menu 4
		                <div class="caret"></div>
		            </a>
		            <ul id="menu-collapse-3" class="collapse in">
		                <li>
		                    <a href="javascript:void(0)" data-toggle="collapse" data-target="#menu-collapse-4">
		                        Menu 4-1
		                        <div class="caret"></div>
		                    </a>
		                    <ul id="menu-collapse-4" class="collapse">
		                        <li>
		                            <a href="javascript:void(0)">
		                                Menu 4-1-1
		                            </a>
		                        </li>
		                        <li>
		                            <a href="javascript:void(0)">
		                                Menu 4-1-2
		                            </a>
		                        </li>
		                    </ul>
		                </li>
		                <li>
		                    <a href="javascript:void(0)">
		                        Menu 4-2
		                    </a>
		                </li>
		            </ul>
		        </li>
		    </ul>
		</div>
		
		<div class="container-fluid">
		    사이드바를 보려면 오른쪽 버튼을 클릭하세요. 사이드바가 나타나면서. 이 화면을 덮어씁니다.
		    <a href="javascript:void(0)" class="btn btn-default" data-toggle="sidebar" style="margin: auto;">
		        Toggle Button
		    </a>
		</div>
	
	
	
	
	
	
	<div class = "row" style="height: 100%;">
		<div class = "col-md-1 col-sm-2 col-xs-4 d-flex justify-content-center align-items-center" style="position: fixed; height: 100%; background-color: gray;">
			<div class = "navbar navbar-expand-lg navbar-light bg-light ml-3">
				<div class = "navbar-toggler" data-toggle = "collapse" data-target = "#sidebar">
					<span class = "navbar-toggler-icon" style="background-image: ../IMG/로고.png"></span>
				</div>
				<div class = "collapse navbar-collapse" id = "sidebar">
					<ul class = "nav navbar-nav row ml-2">
						<li><img alt="" src="../IMG/로고.png" class = "active col-md-12" style="width: 100%;">
						<li class = "col-md-12">HOME
						<li class = "col-md-12">Subcribe
						<li class = "col-md-12">VideoBox
						<li class = "col-md-12">
						<li class = "navbar-toggler" data-target = "#sidemenu">SubsList
					</ul>
				</div>
			</div>
		</div>
		<div class = "container col-md-9 offset-md-2 col-sm-10 offset-sm-2 col-xs-6 offset-xs-2 mt-2">
			<div class = "row justify-content-center">
				<%
					for(int i = 0; i < 16; i++){
				%>
						<div class = "card col-xs-8 offset-xs-2 mt-2" style="width: 16rem; margin-right: 2px;">
							<img alt="" src="../IMG/영상화면.jpg" class = "card-img-top">
							<div class = "card-body row" style="height: 6rem;">
								<div class = "col-md-2 pt-2 col-xs-2 col-sm-2" style=" padding-left: 0; margin-left: 0">
									<img alt="" src="../IMG/채널.jpg" style="width: 2.5rem; height: 2.5rem; border-radius: 70%;">
								</div>
								<div class = "col-md-10 col-xs-10 col-sm-10">
									<h5 class = "card-title">title</h5>
									<p class = "card-text">contents
								</div>
							</div>
						</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>