<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2021/4/11
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>酒店订购</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <%--导入CSS--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lww/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lww/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lww/css/index.css">
    <script src="${pageContext.request.contextPath}/lww/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lww/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/lww/js/getParameter.js"></script>
    <%--layui--%>
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
    </style>
</head>
<body>

    <%String userId = (String)session.getAttribute("userId");%>
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
                    <a href="${pageContext.request.contextPath}/lww/login.jsp">登录</a>
                    <a href="${pageContext.request.contextPath}/lww/register.jsp">注册</a>
                </div>
            </div>

        </div>
    </div>

    <!--第一部分  输入框部分-->
    <form class="form-inline" id = "alignCenterOne" method="post" action="/LocationServlet?methods=queryLocation&userId=<%=userId%>" >
        <!--出行目的地-->
        <div class="form-group" style="margin-left: 5px;">
            <input id="distination" name="mudidi"  type="text" class="form-control"  placeholder="出行目的地">
        </div>
        <!--入住日期-->
        <div class="form-group" style="margin-left: 5px;">
            <input type="text" name="ruzhu" class="layui-input" placeholder="请选择日期" id="inTime" style=" border-radius: 4px;height: 35px;">
        </div>
        <script>
            var hotellisj = hotelList;
            $("#inTime").html(hotellisj);
            layui.use('laydate', function(){
                var laydate = layui.laydate;
                //执行一个laydate实例
                laydate.render({
                    elem: '#inTime' //指定元素
                });
            });
        </script>
        <!--离店日期-->
        <div class="form-group" style="margin-left: 5px;">
            <input type="text" name="likai" class="layui-input" placeholder="请选择日期" id="outTime" style="border-radius: 4px;height: 35px">
        </div>
        <script>
            layui.use('laydate', function(){
                var laydate = layui.laydate;
                //执行一个laydate实例
                laydate.render({
                    elem: '#outTime' //指定元素
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
        <%--<input type="hidden" id="methods" name="methods" value="queryLocation">--%>
        <input type="submit" class="btn btn-warning" value="查询">
    </form>


    <!--广告栏-->
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-2">
            <div>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                    <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
                </svg>
            </div>
            <h3>住宿攻略</h3>
            <h5>区域攻略到特色主题，应有尽有</h5>
        </div>

        <div class="col-md-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
            </svg>
            <h3>专享价格</h3>
            <h5>多平台价格对比，天天专享特惠</h5>
        </div>

        <div class="col-md-2">
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-envelope-open" viewBox="0 0 16 16">
                <path d="M8.47 1.318a1 1 0 0 0-.94 0l-6 3.2A1 1 0 0 0 1 5.4v.818l5.724 3.465L8 8.917l1.276.766L15 6.218V5.4a1 1 0 0 0-.53-.882l-6-3.2zM15 7.388l-4.754 2.877L15 13.117v-5.73zm-.035 6.874L8 10.083l-6.965 4.18A1 1 0 0 0 2 15h12a1 1 0 0 0 .965-.738zM1 13.117l4.754-2.852L1 7.387v5.73zM7.059.435a2 2 0 0 1 1.882 0l6 3.2A2 2 0 0 1 16 5.4V14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5.4a2 2 0 0 1 1.059-1.765l6-3.2z"/>
            </svg>
            <h3>真实点评</h3>
            <h5>超过100万真是用户点评和游记</h5>
        </div>
        <div class="col-md-3"></div>
    </div>

    <!-----------根据地点推荐酒店----------->
    <!--标题-->
    <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-2"><h3>主题酒店</h3></div>
        <div class="col-md-5"></div>
    </div>

    <!--内容-->

    <%--<%for (int i = 0;i < ;i++)%>--%>
    <%--<div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6" style="text-align: center;">
            <div style="text-align: center;">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist" style="color:orange;display: inline-block;float: none;">
                    <li role="presentation"  class="active"><a style="color: orange" href="#tab-one" aria-controls="home" role="tab" data-toggle="tab">血拼购物</a></li>
                    <li role="presentation"><a style="color: orange" href="#tab-two" aria-controls="profile" role="tab" data-toggle="tab">吃货根据地</a></li>
                    <li role="presentation"><a style="color: orange" href="#tab-three" aria-controls="messages" role="tab" data-toggle="tab">周末好去处</a></li>
                    <li role="presentation"><a style="color: orange" href="#tab-four" aria-controls="settings" role="tab" data-toggle="tab">目的地特色</a></li>
                    <li role="presentation"><a style="color: orange" href="#tab-five" aria-controls="settings" role="tab" data-toggle="tab">潜水胜地</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="tab-one" style="">
                        <!--血拼购物-->
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/hongkang.jpeg" alt="香港">
                                    <div class="caption">
                                        <h3>香港中环</h3>
                                        <p>中环是香港其中一个最著名的购物中心，中外多间名牌旗舰店林立在德辅道中及皇后大道中，还有大型商场如置地广场及太子大厦等</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/lundun.jpeg" alt="青岛">
                                    <div class="caption">
                                        <h3>青岛</h3>
                                        <p>青岛地处中国华东地区、山东半岛东南、东濒黄海，是山东省经济中心、一带一路新亚欧大陆桥经济走廊主要节点城市和海上合作战略支点。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div><div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <img src="img/hotelMain/sanlitun.jpeg" alt="三里屯">
                                <div class="caption">
                                    <h3>北京三里屯</h3>
                                    <p>三里屯位于中国北京市朝阳区中西部。因距内城三里而得名。现在因三里屯酒吧街而闻名。三里屯酒吧街是北京夜生活最“繁华”的娱乐街之一。 </p>
                                    <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab-two">
                        <!--吃货根据地-->
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/shegu.jpeg" alt="上海">
                                    <div class="caption">
                                        <h3>上海</h3>
                                        <p>上海这里不仅有高大上的米其林，还有很多洒落在上海角角落落的市井美食。生煎小笼、青团、长脚面、大肠面、馄饨……</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/shenzhen.jpeg" alt="深圳">
                                    <div class="caption">
                                        <h3>深圳</h3>
                                        <p>深圳可谓是美食之都，世界各地的美食应有尽有~不怪你太能吃，只怪这里的美食好吃！</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/taibei.jpeg" alt="台北">
                                    <div class="caption">
                                        <h3>台北</h3>
                                        <p>来到了台北旅游,总是烦恼要吃什么?住在台北都不知道的有名美食?就让身为道地台北人的我带你朝圣台北十大必吃美食</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab-three">
                        <!--周末好去处-->
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/chongmingdao.jpeg" alt="崇明岛">
                                    <div class="caption">
                                        <h3>崇明岛</h3>
                                        <p>崇明岛，是长江三角洲东端长江口处的冲积岛屿，也是中国第三大岛屿，中国最大的河口冲积岛，中国最大的沙岛，成陆历史有1300多年，被誉为“长江门户、东海瀛洲”</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/moganshan.jpeg" alt="莫干山">
                                    <div class="caption">
                                        <h3>莫干山</h3>
                                        <p>以竹、泉、云和清、绿、凉、静的环境著称，素有“清凉世界”之美誉，与北戴河、庐山、鸡公山并称为我国四大避暑胜地。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/taibei.jpeg" alt="台北">
                                    <div class="caption">
                                        <h3>台北</h3>
                                        <p>来到了台北旅游,总是烦恼要吃什么?住在台北都不知道的有名美食?就让身为道地台北人的我带你朝圣台北十大必吃美食</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab-four">
                        <!--目的地特色-->
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/dali.jpeg" alt="大理民居">
                                    <div class="caption">
                                        <h3>大理民居</h3>
                                        <p>多为二层楼房，三开间，筒板瓦盖顶，前伸重檐，呈前出廊格局。墙脚、门头、窗头、飞檐等部位用刻有几何线条和麻点花纹的石块（条）进行点缀，墙壁常用鹅卵石砌筑。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/siheyuan.jpeg" alt="四合院">
                                    <div class="caption">
                                        <h3>北京四合院</h3>
                                        <p>四合院又称四合房，是一种中国传统高档合院式建筑，其格局为一个院子四面建有房屋，通常由正房、东西厢房和倒座房组成，从四面将庭院合围在中间。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/yantaiwenquan.jpeg" alt="烟台温泉">
                                    <div class="caption">
                                        <h3>烟台温泉</h3>
                                        <p>温泉是泉水的一种，是从地下自然涌出的，泉口温度显著地高于当地年平均气温的地下天然泉水，并含有对人体健康有益的微量元素的矿物质泉水。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab-five">
                        <!--潜水胜地-->
                        <div class="row">
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/wuzhidao.jpeg" alt="大理民居">
                                    <div class="caption">
                                        <h3>蜈支洲岛</h3>
                                        <p>蜈支洲岛位于海南三亚市北部的海棠湾内，北面与南湾猴岛遥遥相对，南邻美誉天下第一湾的亚龙湾。蜈支州岛属热带海洋气候，全年温和气爽，四季怡人，是度假、休闲、避寒、冬泳、娱乐的理想去处。被誉为“中国的马尔代夫”。海水能见度极高。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/xidao.jpeg" alt="西岛">
                                    <div class="caption">
                                        <h3>西岛</h3>
                                        <p>西面海域是极佳的潜水海域,西岛西北角一片广阔柔和的沙滩，是游乐世界游泳及各种海上运动的主要场地，在这里游客可以任意选择自己喜欢的运动。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="img/hotelMain/dadonghaian.jpeg" alt="大东海岸">
                                    <div class="caption">
                                        <h3>大东海岸</h3>
                                        <p>大东海岸于鹿回头与榆林港之间，三面环山，一排排翠绿椰林环抱沙滩，大东海没有暗礁，水清沙平，轻风细浪，四季如春，是我国南方地区最理想的海滨天然游泳场。相比较其他潜水点，这里更适合岸潜。</p>
                                        <p><a href="#" class="btn btn-primary" role="button">查看</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>--%>
</body>
</html>
