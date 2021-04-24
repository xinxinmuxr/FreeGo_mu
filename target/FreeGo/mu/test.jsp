<%@ page import="domain.HotelInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="domain.ScenicInfo" %>
<%@ page import="domain.LocateInfo" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2021/4/19
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List<HotelInfo> hotelInfoList = (List<HotelInfo>)session.getAttribute("hotelList");
    List<ScenicInfo> scenicInfoList = (List<ScenicInfo>)session.getAttribute("scenicList");
    List<LocateInfo> locateInfoList = (List<LocateInfo>)session.getAttribute("locateList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui/css/layui.css"  media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<ul id="biuuu_city_list"></ul>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>将一段已知数组分页展示</legend>
</fieldset>--%>
<div id="demo20"></div>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述 JS 路径需要改成你本地的 -->
<script>
    layui.use(['laypage', 'layer'], function(){
        var laypage = layui.laypage
            ,layer = layui.layer;
        //将一段数组分页展示
        //测试数据
        var data = [

        ];

        //调用分页
        laypage.render({
            elem: 'demo20'
            ,count: data.length
            ,jump: function(obj){
                //模拟渲染
                document.getElementById('biuuu_city_list').innerHTML = function(){
                    var arr = []
                        ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
                    layui.each(thisData, function(index, item){
                        arr.push('<div>'+ item +'</div>');
                        arr.push('<div>'+ item +'</div>');
                    });
                    return arr.join('');
                }();
            }
        });
    });
</script>
</body>
</html>


<%--
<!DOCTYPE html>
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
</head>
<body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    &lt;%&ndash;<%List<HotelInfo> hotelInfoList = (List<HotelInfo>)session.getAttribute("hotelList");
    List<ScenicInfo> scenicInfoList = (List<ScenicInfo>)session.getAttribute("scenicList");
    List<LocateInfo> locateInfoList = (List<LocateInfo>)session.getAttribute("locateList");
    int total = hotelInfoList.size();//总共的酒店数量
    %>&ndash;%&gt;
<nav aria-label="Page navigation">
    <ul class="pagination">
        <li>
            <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>

        </li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li>
            <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>
</body>
</html>--%>
