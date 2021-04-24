<%@ page import="domain.HotelInfo" %>
<%@ page import="domain.ScenicInfo" %>
<%@ page import="domain.LocateInfo" %>
<%@ page import="java.util.List" %><%--
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
    <div id="lwwHead">
        <script src="js/getParameter.js"></script>
        <link rel="stylesheet" type="text" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text" href="css/common.css">
        <link rel="stylesheet" type="text" href="css/index.css">
        <%--导入jQuery--%>
        <script src="js/jquery-3.3.1.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <%--导入布局js，共享header和footer--%>
        <script type="text/javascript" src="js/include.js"></script>
        <script></script>
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
    </div>
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
        #hotelPlay{
            height: 400px;
        }
        #hotelImg{
            margin-top: 20px;
            height: 160px;
            width: 220px;
            float: left;
        }
    </style>

</head>
<body>
<h1></h1>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" ></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="application/javascript" src="layui/layui.js"></script>
<link rel="stylesheet" href="layui/css/layui.css">
<script type="application/javascript" src="css/index.css"></script>
<%List<HotelInfo> hotelInfoList = (List<HotelInfo>)session.getAttribute("hotelList");
    List<ScenicInfo> scenicInfoList = (List<ScenicInfo>)session.getAttribute("scenicList");
    List<LocateInfo> locateInfoList = (List<LocateInfo>)session.getAttribute("locateList");
    String yeChuan = request.getParameter("ye");
    int ye = 1;
    if(yeChuan == null){
        ye = 1;
    }else{
        ye = Integer.parseInt(yeChuan);
    }
    %>
<%--接收从ViewHotelMain传递过来的数据--%>

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
    <div id="mapDiv">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div style="position: relative;">

                </div>
                <div style="position: absolute;float: right">
                    <iframe name="my-iframe" id="baiduMap" src="/mu/baiduMapTest.jsp" frameborder="0" width="400px" height="200px" scrolling="no"></iframe>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
        <%//确定分页的数量
        int limite = 15;
        int length = hotelInfoList.size() / 15;
        if(hotelInfoList.size() % 15 != 0){
            length++;
        }%>
    <%--景点列表--%>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
        <div style="width: 1200px; margin: 0 auto;">
            <%if(hotelInfoList != null){
                for (int i = 0;i < limite;i++){%>
            <div style="margin-top: 20px;height: 250px;width: 1000px;">
                <div  style="float: left;width: 300px;height: 216px;position: relative;margin-right: 20px;">
                        <img style="border-radius:10px;height: 200px;width: 280px;"
                             src="/FreegoImg/mu/hotelPicture/overPicture/<%=hotelInfoList.get((ye-1)*15+i).getPicturePath()%>.jpeg" alt="">
                    </a>
                </div>
                <div style="float: left;height: 250px">
                    <div style="float: left;position: absolute;">
                        <a href=""><h4><%=hotelInfoList.get((ye-1)*15+i).getHotelName()%></h4></a></div>
                    <div style="float: left;position: relative;top:40px;left: 0px;">
                        <a href=""><h6>电话:<%=hotelInfoList.get((ye-1)*15+i).getHotelTele()%></h6></a></div>
                    <div style="float: left;position: relative;top: 180px;left: -120px;">
                        <h6>地址:<%=hotelInfoList.get((ye-1)*15+i).getHotelAddress()%></h6></div>
                    <div style=""></div>
                </div>
            </div>
            <%--<hr class="layui-border-black">--%>
            <%}}else{%>
            <option value="空">空</option>
            <%}%>
        </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    </div>
    <%--<div class="page-block-travelnote" id="pgae_block_travelnote">
        <div class="travelnote-list">
            &lt;%&ndash;酒店信息展示&ndash;%&gt;
            <%for(int i = 0;i < limite;i++){%>
                    &lt;%&ndash;图片部分&ndash;%&gt;
                    <img style="border-radius:10px;" id="hotelImg" src="/FreegoImg/mu/hotelPicture/overPicture/<%=hotelInfoList.get((ye-1)*15+i).getPicturePath()%>.jpeg" alt="">

                    &lt;%&ndash;文字部分&ndash;%&gt;
                    &lt;%&ndash;<h4 style="margin-top: 30px;margin-left: 20px;">
                        <%=hotelInfoList.get((ye-1)*15+i).getHotelName()%>
                    </h4>
                222&ndash;%&gt;
        </div>
        &lt;%&ndash;<hr class="layui-border-black">&ndash;%&gt;
        <%}%>
    <div>--%>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <%if(ye-1<1){%>
                    <li class="disabled"><a href="LocationServlet?methods=updateFitInterface&ye=<%=1%>" aria-label="Previous">
                            <span aria-hidden="true">&raquo;</span>
                        </a></li>
                    <%}else{%>
                    <li><a href="LocationServlet?methods=updateFitInterface&ye=<%=ye-1%>" aria-label="Previous">
                        <span aria-hidden="true">&raquo;</span>
                    </a></li>
                    <%}%>
                    <%if(ye + 5 <= length){
                        if(ye-2>=1){
                            for(int i = ye-2;i <= ye+2;i++)
                            {%>
                    <li><a href="LocationServlet?methods=updateFitInterface&ye=<%=i%>" onclick=""><%=i%></a></li>
                    <%}%>
                    <%}else{%>
                    <%for (int i = 1;i <= 5;i++){ %>
                    <li><a href="LocationServlet?methods=updateFitInterface&ye=<%=i%>" onclick=""><%=i%></a></li>
                    <%}
                    }
                    }
                    else{%>

                    <%for(int i = ye-2;i <= length;i++){%>
                    <li><a href="LocationServlet?methods=updateFitInterface&ye=<%=i%>"><%=i%></a></li>
                    <%}
                    }%>
                    <%--&ye=<%=i%>--%>
                    <%if(ye+1>length){%>
                    <li class="disabled">
                        <a href="LocationServlet?methods=updateFitInterface&ye=<%=length%>" aria-label="Next">
                            <span aria-hidden="true">&raquo</span>
                        </a></li>
                    <%}else{%>
                    <li class="pagination">
                        <a href="LocationServlet?methods=updateFitInterface&ye=<%=ye+1%>" aria-label="Next">
                            <span aria-hidden="true">&raquo</span>
                        </a></li>
                    <%}%>
                </ul>
            </nav>
        </div>

</body>
</html>