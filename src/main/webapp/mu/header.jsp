<%--
  Created by IntelliJ IDEA.
  User: 李旺旺
  DateTime: 2021/4/9 19:46
  Description: 头部
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="js/getParameter.js"></script>

<header id="header">
    <link rel="stylesheet" type="text" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text" href="css/common.css">
    <link rel="stylesheet" type="text" href="css/index.css">
    <%--导入jQuery--%>
    <script src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../lww/js/bootstrap.min.js"></script>
    <%--导入布局js，共享header和footer--%>
    <script type="text/javascript" src="../lww/js/include.js"></script>
    <script ></script>

    <%--头部--%>
    <div id="header" xmlns="http://www.w3.org/1999/html">

        <div class="freego_header clearfix" id="head_nav_warper">

            <div class="head_logo"><a class="freego_logo" title="FreeGo" href="http://localhost:8080/index.jsp"></a></div>

            <ul class="head_nav" id="_j_head_nav" role="tablist">
                <li class="head-nav-index" role="presentation"><a href="">首页</a></li>
                <li class="head-nav-place" role="presentation"><a href="" title="目的地">目的地</a></li>
                <li class="head-nav-gonglve" role="presentation"><a href="" title="旅游攻略">旅游攻略</a></li>
                <li class="head-nav-sales" role="presentation"><a href="" title="去旅行">去旅行</a></li>
                <li class="head-nav-hotel" role="presentation"><a href="" title="酒店">订酒店</a></li>
            </ul>

            <div class="login_status">
                <!-- 未登录状态  -->
                <div id="login_out" class="login_out">
                    <a href="login.jsp">登录</a>
                    <a href="register.jsp">注册</a>
                </div>
                <!-- 登录状态  -->
                <div id="login_in" class="login_in">
                    <span id="span_username"></span>
                    <a href="javascript:location.href='user/exit';">退出</a>
                    <a id="cancelAccount">注销账号</a>
                </div>
            </div>

        </div>

    </div>

</header>


