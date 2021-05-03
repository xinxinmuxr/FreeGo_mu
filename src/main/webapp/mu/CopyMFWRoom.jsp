<%@ page import="domain.HotelInfo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://webapi.amap.com/theme/v1.3/style1536672475627.css?v=2"><style type="text/css">.amap-logo{display:block!important;pointer-events:none;}</style><style type="text/css">.amap-indoor-map .label-canvas{position:absolute;top:0;left:0}.amap-indoor-map .highlight-image-con *{pointer-events:none}.amap-indoormap-floorbar-control{position:absolute;margin:auto 0;bottom:165px;right:12px;width:35px;text-align:center;line-height:1.3em;overflow:hidden;padding:0 2px}.amap-indoormap-floorbar-control .panel-box{background-color:rgba(255,255,255,.9);border-radius:3px;border:1px solid #ccc}.amap-indoormap-floorbar-control .select-dock{position:absolute;top:0;left:0;width:100%;box-sizing:border-box;height:30px;border:solid #4196ff;border-width:0 2px;border-radius:2px;pointer-events:none;background:linear-gradient(to bottom,#f6f8f9 0,#e5ebee 50%,#d7dee3 51%,#f5f7f9 100%)}.amap-indoor-map .transition{transition:opacity .2s},.amap-indoormap-floorbar-control .transition{transition:top .2s,margin-top .2s}.amap-indoormap-floorbar-control .select-dock:after,.amap-indoormap-floorbar-control .select-dock:before{content:"";position:absolute;width:0;height:0;left:0;top:10px;border:solid transparent;border-width:4px;border-left-color:#4196ff}.amap-indoormap-floorbar-control .select-dock:after{right:0;left:auto;border-left-color:transparent;border-right-color:#4196ff}.amap-indoormap-floorbar-control.is-mobile{width:37px}.amap-indoormap-floorbar-control.is-mobile .floor-btn{height:35px;line-height:35px}.amap-indoormap-floorbar-control.is-mobile .select-dock{height:35px;top:36px}.amap-indoormap-floorbar-control.is-mobile .select-dock:after,.amap-indoormap-floorbar-control.is-mobile .select-dock:before{top:13px}.amap-indoormap-floorbar-control.is-mobile .floor-list-box{height:105px}.amap-indoormap-floorbar-control .floor-list-item .floor-btn{color:#555;font-family:"Times New Roman",sans-serif,"Microsoft Yahei";font-size:16px}.amap-indoormap-floorbar-control .floor-list-item.selected .floor-btn{color:#000}.amap-indoormap-floorbar-control .floor-btn{height:28px;line-height:28px;overflow:hidden;cursor:pointer;position:relative;-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.amap-indoormap-floorbar-control .floor-btn:hover{background-color:rgba(221,221,221,.4)}.amap-indoormap-floorbar-control .floor-minus,.amap-indoormap-floorbar-control .floor-plus{position:relative;text-indent:-1000em}.amap-indoormap-floorbar-control .floor-minus:after,.amap-indoormap-floorbar-control .floor-plus:after{content:"";position:absolute;margin:auto;top:9px;left:0;right:0;width:0;height:0;border:solid transparent;border-width:10px 8px;border-top-color:#777}.amap-indoormap-floorbar-control .floor-minus.disabled,.amap-indoormap-floorbar-control .floor-plus.disabled{opacity:.3}.amap-indoormap-floorbar-control .floor-plus:after{border-bottom-color:#777;border-top-color:transparent;top:-3px}.amap-indoormap-floorbar-control .floor-list-box{max-height:153px;position:relative;overflow-y:hidden}.amap-indoormap-floorbar-control .floor-list{margin:0;padding:0;list-style:none}.amap-indoormap-floorbar-control .floor-list-item{position:relative}.amap-indoormap-floorbar-control .floor-btn.disabled,.amap-indoormap-floorbar-control .floor-btn.disabled *,.amap-indoormap-floorbar-control.with-indrm-loader *{-webkit-pointer-events:none!important;pointer-events:none!important}.amap-indoormap-floorbar-control .with-indrm-loader .floor-nonas{opacity:.5}.amap-indoor-map-moverf-marker{color:#555;background-color:#FFFEEF;border:1px solid #7E7E7E;padding:3px 6px;font-size:12px;white-space:nowrap;display:inline-block;position:absolute;top:1em;left:1.2em}.amap-indoormap-floorbar-control .amap-indrm-loader{-moz-animation:amap-indrm-loader 1.25s infinite linear;-webkit-animation:amap-indrm-loader 1.25s infinite linear;animation:amap-indrm-loader 1.25s infinite linear;border:2px solid #91A3D8;border-right-color:transparent;box-sizing:border-box;display:inline-block;overflow:hidden;text-indent:-9999px;width:13px;height:13px;border-radius:7px;position:absolute;margin:auto;top:0;left:0;right:0;bottom:0}@-moz-keyframes amap-indrm-loader{0%{-moz-transform:rotate(0);transform:rotate(0)}100%{-moz-transform:rotate(360deg);transform:rotate(360deg)}}@-webkit-keyframes amap-indrm-loader{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes amap-indrm-loader{0%{-moz-transform:rotate(0);-ms-transform:rotate(0);-webkit-transform:rotate(0);transform:rotate(0)}100%{-moz-transform:rotate(360deg);-ms-transform:rotate(360deg);-webkit-transform:rotate(360deg);transform:rotate(360deg)}}</style><script type="text/javascript" async="" charset="utf-8" src="https://c.cnzz.com/core.php?web_id=30065558&amp;t=q"></script><script type="text/javascript" async="" charset="utf-8" src="https://w.cnzz.com/c.php?id=30065558&amp;async=1"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>深圳皇庭V酒店预订，深圳皇庭V酒店价格_地址_图片_点评，深圳Wongtee V Hotel预订</title>
    <meta name="Keywords" content="深圳皇庭V酒店预订，深圳皇庭V酒店，Wongtee V Hotel">
    <meta name="Description" content="深圳皇庭V酒店位于金田路2028号皇岗商务中心26楼办理入住，马蜂窝为您提供深圳皇庭V酒店具体地址、图片、设施及预订价格查询，通过用户对深圳皇庭V酒店的真实点评及入住感受，帮您了解深圳皇庭V酒店的具体信息.">
    <link href="${pageContext.request.contextPath}/mu/css/viewRoomInfo/viewRoomInfo.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/mu/js/viewRoomInfo/viewRoomInfoOne.js" rel="stylesheet" type="text/css">
    <style>
        .hotel-new-icon .close {
            position: absolute;
            display: block;
            width: 25px;
            height: 25px;
            right: 0;
            bottom: 83px;
            border-radius: 50%;
        }
        .toolbar-item-top, .toolbar-item-feedback, .toolbar-item-code {
            padding-left: 40px;
        }
        .time {
            vertical-align: middle;
        }
    </style>
    <script language="javascript" src="${pageContext.request.contextPath}/mu/js/viewRoomInfo/viewRoomInfoTwo.js" type="text/javascript" crossorigin="anonymous"></script>
    <script async="" src="${pageContext.request.contextPath}/mu/js/viewRoomInfo/viewRoomInfoThree.js" crossorigin="anonymous"></script>
    <script async="" src="${pageContext.request.contextPath}/mu/js/viewRoomInfo/viewRoomInfoFour.js" crossorigin="anonymous"></script>
    <script async="" src="${pageContext.request.contextPath}/mu/js/viewRoomInfo/viewRoomInfoFive.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mu/css/viewRoomInfo/viewRoomInfoTwo.css">
    <script async="" src="${pageContext.request.contextPath}/mu/js/viewRoomInfo/viewRoomInfoSix.js" crossorigin="anonymous"></script></head>
    <style type="text/css">
    #allmap {overflow: hidden;margin:0;font-family:"微软雅黑";}
    </style>
    <script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&ak=MKmjSL6aurGZbHsmH7QZbHmU60ahLKsW"></script>
<body style="position: relative;">
<%--
<%  int userId = (int) session.getAttribute("userId");
    //List<RoomInfo> roomList = new ArrayList<RoomInfo>();
    HotelInfo hotel= (HotelInfo) session.getAttribute("hotelInfo");
    List<String> hotelInPictureList = (List<String>)session.getAttribute("hotelPicture");%>
--%>

<div class="container">
    <div class="top-info clearfix" id="_j_crumb">
        <div class="crumb">
            <span class="tit">您在这里：</span>
            <div class="item">
                <div class="drop">
                    <span class="hd"><a href="/hotel/" target="_blank">酒店<i></i></a></span>
                    <div class="bd" style="width:auto">
                        <i class="arrow"><b></b></i>
                        <div class="col">
                            <h3>周边国家和地区</h3>
                            <ul class="clearfix">
                                <li><a href="/hotel/11780/" target="_blank" title="朝鲜酒店预订">朝鲜<span>North Korea</span></a></li>
                                <li><a href="/hotel/10184/" target="_blank" title="韩国酒店预订">韩国<span>Korea</span></a></li>
                                <li><a href="/hotel/14293/" target="_blank" title="蒙古酒店预订">蒙古<span>Mongolia</span></a></li>
                                <li><a href="/hotel/10183/" target="_blank" title="日本酒店预订">日本<span>Japan</span></a></li>
                                <li><a href="/hotel/10300/" target="_blank" title="俄罗斯酒店预订">俄罗斯<span>Russia</span></a></li>
                                <li><a href="/hotel/10820/" target="_blank" title="老挝酒店预订">老挝<span>Laos</span></a></li>
                            </ul>
                        </div>
                        <div class="more"><a href="/hotel/" target="_blank">&gt;&gt;更多国家和地区</a></div>                        </div>
                </div>
                <em>&gt;</em>                </div>
            <div class="item">
                <div class="drop">
                    <span class="hd"><a href="/hotel/21536/" target="_blank" title="中国酒店预订">中国<i></i></a></span>
                    <div class="bd" style="width:auto">
                        <i class="arrow"><b></b></i>
                        <div class="col">
                            <h3>中国其他城市</h3>
                            <ul class="clearfix">
                                <li><a href="/hotel/10065/" target="_blank" title="北京閰掑簵鎺ㄨ崘">北京<span>Beijing</span></a></li>
                                <li><a href="/hotel/10099/" target="_blank" title="上海閰掑簵鎺ㄨ崘">上海<span>Shanghai</span></a></li>
                                <li><a href="/hotel/10195/" target="_blank" title="西安閰掑簵鎺ㄨ崘">西安<span>Xi'an</span></a></li>
                                <li><a href="/hotel/10088/" target="_blank" title="广州閰掑簵鎺ㄨ崘">广州<span>guangzhou</span></a></li>
                                <li><a href="/hotel/10208/" target="_blank" title="重庆閰掑簵鎺ㄨ崘">重庆<span>ChongQing</span></a></li>
                                <li><a href="/hotel/10035/" target="_blank" title="成都閰掑簵鎺ㄨ崘">成都<span>Chengdu</span></a></li>
                            </ul>
                        </div>
                        <div class="more"><a href="/hotel/21536/" target="_blank">&gt;&gt;更多城市</a></div>                        </div>
                </div>
                <em>&gt;</em>                </div>
            <div class="item"><a href="/hotel/10198/" target="_blank" title="深圳酒店查询">深圳</a><em>&gt;</em></div>
            <div class="item cur"><strong title="深圳皇庭V酒店预订">深圳皇庭V酒店预订</strong></div>
        </div>
        <div class="weather-wrapper">
            <link href="https://css.mafengwo.net/weather/littleWeather.css?1530619858" rel="stylesheet" type="text/css">
            <div class="littleWeather">
                <a href="/weather/10198.html" target="_blank">
                    <img src="http://images.mafengwo.net/images/mdd_weather/icon/icon30.png" width="25" height="25">
                    <span>阴 23℃~30℃</span>
                </a>
            </div>
        </div>
    </div>
    <div class="hotel-intro">
    <div class="intro-hd">
        <div class="intro-extra">
            <span class="score"><em>8.6</em>分</span>
            <span class="divide"></span>
            <span class="from"><strong class="t">非常好</strong><br><i class="icon-bg icon-m"></i>200评论</span>
        </div>
        <div class="main-title">
            <h1>深圳皇庭V酒店</h1>
            <i class="icon-bg icon-bird _j_icon_bird"></i>
        </div>
        <div class="en-title"><span>Wongtee V Hotel</span></div>
        <div class="location"><span title="金田路2028号皇岗商务中心26楼办理入住">地址：金田路2028号皇岗商务中心26楼办理入住...</span><a class="a-maps" href="/hotel/list_map.php?poiid=97816"><i class="icon-bg"></i>查看地图</a></div>
    </div>
    <div class="intro-bd clearfix" data-cs-t="酒店详情页">
        <div class="img-big _j_album_trigger clickstat " data-id="862053914" data-is-top-album="1" data-cs-p="图片" data-cs-l="大图" data-cs-d="大图">
            <img src="https://b1-q.mafengwo.net/s11/M00/B8/AE/wKgBEFz1pQ2APfwSABnSVXcUqEo72.jpeg?imageMogr2%2Fthumbnail%2F%211360x760r%2Fgravity%2FCenter%2Fcrop%2F%211360x760%2Fquality%2F90">
            <span class="num"><em>84</em> 张图片</span>
        </div>
        <ul class="img-small">
            <li><img class="_j_album_trigger clickstat" src="https://p1-q.mafengwo.net/s7/M00/EB/A9/wKgB6lPNiziAeUMeAAOQIkZ8o6c04.jpeg?imageMogr2%2Fthumbnail%2F%21300x240r%2Fgravity%2FCenter%2Fcrop%2F%21300x240%2Fquality%2F90" data-id="16108332" data-cs-p="图片" data-cs-l="小图" data-cs-d="小图"></li>
            <li><img class="_j_album_trigger clickstat" src="https://b1-q.mafengwo.net/s12/M00/EE/D4/wKgED1vAWaCATW8dACnRu7CnXu492.jpeg?imageMogr2%2Fthumbnail%2F%21300x240r%2Fgravity%2FCenter%2Fcrop%2F%21300x240%2Fquality%2F90" data-id="290830420" data-cs-p="图片" data-cs-l="小图" data-cs-d="小图"></li>
            <li><img class="_j_album_trigger clickstat" src="https://p1-q.mafengwo.net/s10/M00/4F/24/wKgBZ1mIgOeASlT-ABOCntp6cfI87.jpeg?imageMogr2%2Fthumbnail%2F%21300x240r%2Fgravity%2FCenter%2Fcrop%2F%21300x240%2Fquality%2F90" data-id="168939732" data-cs-p="图片" data-cs-l="小图" data-cs-d="小图"></li>
            <li><img class="_j_album_trigger clickstat" src="https://b1-q.mafengwo.net/s12/M00/EE/E3/wKgED1vAWaaAOhnRACq_JDs40RE51.jpeg?imageMogr2%2Fthumbnail%2F%21300x240r%2Fgravity%2FCenter%2Fcrop%2F%21300x240%2Fquality%2F90" data-id="290830576" data-cs-p="图片" data-cs-l="小图" data-cs-d="小图"></li>
            <li><img class="_j_album_trigger clickstat" src="https://p1-q.mafengwo.net/s12/M00/EE/D0/wKgED1vAWZ-AKajQAAXhzZqT3zQ43.jpeg?imageMogr2%2Fthumbnail%2F%21300x240r%2Fgravity%2FCenter%2Fcrop%2F%21300x240%2Fquality%2F90" data-id="290830412" data-cs-p="图片" data-cs-l="小图" data-cs-d="小图"></li>
            <li><img class="_j_album_trigger clickstat" src="https://n1-q.mafengwo.net/s12/M00/EE/D5/wKgED1vAWaCACIJAACvBwDA9OZU86.jpeg?imageMogr2%2Fthumbnail%2F%21300x240r%2Fgravity%2FCenter%2Fcrop%2F%21300x240%2Fquality%2F90" data-id="290830424" data-cs-p="图片" data-cs-l="小图" data-cs-d="小图"></li>
        </ul>
    </div>

</div>
</div>

<div class="hotel-navbar" id="_j_navbar" data-cs-t="酒店详情页" style="transform: translateY(0px);"></div>

<div class="container">
  <div class="hotel-booking" id="_j_booking_date">
        <div class="hotel-searchbar clearfix">
            <div class="hs-item hs-item-date" id="_j_check_in_date">
                <span>入住日期</span>
                <input type="text" placeholder="入住日期" readonly="" id="dp1620008725199" class="hasDatepicker">
                <i class="icon-bg icon-date"></i>
            </div>
            <div class="hs-item hs-item-date" id="_j_check_out_date">
                <span>离店日期</span>
                <input type="text" placeholder="离店日期" readonly="" id="dp1620008725200" class="hasDatepicker">
                <i class="icon-bg icon-date"></i>
            </div>
            <div class="hs-item hs-item-people number-guests-picker" id="_j_booking_number_guests">
                <span>人数未定</span>
                <i class="icon-bg icon-person icon-p1"></i>
                <div class="ngp-dropdown _j_ngp_dropdown" style="display:none;"><div class="item _j_ngp_room_item"><div class="row-guests clearfix _j_ngp_row_guests"><span class="label">每间</span><div class="ngp-select"><div class="select-trigger _j_ngp_select_trigger"><span>2 成人</span><div class="caret"><i></i></div></div><ul style="display:none;"><li data-value="1">1</li><li data-value="2">2</li><li data-value="3">3</li><li data-value="4">4</li><li data-value="5">5</li><li data-value="6">6</li><li data-value="7">7</li></ul></div><div class="ngp-select"><div class="select-trigger _j_ngp_select_trigger"><span>0 儿童</span><div class="caret"><i></i></div></div><ul style="display:none;"><li data-value="0">0</li><li data-value="1">1</li><li data-value="2">2</li><li data-value="3">3</li><li data-value="4">4</li></ul></div></div><div class="row-children clearfix _j_ngp_row_children" style="display:none;"><span class="label">儿童年龄</span></div></div><div class="item item-action clearfix _j_ngp_action_item"><span class="tips">请优先选择日期，以便查询实时价格。</span><a class="btn-action disabled" href="javascript:;">确 认</a></div></div></div>
            <div class="hs-item hs-item-action">
                <a class="hs-btn" id="_j_price_btn" href="javascript:;">查看价格</a>
            </div>

        </div>
        <div class="hotel-loading" id="_j_booking_info_loading" style="display: none;"><i class="loading-m"></i></div>
        <div class="not-found" id="_j_booking_info_not_found" style="display:none;">您选择的日期或人数无空房，请修改后再尝试。</div>
        <div class="book-list" id="_j_booking_info" style="">            <div class="caption">
            <div class="title">价格来源</div>

            <div class="low-room" style="margin-left:150px;width:400px;">最低价房型</div>
            <div class="price">最低价格/每晚</div>
        </div>
            <a class="item _j_booking_item" href="javascript:;" target="_blank" data-ota="booking" data-url="/hotel/booking/go2booking.php?from=hotel_new&amp;mddid=10198&amp;poi_id=97816&amp;to=booking&amp;j=https%3A%2F%2Fwww.booking.com%2Fhotel%2Fcn%2Fshenzhen-huangtin.zh-cn.html%3Fno_rooms%3D1%26group_adults%3D2%26group_children%3D0%26label%3Dhotel-340184_nrm-01_gstadt-02_gstkid-00_logid-%7Bbooking_log_id%7D" data-price="1030" data-is-cache-price="1" data-is-sold-out="0" data-pay-type="">
                <div class="title">
                    <img src="https://images.mafengwo.net/images/hotel/ota/booking_w100h20_2x_2.png" width="100" height="20">





                </div>

                <div class="low-room _j_booking_room" style="margin-left:150px;width:400px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">雅致双床房 - 免费取消</div>
                <div class="price _j_booking_price_wrapper" style="width:120px;">
                    <span class="total" style="width:115px;">
                        <strong class="_j_booking_price">￥1030</strong>
                        <strong class="_j_booking_price_text" style="font-size: 12px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                        <span style="margin-left:5px;font-size:14px;color:#999;text-decoration:line-through;"></span>
                    </span>
                    <i class="icon-bg icon-arrow"></i>
                </div>
                <div class="loading _j_booking_loading" style="display:none;">
                    <img class="loading_price" src="http://css.mafengwo.net/images/home/loading3.gif">
                </div>
            </a>
            <a class="item _j_booking_item" href="javascript:;" target="_blank" data-ota="youyu_pkg" data-url="/hotel/booking/go2booking.php?from=hotel_new&amp;mddid=10198&amp;poi_id=97816&amp;to=youyu_pkg&amp;j=http%3A%2F%2Fwww.mafengwo.cn%2Fhotel_zx%2Fhotel%2Findex.php%3FiId%3D48996%26sRoom%3D2" data-price="1122" data-is-cache-price="0" data-is-sold-out="0" data-pay-type="0" data-ota-id="16">
                <div class="title">
                    <img src="https://images.mafengwo.net/images/hotel/newlogo/mafengwo_2018@2x.png" width="100" height="20">

                    <i class="icon-bg icon-alipay" style=""></i>
                    <i class="icon-bg icon-wxpay" style=""></i>




                </div>

                <div class="low-room _j_booking_room" style="margin-left:150px;width:400px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">雅致大床房</div>
                <div class="price _j_booking_price_wrapper" style="width:120px;">
                    <span class="total" style="width:115px;">
                        <strong class="_j_booking_price">￥1122</strong>
                        <strong class="_j_booking_price_text" style="font-size: 12px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                        <span style="margin-left:5px;font-size:14px;color:#999;text-decoration:line-through;"></span>
                    </span>
                    <i class="icon-bg icon-arrow"></i>
                </div>
                <div class="loading _j_booking_loading" style="display:none;">
                    <img class="loading_price" src="http://css.mafengwo.net/images/home/loading3.gif">
                </div>
            </a>
            <a class="item _j_booking_item" href="javascript:;" target="_blank" data-ota="ctrip" data-url="/hotel/booking/go2booking.php?from=hotel_new&amp;mddid=10198&amp;poi_id=97816&amp;to=ctrip&amp;j=http://hotels.ctrip.com/hotel/385210.html" data-price="1123" data-is-cache-price="1" data-is-sold-out="0" data-pay-type="">
                <div class="title">
                    携程
                </div>
                <div class="low-room _j_booking_room" style="margin-left:150px;width:400px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">雅致双床房</div>
                <div class="price _j_booking_price_wrapper" style="width:120px;">
                    <span class="total" style="width:115px;">
                        <strong class="_j_booking_price">￥1123</strong>
                        <strong class="_j_booking_price_text" style="font-size: 12px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                        <span style="margin-left:5px;font-size:14px;color:#999;text-decoration:line-through;"></span>
                    </span>
                    <i class="icon-bg icon-arrow"></i>
                </div>
                <div class="loading _j_booking_loading" style="display:none;">
                    <img class="loading_price" src="http://css.mafengwo.net/images/home/loading3.gif">
                </div>
            </a>
            <a class="item _j_booking_item item-disabled" href="javascript:;" target="_blank" data-ota="youyu" data-url="/hotel/booking/go2booking.php?from=hotel_new&amp;mddid=10198&amp;poi_id=97816&amp;to=youyu&amp;j=http%3A%2F%2Fwww.youyudf.com%2Fhotel%2F%3FiId%3D48996%26sRoom%3D2" data-price="931" data-is-cache-price="0" data-is-sold-out="1" data-pay-type="">
                <div class="title">
                    有鱼订房

                    <i class="icon-bg icon-alipay"></i>
                    <i class="icon-bg icon-wxpay"></i>
         </div>

                <div class="low-room _j_booking_room" style="margin-left:150px;width:400px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">此日期暂无可选房型</div>
                <div class="price _j_booking_price_wrapper" style="width:120px;">
                    <span class="total" style="width:115px;">
                        <strong class="_j_booking_price"></strong>
                        <strong class="_j_booking_price_text" style="font-size: 12px;color: #666;padding-left: 2px;vertical-align: 1px;"></strong>
                        <span style="margin-left:5px;font-size:14px;color:#999;text-decoration:line-through;"></span>
                    </span>
                    <i class="icon-bg icon-arrow"></i>
                </div>
                <div class="loading _j_booking_loading" style="display:none;">
                    <img class="loading_price" src="http://css.mafengwo.net/images/home/loading3.gif">
                </div>
            </a>
            <a class="item _j_booking_item" href="javascript:;" target="_blank" data-ota="elong" data-url="/hotel/booking/go2booking.php?from=hotel_new&amp;mddid=10198&amp;poi_id=97816&amp;to=elong&amp;j=http://hotel.elong.com/search/52003089-hotel/" data-price="1122" data-is-cache-price="1" data-is-sold-out="0" data-pay-type="">
                <div class="title">
                    艺龙
                </div>
                <div class="low-room _j_booking_room" style="margin-left:150px;width:400px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">雅致大床房 标准价</div>
                <div class="price _j_booking_price_wrapper" style="width:120px;">
                    <span class="total" style="width:115px;">
                        <strong class="_j_booking_price">￥1122</strong>
                        <strong class="_j_booking_price_text" style="font-size: 12px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                        <span style="margin-left:5px;font-size:14px;color:#999;text-decoration:line-through;"></span>
                    </span>
                    <i class="icon-bg icon-arrow"></i>
                </div>
                <div class="loading _j_booking_loading" style="display:none;">
                    <img class="loading_price" src="http://css.mafengwo.net/images/home/loading3.gif">
                </div>
            </a>
            <a class="item _j_booking_item" href="javascript:;" target="_blank" data-ota="agoda" data-url="/hotel/booking/go2booking.php?adults_num=2&amp;children_num=0&amp;children_age=&amp;from=hotel_new&amp;mddid=10198&amp;poi_id=97816&amp;to=agoda&amp;j=http%3A%2F%2Fwww.agoda.com%2Fzh-cn%2Fasia%2Fchina%2Fshenzhen%2Fv_hotel.html" data-price="1030" data-is-cache-price="1" data-is-sold-out="0" data-pay-type="">
                <div class="title">
                    agoda
                </div>
                <div class="low-room _j_booking_room" style="margin-left:150px;width:400px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">高级双床间</div>
                <div class="price _j_booking_price_wrapper" style="width:120px;">
                    <span class="total" style="width:115px;">
                        <strong class="_j_booking_price">￥1030</strong>
                        <strong class="_j_booking_price_text" style="font-size: 12px;color: #666;padding-left: 2px;vertical-align: 1px;">起</strong>
                        <span style="margin-left:5px;font-size:14px;color:#999;text-decoration:line-through;"></span>
                    </span>
                    <i class="icon-bg icon-arrow"></i>
                </div>
                <div class="loading _j_booking_loading" style="display:none;">
                    <img class="loading_price" src="http://css.mafengwo.net/images/home/loading3.gif">
                </div>
            </a>
        </div>
    </div>
    <div class="hotel-maps clearfix" id="_j_map_wrapper" data-cs-t="酒店详情页">
        <div class="maps-cont" id="_j_map">
            <div class="map-container amap-container" id="_j_map_container_32F506F6" style="position: relative; background: rgb(252, 249, 242) none repeat scroll 0%">
                <object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about:blank"></object>
                <div class="amap-maps">
                    <div class="amap-drags" style=""><div class="amap-layers" style="transform: translateZ(0px);">
                    <div id="allmap" style="width:680px;height:380px;position: absolute; z-index: 0; top: 0px; left: 0px;"></div>
                        <script type="text/javascript">
                            // 百度地图API功能
                            var map = new BMap.Map("allmap");    // 创建Map实例
                            map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  // 初始化地图,设置中心点坐标和地图级别
                            //添加地图类型控件
                            map.addControl(new BMap.MapTypeControl({
                                mapTypes:[
                                    BMAP_NORMAL_MAP,
                                    BMAP_HYBRID_MAP
                                ]}));
                            map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
                            map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
                        </script>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="hotel-info" id="_j_hotel_info">
        <div class="info-section">
            <dl class="clearfix">
                <dt>基本信息</dt>
                <dd class="clearfix">

                    <div class="cell" style="width: 200px;">
                        <span class="label">入住时间: </span>
                        <span class="content" style="width: 200px;"><strong>14:00 - 12:00</strong></span>
                    </div>
                    <div class="cell">
                        <span class="label">离店时间: </span>
                        <span class="content"><strong>12:00</strong>之前</span>
                    </div>
                    <div class="cell">
                        <span class="label">建成于: </span>
                        <span class="content"><strong>2011</strong>年</span>
                    </div>
                    <div class="cell">
                        <span class="label">翻修于: </span>
                        <span class="content"><strong>2012</strong>年</span>
                    </div>
                    <div class="cell">
                        <span class="label">酒店规模: </span>
                        <span class="content"><strong>235</strong>间客房</span>
                    </div>
                </dd>
            </dl>
        </div>
        <div class="info-section">
            <div class="expand-wrap" id="_j_facility_info" style="height: 72px;">
                <dl class="clearfix">
                    <dt>主要设施</dt>
                    <dd>
                        <ul class="facility-item clearfix">
                            <li><i class="icon-bg icon-wifi"></i>wifi服务</li>
                            <li><i class="icon-bg icon-park"></i>免费停车场</li>
                            <li><i class="icon-bg icon-elevator"></i>电梯</li>
                            <li class="off"><i class="icon-bg icon-restaurant"></i>餐厅</li>
                            <li><i class="icon-bg icon-consign"></i>行李寄存</li>
                            <li><i class="icon-bg icon-24hours"></i>24小时服务</li>
                            <li><i class="icon-bg icon-thermos"></i>热水壶</li>
                            <li><i class="icon-bg icon-blower"></i>吹风机</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="clearfix">
                    <dt>酒店服务</dt>
                    <dd>
                        <ul class="facility-item clearfix">
                            <li><i class="icon-bg icon-ok"></i>接机服务</li>
                            <li><i class="icon-bg icon-ok"></i>外币兑换服务</li>
                            <li><i class="icon-bg icon-ok"></i>邮政服务</li>
                            <li><i class="icon-bg icon-ok"></i>SPA</li>
                            <li><i class="icon-bg icon-ok"></i>旅游服务</li>
                            <li><i class="icon-bg icon-ok"></i>客房服务</li>
                            <li><i class="icon-bg icon-ok"></i>婚宴服务</li>
                            <li><i class="icon-bg icon-ok"></i>租车服务</li>
                            <li><i class="icon-bg icon-ok"></i>快速入住服务</li>
                            <li><i class="icon-bg icon-ok"></i>叫车服务</li>
                            <li><i class="icon-bg icon-ok"></i>接站服务</li>
                            <li><i class="icon-bg icon-ok"></i>礼宾服务</li>
                            <li><i class="icon-bg icon-ok"></i>酒店禁烟</li>
                            <li><i class="icon-bg icon-ok"></i>多国语言工作人员</li>
                            <li><i class="icon-bg icon-ok"></i>一次性账单结算</li>
                            <li><i class="icon-bg icon-ok"></i>信用卡结算</li>
                            <li><i class="icon-bg icon-ok"></i>24小时大堂经理</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="clearfix">
                    <dt>酒店设施</dt>
                    <dd>
                        <ul class="facility-item clearfix">
                            <li><i class="icon-bg icon-ok"></i>商务中心</li>
                            <li><i class="icon-bg icon-ok"></i>中餐厅</li>
                            <li><i class="icon-bg icon-ok"></i>健身房</li>
                            <li><i class="icon-bg icon-ok"></i>室外游泳池</li>
                            <li><i class="icon-bg icon-ok"></i>会议设施</li>
                            <li><i class="icon-bg icon-ok"></i>无障碍客房</li>
                            <li><i class="icon-bg icon-ok"></i>西餐厅</li>
                            <li><i class="icon-bg icon-ok"></i>休息区</li>
                            <li><i class="icon-bg icon-ok"></i>茶室</li>
                            <li><i class="icon-bg icon-ok"></i>大堂吧</li>
                            <li><i class="icon-bg icon-ok"></i>公共区域监控</li>
                            <li><i class="icon-bg icon-ok"></i>多功能厅</li>
                            <li><i class="icon-bg icon-ok"></i>多媒体演示系统</li>
                        </ul>
                    </dd>
                </dl>
                <dl class="clearfix">
                    <dt>房间设施</dt>
                    <dd>
                        <ul class="facility-item clearfix">
                            <li><i class="icon-bg icon-ok"></i>叫醒服务</li>
                            <li><i class="icon-bg icon-ok"></i>国内长途电话</li>
                            <li><i class="icon-bg icon-ok"></i>24小时热水</li>
                            <li><i class="icon-bg icon-ok"></i>保险箱</li>
                            <li><i class="icon-bg icon-ok"></i>浴衣</li>
                            <li><i class="icon-bg icon-ok"></i>浴缸</li>
                            <li><i class="icon-bg icon-ok"></i>雨伞租借服务</li>
                            <li><i class="icon-bg icon-ok"></i>熨衣设备</li>
                            <li><i class="icon-bg icon-ok"></i>多种规格电源插座</li>
                            <li><i class="icon-bg icon-ok"></i>小冰箱／迷你吧</li>
                            <li><i class="icon-bg icon-ok"></i>无烟房</li>
                            <li><i class="icon-bg icon-ok"></i>宽带上网</li>
                            <li><i class="icon-bg icon-ok"></i>国际长途电话</li>
                            <li><i class="icon-bg icon-ok"></i>空调</li>
                            <li><i class="icon-bg icon-ok"></i>电视</li>
                            <li><i class="icon-bg icon-ok"></i>淋浴设施</li>
                            <li><i class="icon-bg icon-ok"></i>沙发</li>
                            <li><i class="icon-bg icon-ok"></i>拖鞋</li>
                            <li><i class="icon-bg icon-ok"></i>衣柜/衣橱</li>
                            <li><i class="icon-bg icon-ok"></i>110V电压插座</li>
                            <li><i class="icon-bg icon-ok"></i>220V电压插座</li>
                            <li><i class="icon-bg icon-ok"></i>免费洗漱用品</li>
                            <li><i class="icon-bg icon-ok"></i>遮光窗帘</li>
                            <li><i class="icon-bg icon-ok"></i>鸭绒被</li>
                            <li><i class="icon-bg icon-ok"></i>毯子或被子</li>
                            <li><i class="icon-bg icon-ok"></i>备用床具</li>
                            <li><i class="icon-bg icon-ok"></i>自动窗帘</li>
                            <li><i class="icon-bg icon-ok"></i>智能门锁</li>
                            <li><i class="icon-bg icon-ok"></i>针线包</li>
                            <li><i class="icon-bg icon-ok"></i>书桌</li>
                            <li><i class="icon-bg icon-ok"></i>闹钟</li>
                            <li><i class="icon-bg icon-ok"></i>体重称</li>
                            <li><i class="icon-bg icon-ok"></i>电话</li>
                            <li><i class="icon-bg icon-ok"></i>桑拿浴室</li>
                            <li><i class="icon-bg icon-ok"></i>洗浴间电视</li>
                            <li><i class="icon-bg icon-ok"></i>洗浴间电话</li>
                            <li><i class="icon-bg icon-ok"></i>化妆镜</li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <a class="expand-more" id="_j_facility_info_expand_trigger" href="javascript:;" data-is-expand="0"><i class="icon-bg icon-more"></i><span>展开全部</span></a>
        </div>
        <div class="info-section">
            <a style="color: #666;font-weight: bold;text-decoration: none;cursor: default;" target="_blank" href="/hotel/license?hotel_id=97816">马蜂窝酒店平台合作伙伴</a>
        </div>
        <div class="info-section">
            <div class="expand-wrap" id="_j_description" style="height: auto;">
                <dl class="clearfix">
                    <dt>酒店攻略</dt>
                    <dd>深圳皇庭V酒店位于福田区金田路皇岗商务中心，临近深圳会展中心、市民中心、地铁站，是一家设计时尚、客房温馨的高星级酒店。深圳皇庭V酒店的客房设计融自然与时尚于一体，拥有时尚客房及设计独特的豪华套房，24小时白金管家为宾客提供个性化的尊崇服务，让您尽享宾至如归的感觉。深圳皇庭V酒店另拥有各类时尚餐厅、酒吧及休闲场所，是您与亲朋好友共享美味佳肴的完美之地。近千平米无柱式宴会厅和6个大小不同的会议室，为您提供视听设备和资深专业的会议服务团队。酒店还配有先进一流的健身设备及SPA、俱乐部等休闲娱乐设施，在这里您可重焕身心活力，体验品味时尚。</dd>
                </dl>
            </div>
            <a class="expand-more" id="_j_description_expand_trigger" href="javascript:;" style="display:none;" data-is-expand="0"><i class="icon-bg icon-more"></i><span>展开全部</span></a>
        </div>
    </div>


    <div class="hotel-comment" id="_j_comment" data-cs-t="酒店详情页">

    </div>




    <div class="hotel-recommend" id="_j_nearby_hotels" style="" data-cs-t="酒店详情页">
        <h3>周边酒店推荐</h3>
        <ul class="clearfix"><li><a href="/hotel/9126029.html" target="_blank" data-cs-p="周边酒店" data-cs-l="周边酒店" data-cs-d="周边酒店"><div class="pic"><img src="https://b1-q.mafengwo.net/s16/M00/DE/9B/CoUBUmAPcSOAPe-HAA2-ElbyyEM88.jpeg?imageMogr2%2Fthumbnail%2F%21480x480r%2Fgravity%2FCenter%2Fcrop%2F%21480x480%2Fquality%2F90"></div><div class="bag-opa"></div><div class="fraction">8.1分</div><div class="info"><div class="prize"><span>¥<b>462</b></span></div><p>维也纳酒店(深圳会展中心岗厦地铁站店)</p><p class="eng">Vienna Hotel (Shenzhen Conference and Exhibition Center Gangxia subway station store)</p></div></a></li><li><a href="/hotel/98218.html" target="_blank" data-cs-p="周边酒店" data-cs-l="周边酒店" data-cs-d="周边酒店"><div class="pic"><img src="https://p1-q.mafengwo.net/s16/M00/A4/66/CoUBUl7ptlGAe-IAAT-rVtG3Nyo39.jpeg?imageMogr2%2Fthumbnail%2F%21480x480r%2Fgravity%2FCenter%2Fcrop%2F%21480x480%2Fquality%2F90"></div><div class="bag-opa"></div><div class="fraction">8.7分</div><div class="info"><div class="prize"><span>¥<b>2500</b></span></div><p>深圳星河丽思卡尔顿酒店</p><p class="eng">The Ritz-Carlton Shenzhen</p></div></a></li><li><a href="/hotel/98125.html" target="_blank" data-cs-p="周边酒店" data-cs-l="周边酒店" data-cs-d="周边酒店"><div class="pic"><img src="https://p1-q.mafengwo.net/s11/M00/7D/B5/wKgBEFtZsouAaIphAAMNw0hi5Gc37.jpeg?imageMogr2%2Fthumbnail%2F%21480x480r%2Fgravity%2FCenter%2Fcrop%2F%21480x480%2Fquality%2F90"></div><div class="bag-opa"></div><div class="fraction">8.3分</div><div class="info"><div class="prize"><span>¥<b>1173</b></span></div><p>深圳大中华喜来登酒店</p><p class="eng">Sheraton Shenzhen Futian Hotel</p></div></a></li><li><a href="/hotel/9023841.html" target="_blank" data-cs-p="周边酒店" data-cs-l="周边酒店" data-cs-d="周边酒店"><div class="pic"><img src="https://p1-q.mafengwo.net/s10/M00/E5/59/wKgBZ1nfC0KAYxkJAA7kvcIVa7k88.jpeg?imageMogr2%2Fthumbnail%2F%21480x480r%2Fgravity%2FCenter%2Fcrop%2F%21480x480%2Fquality%2F90"></div><div class="bag-opa"></div><div class="fraction">8.8分</div><div class="info"><div class="prize"><span>¥<b>820</b></span></div><p>深圳温德姆至尊酒店</p><p class="eng">Wyndham Grand Shenzhen</p></div></a></li></ul>
    </div>

</div>

<div id="footer"></div>


















<script>
    $(function () {
        var floatBottomBoxPannelDom = $("#float-pannel-gloable");
        var floatBottomBoxBannerConDom = $("#banner-con-gloable");
        // 过滤的URL规则，匹配不展示的页面
        // var flag = location.href.match(/www\.(mafengwo|\S+)\.(cn|ab)\/(hotel|wenda)/g) ||
        //     location.href.match(/passport\.(mafengwo|\S+)\.(cn|ab)\/setting/g) ||
        //     location.href.match(/gonglve\/ziyouxing\/(modify|home|comment)/g) ||
        //     location.href.match(/(note|ginfo)\/(create|create_index)\.php/g);
        // if(!flag){
        //     // 如果当前页面URL不在过滤列表之内，判断是否展示
        // }

        var bottomAdStatus = getCookie('bottom_ad_status');
        if (bottomAdStatus === '0') {
            closeBanner();
        } else {
            showBanner();
        }

        function scrollFn() {
            window.removeEventListener("scroll", scrollFn);
            closeBanner(true);
        }

        // 浮标非关闭按钮部分点击
        $('#float-pannel-gloable .float-image').click(function (){
            // 浮标点击上报
            reportFloatClick();
            showBanner(true);
        });

        // banner关闭按钮点击
        $('#banner-con-gloable .close-btn').click(function () {
            closeBanner(true);
        });

        // 浮标关闭按钮点击
        // $("#float-pannel-gloable .float-btn").click(function () {
        //     floatBottomBoxBannerConDom.animate({ left:-window.innerWidth,},1000,'swing');
        //     setTimeout(function () {
        //         floatBottomBoxPannelDom.animate({ left:-230,},800,'swing');
        //         floatBottomBoxBannerConDom.hide();
        //     }, 1000);
        // });

        // value 1为显示，0为收起
        function setCookie(name, value) {
            var time = 24 * 60 * 60 * 1000;
            var exp = new Date().setHours(0, 0, 0, 0);
            var expires = new Date(exp + time);
            document.cookie=name+'=' + escape(value) + ';expires='+expires.toGMTString()+';path=/';
        }

        function getCookie(name) {
            var arr = null;
            var reg = new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            var arr=document.cookie.match(reg);
            if(arr) {
                return unescape(arr[2]);
            } else {
                return null;
            }
        }

        function showBanner(useAnimation) {
            // 显示banner
            floatBottomBoxPannelDom.animate({ left:-230,}, useAnimation ? 500 : 0,'swing');
            setTimeout(function () {
                floatBottomBoxBannerConDom.show();
                floatBottomBoxBannerConDom.css('width','100%');
                floatBottomBoxBannerConDom.animate({ left:0,}, useAnimation ? 1000 : 0,'swing');
                window.addEventListener("scroll", scrollFn);
            }, 800);
            setCookie('bottom_ad_status', 1);
        }
        function closeBanner(useAnimation) {
            floatBottomBoxBannerConDom.animate({ left:-window.innerWidth,}, useAnimation ? 1000 : 0,'swing');
            setTimeout(function () {
                floatBottomBoxPannelDom.animate({ left:0,}, useAnimation ? 800 : 0,'swing');
                // 浮标曝光
                reportFloatExposure();
                floatBottomBoxBannerConDom.hide();
            }, 1000);
            setCookie('bottom_ad_status', 0);
        }

        // banner曝光事件上报
        function reportBannerExposure() {
            if (window.mfwPageEvent) {
                // banner曝光
                mfwPageEvent('sales', 'show_index_index', {
                    pos_id: 'index.index.floatbanner.x',
                    module_name: '浮标大广告位',
                    item_source: 'float',
                    item_uri: window.location.href,
                })
            }
        }

        // 浮标点击事件上报
        function reportFloatClick() {
            if (window.mfwPageEvent) {
                // 浮标点击事件上报
                mfwPageEvent('sales', 'click_index_index', {
                    pos_id: 'index.index.floaticon.x',
                    module_name: '浮标广告位',
                    item_source: 'float',
                    item_uri: window.location.href,
                })
            }
        }

        // 浮标曝光事件上报
        function reportFloatExposure() {
            if (window.mfwPageEvent) {
                mfwPageEvent('sales', 'show_index_index', {
                    pos_id: 'index.index.floaticon.x',
                    module_name: '浮标广告位',
                    item_source: 'float',
                    item_uri: window.location.href,
                })
            }
        }
    });
</script>




<link href="https://css.mafengwo.net/css/mfw-toolbar.css?1537192876" rel="stylesheet" type="text/css">

<div class="mfw-toolbar" id="_j_mfwtoolbar" style="display: block;">
    <div class="toolbar-item-top" style="display: none;">
        <a role="button" class="btn _j_gotop">
            <i class="icon_top"></i>
            <em>返回顶部</em>
        </a>
    </div>
    <div class="toolbar-item-feedback">
        <a role="button" data-japp="feedback" class="btn">
            <i class="icon_feedback"></i>
            <em>意见反馈</em>
        </a>
    </div>
    <div class="toolbar-item-code">
        <a role="button" class="btn">
            <i class="icon_code"></i>
        </a>
        <a role="button" class="mfw-code _j_code">
            <img src="https://p1-q.mafengwo.net/s1/M00/6C/51/wKgIC1t_6TuASybrAADGUPUHjr021.jpeg?imageMogr2%2Fthumbnail%2F%21450x192r%2Fgravity%2FCenter%2Fcrop%2F%21450x192%2Fquality%2F90" width="450" height="192">
        </a>
        <!--<div class="wx-official-pop"><img src="http://images.mafengwo.net/images/qrcode-weixin.gif"><i class="_j_closeqrcode"></i></div>-->
    </div>
</div>

<div id="_j_layer_0" class="layer _j_layer" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; z-index: 5000; display: none;">                                <div class="layer_mask _j_mask" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; background: rgb(0, 0, 0) none repeat scroll 0% 0%; opacity: 0.8; z-index: -1;"></div>                                <div class="layer_content _j_content" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; z-index: 0; overflow: hidden;"><div class="_j_dialog" style="position: absolute; opacity: 0; display: none; background: rgb(255, 255, 255) none repeat scroll 0% 0%; z-index: 0;"><div class="_j_content"><div class="pop-box _j_album_box"><div class="h-close _j_album_close"></div><div class="photo-gallery _j_album_image"><img style="display:none;" width="680" height="470"><div class="aload"><div class="aload1"></div><div class="aload2"></div></div><a class="btn-left" href="javascript:;"><i></i></a><a class="btn-right" href="javascript:;"><i></i></a><div class="hotel-about" style="display:none;"></div></div><div class="small-image _j_album_thumb"><ul style="overflow-y: scroll;width: 132px;"></ul><div class="btn-up"><a href="javascript:;"></a></div><div class="btn-down"><a href="javascript:;"></a></div></div><p class="tips _j_album_tips" style="display:none;">※该图片由用户上传，仅供参考</p></div></div></div><div class="_j_dialog" style="position: absolute; opacity: 0; display: none; background: rgb(255, 255, 255) none repeat scroll 0% 0%; z-index: 0;"><div class="_j_content"><div class="pop-box _j_album_box"><div class="h-close _j_album_close"></div><div class="nav-tab _j_album_class_tag"><p class="flt1 nav-left" style="display:none;"><a href="javascript:;"></a></p><div class="flt1 nav-wd"><div class="nav-wx"><a href="javascript:;" data-class-tag-index="0" class="on">全部(84)</a><a href="javascript:;" data-class-tag-index="1">外观(9)</a><a href="javascript:;" data-class-tag-index="2">内景(26)</a><a href="javascript:;" data-class-tag-index="3">房间(37)</a><a href="javascript:;" data-class-tag-index="4">餐厅(5)</a></div></div><p class="flt1 nav-right" style="display:none;"><a href="javascript:;"></a></p></div><div class="photo-gallery _j_album_image"><img style="" src="https://b1-q.mafengwo.net/s11/M00/B8/AE/wKgBEFz1pQ2APfwSABnSVXcUqEo72.jpeg?imageMogr2%2Fthumbnail%2F%211360x940r%2Fgravity%2FCenter%2Fcrop%2F%211360x940%2Fquality%2F90" width="680" height="470"><div class="aload"><div class="aload1"></div><div class="aload2"></div></div><a class="btn-left" href="javascript:;"><i></i></a><a class="btn-right" href="javascript:;"><i></i></a><div class="hotel-about" style="display:none;"></div></div><div class="small-image _j_album_thumb"><ul><li class="on" data-album-id="862053914" data-album-index="0"><img src="https://b1-q.mafengwo.net/s11/M00/B8/AE/wKgBEFz1pQ2APfwSABnSVXcUqEo72.jpeg?imageMogr2%2Fthumbnail%2F%21240x170r%2Fgravity%2FCenter%2Fcrop%2F%21240x170%2Fquality%2F90" width="120" height="85"></li><li class="" data-album-id="16108332" data-album-index="1"><img src="https://p1-q.mafengwo.net/s7/M00/EB/A9/wKgB6lPNiziAeUMeAAOQIkZ8o6c04.jpeg?imageMogr2%2Fthumbnail%2F%21240x170r%2Fgravity%2FCenter%2Fcrop%2F%21240x170%2Fquality%2F90" width="120" height="85"></li><li class="" data-album-id="290830412" data-album-index="2"><img src="https://p1-q.mafengwo.net/s12/M00/EE/D0/wKgED1vAWZ-AKajQAAXhzZqT3zQ43.jpeg?imageMogr2%2Fthumbnail%2F%21240x170r%2Fgravity%2FCenter%2Fcrop%2F%21240x170%2Fquality%2F90" width="120" height="85"></li><li class="" data-album-id="290830408" data-album-index="3"><img src="https://n1-q.mafengwo.net/s12/M00/EE/CD/wKgED1vAWZ6AHSpnAAXXnWUqB3443.jpeg?imageMogr2%2Fthumbnail%2F%21240x170r%2Fgravity%2FCenter%2Fcrop%2F%21240x170%2Fquality%2F90" width="120" height="85"></li><li class="" data-album-id="168940692" data-album-index="4"><img src="https://b1-q.mafengwo.net/s10/M00/4F/51/wKgBZ1mIgOuAUgeIAAJBt8YAiW898.jpeg?imageMogr2%2Fthumbnail%2F%21240x170r%2Fgravity%2FCenter%2Fcrop%2F%21240x170%2Fquality%2F90" width="120" height="85"></li></ul><div class="btn-up"><a href="javascript:;"></a></div><div class="btn-down"><a href="javascript:;"></a></div></div><p class="tips _j_album_tips" style="display:none;">※该图片由用户上传，仅供参考</p></div></div></div></div>                            </div><div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all ui-datepicker-multi ui-datepicker-multi-2" style="width: 34em;"><div class="ui-datepicker-group ui-datepicker-group-first"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-left"><a class="ui-datepicker-prev ui-corner-all" data-handler="prev" data-event="click" title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-month">六月</span>&nbsp;<span class="ui-datepicker-year">2021</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th scope="col"><span title="星期一">一</span></th><th scope="col"><span title="星期二">二</span></th><th scope="col"><span title="星期三">三</span></th><th scope="col"><span title="星期四">四</span></th><th scope="col"><span title="星期五">五</span></th><th scope="col" class="ui-datepicker-week-end"><span title="星期六">六</span></th><th scope="col" class="ui-datepicker-week-end"><span title="星期日">日</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="31">&nbsp;</td><td class=" " data-handler="selectDay" data-event="click" data-date="1" data-month="5" data-year="2021"><a class="ui-state-default" href="#">1</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="2" data-month="5" data-year="2021"><a class="ui-state-default" href="#">2</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="3" data-month="5" data-year="2021"><a class="ui-state-default" href="#">3</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="4" data-month="5" data-year="2021"><a class="ui-state-default" href="#">4</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="5" data-month="5" data-year="2021"><a class="ui-state-default" href="#">5</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="6" data-month="5" data-year="2021"><a class="ui-state-default" href="#">6</a></td></tr><tr><td class=" " data-handler="selectDay" data-event="click" data-date="7" data-month="5" data-year="2021"><a class="ui-state-default" href="#">7</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="8" data-month="5" data-year="2021"><a class="ui-state-default" href="#">8</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="9" data-month="5" data-year="2021"><a class="ui-state-default" href="#">9</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="10" data-month="5" data-year="2021"><a class="ui-state-default" href="#">10</a></td><td class=" start_day" data-handler="selectDay" data-event="click" data-date="11" data-month="5" data-year="2021"><a class="ui-state-default" href="#">11</a></td><td class=" ui-datepicker-week-end end_day ui-datepicker-current-day" data-handler="selectDay" data-event="click" data-date="12" data-month="5" data-year="2021"><a class="ui-state-default ui-state-active" href="#">12</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="13" data-month="5" data-year="2021"><a class="ui-state-default" href="#">13</a></td></tr><tr><td class=" " data-handler="selectDay" data-event="click" data-date="14" data-month="5" data-year="2021"><a class="ui-state-default" href="#">14</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="15" data-month="5" data-year="2021"><a class="ui-state-default" href="#">15</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="16" data-month="5" data-year="2021"><a class="ui-state-default" href="#">16</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="17" data-month="5" data-year="2021"><a class="ui-state-default" href="#">17</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="18" data-month="5" data-year="2021"><a class="ui-state-default" href="#">18</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="19" data-month="5" data-year="2021"><a class="ui-state-default" href="#">19</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="20" data-month="5" data-year="2021"><a class="ui-state-default" href="#">20</a></td></tr><tr><td class=" " data-handler="selectDay" data-event="click" data-date="21" data-month="5" data-year="2021"><a class="ui-state-default" href="#">21</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="22" data-month="5" data-year="2021"><a class="ui-state-default" href="#">22</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="23" data-month="5" data-year="2021"><a class="ui-state-default" href="#">23</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="24" data-month="5" data-year="2021"><a class="ui-state-default" href="#">24</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="25" data-month="5" data-year="2021"><a class="ui-state-default" href="#">25</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="26" data-month="5" data-year="2021"><a class="ui-state-default" href="#">26</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="27" data-month="5" data-year="2021"><a class="ui-state-default" href="#">27</a></td></tr><tr><td class=" " data-handler="selectDay" data-event="click" data-date="28" data-month="5" data-year="2021"><a class="ui-state-default" href="#">28</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="29" data-month="5" data-year="2021"><a class="ui-state-default" href="#">29</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="30" data-month="5" data-year="2021"><a class="ui-state-default" href="#">30</a></td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="1">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="2">&nbsp;</td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="3">&nbsp;</td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="4">&nbsp;</td></tr></tbody></table></div><div class="ui-datepicker-group ui-datepicker-group-last"><div class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-right"><a class="ui-datepicker-next ui-corner-all ui-state-disabled" title="Next"><span class="ui-icon ui-icon-circle-triangle-e">Next</span></a><div class="ui-datepicker-title"><span class="ui-datepicker-month">七月</span>&nbsp;<span class="ui-datepicker-year">2021</span></div></div><table class="ui-datepicker-calendar"><thead><tr><th scope="col"><span title="星期一">一</span></th><th scope="col"><span title="星期二">二</span></th><th scope="col"><span title="星期三">三</span></th><th scope="col"><span title="星期四">四</span></th><th scope="col"><span title="星期五">五</span></th><th scope="col" class="ui-datepicker-week-end"><span title="星期六">六</span></th><th scope="col" class="ui-datepicker-week-end"><span title="星期日">日</span></th></tr></thead><tbody><tr><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="28">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="29">&nbsp;</td><td class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="30">&nbsp;</td><td class=" " data-handler="selectDay" data-event="click" data-date="1" data-month="6" data-year="2021"><a class="ui-state-default" href="#">1</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="2" data-month="6" data-year="2021"><a class="ui-state-default" href="#">2</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="3" data-month="6" data-year="2021"><a class="ui-state-default" href="#">3</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="4" data-month="6" data-year="2021"><a class="ui-state-default" href="#">4</a></td></tr><tr><td class=" " data-handler="selectDay" data-event="click" data-date="5" data-month="6" data-year="2021"><a class="ui-state-default" href="#">5</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="6" data-month="6" data-year="2021"><a class="ui-state-default" href="#">6</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="7" data-month="6" data-year="2021"><a class="ui-state-default" href="#">7</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="8" data-month="6" data-year="2021"><a class="ui-state-default" href="#">8</a></td><td class=" " data-handler="selectDay" data-event="click" data-date="9" data-month="6" data-year="2021"><a class="ui-state-default" href="#">9</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="10" data-month="6" data-year="2021"><a class="ui-state-default" href="#">10</a></td><td class=" ui-datepicker-week-end " data-handler="selectDay" data-event="click" data-date="11" data-month="6" data-year="2021"><a class="ui-state-default" href="#">11</a></td></tr><tr><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="12"><span class="ui-state-default">12</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="13"><span class="ui-state-default">13</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="14"><span class="ui-state-default">14</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="15"><span class="ui-state-default">15</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="16"><span class="ui-state-default">16</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled " data-date="17"><span class="ui-state-default">17</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled " data-date="18"><span class="ui-state-default">18</span></td></tr><tr><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="19"><span class="ui-state-default">19</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="20"><span class="ui-state-default">20</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="21"><span class="ui-state-default">21</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="22"><span class="ui-state-default">22</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="23"><span class="ui-state-default">23</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled " data-date="24"><span class="ui-state-default">24</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled " data-date="25"><span class="ui-state-default">25</span></td></tr><tr><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="26"><span class="ui-state-default">26</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="27"><span class="ui-state-default">27</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="28"><span class="ui-state-default">28</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="29"><span class="ui-state-default">29</span></td><td class=" ui-datepicker-unselectable ui-state-disabled " data-date="30"><span class="ui-state-default">30</span></td><td class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled " data-date="31"><span class="ui-state-default">31</span></td><td class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled" data-date="1">&nbsp;</td></tr></tbody></table></div><div class="ui-datepicker-row-break"></div></div><div id="_j_pc_app_guide" style="position: fixed; right: 20px; bottom: 20px; z-index: 10; display: none;"><i id="_j_pc_app_guide_close_btn" style="width: 20px;height: 20px;border-radius: 20px;color:#fff;background: rgba(0,0,0,0.4);position: absolute;top:10px;right: 10px;font-size: 20px;font-style: normal;text-align: center;line-height: 20px;cursor: pointer;">×</i><img src="https://images.mafengwo.net/images/hotel/pc_app_guide/qrcode_new_user_coupon.png" style="width: 150px;height: 175px;"></div><script type="text/javascript" src="https://webapi.amap.com/maps?v=1.3&amp;key=b2cf7b957c24323add8c497ed3512e15&amp;callback=initAMap"></script><p class="rec-tips-nowrap" style="left: 570px; top: 1062px; display: none;">可用微信支付</p><div id="_j_layer_1" class="layer _j_layer" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; z-index: 10000; display: none;">                                <div class="layer_mask _j_mask" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; background: rgb(0, 0, 0) none repeat scroll 0% 0%; opacity: 0.7; z-index: -1;"></div>                                <div class="layer_content _j_content" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; z-index: 0; overflow: hidden;"><div class="popup-box hotel-fav-dialog pop_no_margin" style="position: absolute; opacity: 0; background: rgb(255, 255, 255) none repeat scroll 0% 0%; z-index: 0; width: 350px; left: 776.5px; top: 225.778px; display: none;"><div class="popup-title"><h2>将酒店收藏到</h2><a href="javascript:;" class="close-btn _j_close"><i></i></a></div><div class="packet-list"><ul></ul></div><div class="popup-packet"><div class="cre-group"><a href="javascript:;"><i></i>创建个性分组</a><button type="button" style="display:none;">完成</button></div><div class="int-name" style="display:none;"><input type="text" placeholder="分组名称"><a href="javascript:;">确定</a></div></div></div></div>                            </div>    <style>
    .pop-reviews {
        width: 850px;
        top: 5%;
        margin: 0 0 0 -465px;
        padding: 35px 40px 40px;
        background-color: #fff;
    }
</style>
<script type="text/x-jquery-tmpl" id="_j_wengdialog">
<div class="_j_weng_form_cnt"></div>

    </script>


<div id="_j_layer_2" class="layer _j_layer" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; z-index: 1000; display: none;">                                <div class="layer_mask _j_mask" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; background: rgb(0, 0, 0) none repeat scroll 0% 0%; opacity: 0.7; z-index: -1;"></div>                                <div class="layer_content _j_content" style="position: fixed; width: 100%; height: 100%; top: 0px; left: 0px; z-index: 0; overflow: hidden;"></div>                            </div></body></html>