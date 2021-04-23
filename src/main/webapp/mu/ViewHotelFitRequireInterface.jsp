<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2021/4/17
  Time: 13:36
  查看酒店列表
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->


    <style>
        body{text-align:center}
        /*最上面三个输入框*/
        #alignCenterOne{
            margin:0 auto;
            border:1px solid #FFFFFF;
            margin-top: 10px;
            height: 100px;
        }
        #attribute{
            margin:0 auto;
            border:1px solid #FFFFFF;
            margin-top: 10px;
        }
        #hotelPlay{

        }
    </style>

</head>
<body>
<h1></h1>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" ></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<%--接收从ViewHotelMain传递过来的数据--%>
<% String distination = request.getParameter("distination"); %>
    <form class="form-inline" id = "alignCenterOne" method="post">
        <!--出行目的地-->
        <div class="form-group" style="margin-left: 5px;">
            <input id="distination" type="email" class="form-control"  placeholder="出行目的地">
        </div>
        <!--入住日期-->
        <input type="text" class="demo-input" placeholder="请选择日期" id="inTime" style=" border-radius: 4px;height: 35px;">
        <script src="laydate/laydate.js"></script> <!-- 改成你的路径 -->
        <script>
            lay('#version').html('-v'+ laydate.v);

            //执行一个laydate实例
            laydate.render({
                elem: '#inTime' //指定元素
            });
        </script>
        <!--离店日期-->
        <input type="text" class="demo-input" placeholder="请选择日期" id="outTime" style="border-radius: 4px;height: 35px">
        <script src="laydate/laydate.js"></script> <!-- 改成你的路径 -->
        <script>
            lay('#version').html('-v'+ laydate.v);
            //执行一个laydate实例
            laydate.render({
                elem: '#outTime' //指定元素
            });
        </script>
        <!--人数-->
        <div class="form-group" style="margin-left: 5px;">
            <h4>人数</h4>
        </div>
        <div class="form-group" style="margin-left: 5px;">
            <select class="form-control">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
            </select>
        </div>
        <button type="button" class="btn btn-warning" onclick="MainToInfo()">搜索</button>
    </form>

    <iframe name="my-iframe" id="baiduMap" src="/mu/baiduMapTest.jsp" frameborder="0" width="400px" height="200px" scrolling="no"></iframe>
    <div class="row"><%--栅格--%>
        <div class="col-md-3"></div>
        <div class="col-md-6">

        </div>
        <div class="col-md-3"></div>
    </div>
</body>
</html>