<%@ page import="domain.HotelInfo" %>
<%@ page import="domain.ScenicInfo" %>
<%@ page import="domain.LocateInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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

    <%--导入CSS--%>
    <%--<link rel="stylesheet" type="text/css" href="../lww/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lww/css/common.css">
    <link rel="stylesheet" type="text/css" href="../../../../../../FreeGo-master/src/main/webapp/lww/css/index.css">
    &lt;%&ndash;导入jQuery&ndash;%&gt;
    <script src="../../../../../../FreeGo-master/src/main/webapp/lww/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../../../../../../FreeGo-master/src/main/webapp/lww/js/bootstrap.min.js"></script>
    &lt;%&ndash;导入布局js&ndash;%&gt;
    <script src="../../../../../../FreeGo-master/src/main/webapp/lww/js/getParameter.js"></script>--%>

    <link rel="stylesheet" href="layui/css/layui.css">

    <style>
        body{text-align:center}
        /*最上面三个输入框*/
        #alignCenterOne {
            margin: 0 auto;
            border: 1px solid #FFFFFF;
            margin-top: 10px;
            height: 100px;
        }
        /*订酒店标题*/
        #headline{
            margin-top:5%;
        }
    </style>
    <style>
        body{text-align:center}
        /*最上面三个输入框*/
        #alignCenterOne {
            margin: 0 auto;
            border: 1px solid #FFFFFF;
            margin-top: 10px;
            height: 100px;
        }
        /*订酒店标题*/
        #headline{
            margin-top:5%;
        }
    </style>
</head>
<body>
    <%--<div id="header">
    <div class="freego_header clearfix" id="head_nav_warper">
        <div class="head_logo"><a class="freego_logo" title="FreeGo" href="http://localhost:8080/index.jsp"></a></div>
        <ul class="head_nav" id="_j_head_nav" role="tablist">
            <li id="head_nav_index_li" role="presentation"><a href="" id="head_nav_index_a">首页</a></li>
            <li id="head_nav_scenic_li" role="presentation"><a href="" id="head_nav_scenic_a" title="景点">景点</a></li>
            <li id="head_nav_gonglve_li" role="presentation"><a href="" id="head_nav_gonglve_a" title="旅游攻略">旅游攻略</a></li>
            <li id="head_nav_hotel_li" role="presentation"><a href="" id="head_nav_hotel_a" title="酒店">订酒店</a></li>
        </ul>
        <div class="login_status">
            <!-- 未登录状态  -->
            <div id="login_out" class="login_out">
                <a href="../../../../../../FreeGo-master/src/main/webapp/lww/login.jsp">登录</a>
                <a href="../../../../../../FreeGo-master/src/main/webapp/lww/register.jsp">注册</a>
            </div>
        </div>
    </div>
</div>--%>
    <!-- Bootstrap -->
    <!--居中div-->
    <label  style="font-size:30px;" class = "alignCenter" id="headline">订酒店</label>
    <%--layui--%>
    <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
        <input type="text" class="layui-input" id="test1">
    </div>
    <script type="application/javascript" src="${pageContext.request.contextPath}/mu/layui/layui.js"></script>
    <script>
        layui.use('laydate', function(){
            var laydate = layui.laydate;

            //执行一个laydate实例
            laydate.render({
                elem: '#test1' //指定元素
            });
        });
    </script>
    <!--第一部分  输入框部分-->
    <%--<form class="form-inline" id = "alignCenterOne" method="post" action="/LocationServlet" >
        <!--出行目的地-->
        <div class="form-group" style="margin-left: 5px;">
            <input id="distinati" name="mudidi"  type="text" class="form-control"  placeholder="出行目的地">
        </div>
        <!--入住日期-->

        <!--离店日期-->
        <input type="text" name="outTime2" placeholder="请选择日期" id="outTime2" style="border-radius: 4px;height: 35px;">
        <script>
            laydate.render({
                elem: '#outTime2' //指定元素
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

        <input type="submit" class="btn btn-warning" value="查询">
    </form>

    &lt;%&ndash;接收从servlet中的数据&ndash;%&gt;
    <%List<HotelInfo> hotelInfoList = (List<HotelInfo>)session.getAttribute("hotelList");
    List<ScenicInfo> scenicInfoList = (List<ScenicInfo>)session.getAttribute("scenicList");
    List<LocateInfo> locateInfoList = (List<LocateInfo>)session.getAttribute("locateList");
    String yeChuan = request.getParameter("ye");
    List<String> countyList = new ArrayList<String>();
    int ye = 1;
    if(yeChuan == null){
        ye = 1;
    }else{
        ye = Integer.parseInt(yeChuan);
    }
    //确实有这个地点
    if(locateInfoList.size() == 1){
        countyList = HotelInfo.queryCountyList(hotelInfoList);
        if(countyList.size() != 0){
            for(int i = 0;i < countyList.size();i++){
                System.out.println(countyList.get(i));
            }
        }
    }
%>
    &lt;%&ndash;地图模块&ndash;%&gt;
    <div id="mapDiv" style="height: 220px;">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div style="float: right">
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

    &lt;%&ndash;如果在景点表中查找到&ndash;%&gt;
    <%if(locateInfoList.size() != 0){%>
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
            &lt;%&ndash;<hr class="layui-border-black">&ndash;%&gt;
            <%}}else{%>
            <option value="空">空</option>
            <%}%>
        </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    <%}%>
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
            &lt;%&ndash;&ye=<%=i%>&ndash;%&gt;
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
    </nav>--%>
</body>
</html>