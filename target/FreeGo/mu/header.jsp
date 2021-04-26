<%--
  Created by IntelliJ IDEA.
  User: 李旺旺
  DateTime: 2021/4/9 19:46
  Description: 头部
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="js/getParameter.js"></script>
<html>
<header>
    <meta charset="UTF-8">
    <title>FreeGo</title>
    <%--导入CSS--%>


</header>
<body>
<%--头部--%>
<form class="form-inline" id = "alignCenterOne" method="post" action="/LocationServlet" >
    <!--出行目的地-->
    <div class="form-group" style="margin-left: 5px;">
        <input id="distination" name="mudidi"  type="text" class="form-control"  placeholder="出行目的地">
    </div>
    <!--入住日期-->
    <input type="text" name="ruzhu" class="layui-input" placeholder="请选择日期" id="inTime" style=" border-radius: 4px;height: 35px;">
    <%--<script src="laydate/laydate.js"></script>--%> <!-- 改成你的路径 -->
    <script>
        //执行一个laydate实例
        laydate.render({
            elem: '#inTime' //指定元素
        });
    </script>
    <!--离店日期-->
    <input type="text" name="likai" class="layui-input" placeholder="请选择日期" id="outTime" style="border-radius: 4px;height: 35px">
    <%--<script src="laydate/laydate.js"></script>--%> <!-- 改成你的路径 -->
    <script>
        laydate.render({
            elem: '#outTime' //指定元素
        });
    </script>
    <!--人数-->
    <div class="form-group" style="margin-left: 5px;">
        <h4>人数</h4>
    </div>
    <div class="form-group" style="margin-left: 5px;">
        <select class="form-control" name="renshu">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>
    </div>
    <input type="hidden" id="methods" name="methods" value="queryLocation">
    <input type="submit" class="btn btn-warning" value="查询">
    <input type="text" placeholder="">

</form>
</body>

</html>