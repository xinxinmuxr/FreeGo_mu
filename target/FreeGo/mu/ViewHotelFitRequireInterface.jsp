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
    <link rel="stylesheet" type="text/css" href="../lww/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lww/css/common.css">
    <link rel="stylesheet" type="text/css" href="../lww/css/index.css">
    <%--导入jQuery--%>
    <script src="../lww/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../lww/js/bootstrap.min.js"></script>
    <%--导入布局js--%>
    <script src="../lww/js/getParameter.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mu/layui/css/layui.css">
    <script type="application/javascript" src="${pageContext.request.contextPath}/mu/layui/layui.js"></script>
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
    <div id="header">
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
                <a href="../lww/login.jsp">登录</a>
                <a href="../lww/register.jsp">注册</a>
            </div>
        </div>
    </div>
</div>

    <%--layui--%>
    <!--第一部分  输入框部分-->
    <form class="form-inline" id = "alignCenterOne" method="post" action="/LocationServlet" >
        <!--出行目的地-->
        <div class="form-group" style="margin-left: 5px;">
            <input id="distinati" name="mudidi"  type="text" class="form-control"  placeholder="出行目的地">
        </div>
        <!--入住日期-->
        <div class="form-group" style="margin-left: 5px;">
            <input type="text" class="layui-input" id="ruzhu" placeholder="请选择日期">
        </div>
        <script>
            layui.use('laydate', function(){
                var laydate = layui.laydate;
                //执行一个laydate实例
                laydate.render({
                    elem: '#ruzhu' //指定元素
                });
            });
        </script>
        <!--离店日期-->
        <div class="form-group" style="margin-left: 5px;">
            <input type="text" class="layui-input" id="likai" placeholder="请选择日期">
        </div>
        <script>
            layui.use('laydate', function(){
                var laydate = layui.laydate;
                //执行一个laydate实例
                laydate.render({
                    elem: '#likai' //指定元素
                });
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

    <%--接收从servlet中的数据--%>
    <%List<HotelInfo> hotelInfoList = (List<HotelInfo>)session.getAttribute("hotelList");
    List<ScenicInfo> scenicInfoList = (List<ScenicInfo>)session.getAttribute("scenicList");
    List<LocateInfo> locateInfoList = (List<LocateInfo>)session.getAttribute("locateList");
    List<HotelInfo> hotelInfoListClass = new ArrayList<HotelInfo>();  //根据用户的点击确定的区
    String yeChuan = request.getParameter("ye");
    String county = request.getParameter("county");
    System.out.println("county:"+county);
    List<String> countyList = new ArrayList<String>();
    int ye = 1;
    if(yeChuan == null){
        ye = 1;
    }else{
        ye = Integer.parseInt(yeChuan);
    }
    //确实有这个地点  接收有多少个区
    if(locateInfoList.size() == 1){
        countyList = HotelInfo.queryCountyList(hotelInfoList);
    }
    if(county != null){
        if(county.equals("suoyou")){
            hotelInfoListClass = hotelInfoList;
        }else{
            hotelInfoListClass = new ArrayList<HotelInfo>();
            for (int i = 0;i < hotelInfoList.size();i++){
                if(hotelInfoList.get(i).getCounty().equals(county)){
                    hotelInfoListClass.add(hotelInfoList.get(i));
                }
            }
        }
    }else{
        hotelInfoListClass = hotelInfoList;
    }
    %>
    <%//确定分页的数量
        int limite = 15;
        int length = hotelInfoListClass.size() / 15;
        if(hotelInfoListClass.size() % 15 != 0){
            length++;
        }
        System.out.println("总页数"+length);
    %>
    <%--地图模块    展开--%>
    <%if(locateInfoList.size() == 1){%>
        <%--信息&地图模块--%>
        <div id="mapDiv" style="height: 220px;">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div style="float: left;position: absolute;margin-top: 5px;width: 400px;">
                        <div style="position: absolute;margin-top: 2px"><h6>区域:</h6></div>
                        <form class="form-inline" style="position: relative;float:left;margin-left: 45px;">
                            <div class="form-group">
                                <%if(county == null || county.equals("suoyou")){%>
                                <a class="layui-font-orange" href="/HotelServlet?methods=Class&county=suoyou&ye=1">
                                    <h6>全部</h6></a>
                                <%}else{%>
                                <a href="/HotelServlet?methods=Class&county=suoyou&ye=1">
                                    <h6>全部</h6></a>
                                <%}%>
                                <%for (int i = 0;i < countyList.size();i++){%>
                                <a href="/HotelServlet?methods=Class&county=<%=countyList.get(i)%>&ye=1">
                                    <h6><%=countyList.get(i)%>&nbsp;</h6>
                                </a>
                                <%if(i % 5 == 0 && i != 0){%>
                                <br>
                                <%}}%>
                            </div>
                        </form>
                    </div>
                    <div style="position: relative;margin-left: 420px;">
                        <iframe name="my-iframe" id="baiduMap" src="/mu/baiduMapTest.jsp" frameborder="0" width="400px" height="200px" scrolling="no"></iframe>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    <%}%>


    <%--如果在景点表中查找到--%>
    <%if(locateInfoList.size() != 0){%>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
        <div style="width: 1200px; margin: 0 auto;">
            <%if(hotelInfoListClass != null){
                if(length != 1){
                    for(int i = 0;i < limite;i++){
            //System.out.println("当前ye是"+ye);%>
            <div style="margin-top: 20px;height: 250px;width: 1000px;">
                <div  style="float: left;width: 300px;height: 216px;position: relative;margin-right: 20px;">
                        <img style="border-radius:10px;height: 200px;width: 280px;"
                             src="/FreegoImg/mu/hotelPicture/overPicture/<%=hotelInfoListClass.get((ye-1)*15+i).getPicturePath()%>.jpeg" alt="">
                    </a>
                </div>
                <div style="float: left;height: 250px">
                    <div style="float: left;position: absolute;">
                        <a href=""><h4><%=hotelInfoListClass.get((ye-1)*15+i).getHotelName()%></h4></a></div>
                    <div style="float: left;position: relative;top:40px;left: 0px;">
                        <a href=""><h6>电话:<%=hotelInfoListClass.get((ye-1)*15+i).getHotelTele()%></h6></a></div>
                    <div style="float: left;position: relative;top: 180px;left: -140px;">
                        <h6>地址:<%=hotelInfoListClass.get((ye-1)*15+i).getHotelAddress()%></h6></div>
                    <div style=""></div>
                </div>
            </div>
            <hr class="layui-border-black">
            <%}}else if(length == 1){
                for (int i = 0;i < hotelInfoListClass.size();i++){
            %>
            <div style="margin-top: 20px;height: 250px;width: 1000px;">
                <div  style="float: left;width: 300px;height: 216px;position: relative;margin-right: 20px;">
                    <img style="border-radius:10px;height: 200px;width: 280px;"
                         src="/FreegoImg/mu/hotelPicture/overPicture/<%=hotelInfoListClass.get((ye-1)*15+i).getPicturePath()%>.jpeg" alt="">
                    </a>
                </div>
                <div style="float: left;height: 250px">
                    <div style="float: left;position: absolute;">
                        <a href=""><h4><%=hotelInfoListClass.get((ye-1)*15+i).getHotelName()%></h4></a></div>
                    <div style="float: left;position: relative;top:40px;left: 0px;">
                        <a href=""><h6>电话:<%=hotelInfoListClass.get((ye-1)*15+i).getHotelTele()%></h6></a></div>
                    <div style="float: left;position: relative;top: 180px;left: -140px;">
                        <h6>地址:<%=hotelInfoListClass.get((ye-1)*15+i).getHotelAddress()%></h6></div>
                    <div style=""></div>
                </div>
            </div>
            <%}}else{%>
            <option value="空">空</option>
            <%}%>
        </div>
        </div>
        <div class="col-md-3"></div>
        <%}}%>
    </div>
    <%--页码--%>
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <%
                System.out.println("页："+ye);
            %>
            <%if(ye <= 3 && length <5){/*System.out.println("输出123-limite");*/
                for(int i = 1;i <= length;i++){%>
            <li><a href="/LocationServlet?methods=updateFitInterface&ye=<%=i%>"><%=i%></a></li>
            <%}}else if(ye <=3 && length >5){/*System.out.println("输出12345");*/
                for(int i = 1;i <= 5;i++){%>
            <li><a href="/LocationServlet?methods=updateFitInterface&ye=<%=i%>"><%=i%></a></li>
            <%}}else if(ye >3 && ye+2<length){/*System.out.println("输出ye-1 y1-2 ye ye+1 ye+2");*/
                for(int i = ye-2;i <= ye+2;i++){%>
            <li><a href="/LocationServlet?methods=updateFitInterface&ye=<%=i%>"><%=i%></a></li>
            <%}}else if(ye > 3 && ye +2>length){/*System.out.println("limite -1-2-3-4-5");*/
                for(int i = length-4;i <= length;i++){%>
            <li><a href="/LocationServlet?methods=updateFitInterface&ye=<%=i%>"><%=i%></a></li>
            <%}}%>
        </ul>
    </nav>

</body>
</html>
<%--<nav aria-label="Page navigation">
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