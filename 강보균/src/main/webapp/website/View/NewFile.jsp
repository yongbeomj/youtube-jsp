<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JDA Laboratory - Samples: Bootstrap3 sidebar</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="../CSS/simple-sidebar.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="../JS/simple-sidebar.js"></script>
</body>
</html>