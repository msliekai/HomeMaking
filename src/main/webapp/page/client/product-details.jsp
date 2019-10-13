<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/10/1
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath() + "/";
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LK家政</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=path%>page/client/shopgrid/img/favicon.png">
    <!-- bootstrap v4.0.0 -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- linear-icons css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/linear-icons.css">
    <!-- elegant css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/elegant.css">
    <!-- animate css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/animate.css">
    <!-- jquery.mmenu css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/mmenu/dist/mmenu.css"/>
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/jquery-ui.min.css">
    <!-- slick css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/slick.css">
    <!-- slick-theme css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/slick-theme.css">
    <!-- venobox css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/venobox.css">
    <!-- helper css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/helper.css">
    <!-- style css -->
    <link rel="stylesheet" href="<%=path%>page/client/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/responsive.css">
    <%--layui--%>
    <link rel="stylesheet" href="<%=path%>page/src/css/layui.css" media="all">
    <script src="<%=path%>page/src/layui.js"></script>
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">
    <!-- all css here -->
    <%--    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/animate.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/themify-icons.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/icofont.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/meanmenu.min.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/bundle.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/style.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/responsive.css">
    <script src="<%=path%>page/client/shopgrid/js/vendor/modernizr-2.8.3.min.js"></script>



</head>
<body>
<!--header-top-->
<jsp:include page="top1.jsp" flush="true"/>
<!--header-bottom-->
<jsp:include page="top2.jsp" flush="true"/>
<!--header-ends-->

<body>

<!-- header start -->
<!-- header end -->
<div class="product-details ptb-100 pb-90">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-7 col-12">
                <div class="product-details-img-content">
                    <div class="product-details-tab mr-70">
                        <div class="product-details-large tab-content">
                            <div class="tab-pane active show fade" id="pro-details1" role="tabpanel">
                                <div >
                                    <a>
                                        <img src="<%=path%>${requestScope.staff.sfurl}" alt="">
                                    </a>
                                </div>
                            </div>

                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-5 col-12">
                <div class="product-details-content">
                    <h3>${requestScope.staff.sfname}</h3>
<%--                    <div class="rating-number">--%>
<%--                        <div class="quick-view-number">--%>
<%--                            <span>星级：</span>--%>
<%--                        </div>--%>
<%--                        <div class="quick-view-rating">--%>
<%--                            <i class="pe-7s-star red-star"></i>--%>
<%--                            <i class="pe-7s-star red-star"></i>--%>
<%--                            <i class="pe-7s-star"></i>--%>
<%--                            <i class="pe-7s-star"></i>--%>
<%--                            <i class="pe-7s-star"></i>--%>
<%--                        </div>--%>

<%--                    </div>--%>

<%--                    <p>擅长</p>--%>
<%--                    <p>唱跳</p>--%>
                    <div class="product-details-cati-tag mt-35">
                        <ul>
                            <li class="categories-title">服务类型 :</li>
                            <li><a>${requestScope.staff.tblCOStype.ctname}</a></li>
                        </ul>
                    </div>
                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">服务事项 :</li>
                            <li><a>${requestScope.staff.tblCOS.cosname}</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">服务经验 :</li>
                            <li><a>${requestScope.staff.sfexp}年</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">出生日期 :</li>
                            <li><a>${requestScope.staff.sfdob}</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">性别 :</li>
                            <li><a>${requestScope.staff.sfage}</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">公司 :</li>
                            <li><a>${requestScope.staff.company.fname}</a></li>
                            /公司地址：
                            <li><a>${requestScope.staff.company.fsite}</a></li>
                        </ul>
                    </div>

                    <div class="details-price">
                        <span>${requestScope.staff.sfcos}元/次</span>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <div class="layui-btn-group">

                            <button class="layui-btn site-demo-layim" data-type="chat">咨询</button>
                            <c:if test="${requestScope.staff.tblsfcoll==null}">
                                <button type="button" class="layui-btn layui-btn-warm" onclick="proCollections(${requestScope.staff.sfid})">收藏</button>
                            </c:if>
                            <c:if test="${requestScope.staff.tblsfcoll!=null}">
                                <button type="button" class="layui-btn layui-btn-warm" onclick="proDelcollections(${requestScope.staff.tblsfcoll.scoid})">取消收藏</button>
                            </c:if>

                        </div>
                    </div>

                </div>



            </div>

                <div>
                    <hr/>
                    <h3>我要预约</h3>
                    <form>
                        <input type="hidden" id="fid" name="fid" value="${requestScope.staff.company.fid}"/>
                        <input type="hidden" id="sfid" name="sfid" value="${requestScope.staff.sfid}"/>
                        <input type="hidden" id="cosid" name="cosid" value="${requestScope.staff.tblCOS.cosid}"/>
                        <input type="hidden" id="money" name="money" value="${requestScope.staff.sfcos}"/>
                        <input type="hidden" id="fphone" name="fphone" value="${requestScope.company.fphone}"/>
                        <input type="hidden" id="fname" name="fname" value="${  requestScope.staff.company.fname}"/>

                    <div class="col-lg-12">
                        <div class="form-group">
                            <label for="sid">地址：</label>
                            <select class="form-control" id="sid" name="sid">
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="ophone">联系电话：</label>
                            <input type="text" id="ophone" name="ophone" class="form-control" value="${sessionScope.userbacc.userphone}">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label for="ocontext">其他要求：</label>
                            <textarea class="form-control" id="ocontext" name="ocontext"></textarea>
                        </div>
                    </div>
                        <input type="button" class="layui-btn layui-btn-normal" onclick="Appointord()" value="确认预约"/>
                    </form>

                </div>
        </div>
    </div>
</div>
<div class="product-description-review-area pb-90">
    <div class="container">
        <div class="product-description-review text-center">
            <div class="description-review-title nav" role=tablist>
                <a class="active" href="#pro-dec" data-toggle="tab" role="tab" aria-selected="true">
                    用户评价
                </a>
<%--                <a href="#pro-review" data-toggle="tab" role="tab" aria-selected="false">--%>
<%--                    Reviews (0)--%>
<%--                </a>--%>
            </div>
            <div class="description-review-text tab-content">
                <div class="tab-pane active show fade" id="pro-dec" role="tabpanel">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in</p>
                </div>
<%--                <div class="tab-pane fade" id="pro-review" role="tabpanel">--%>
<%--&lt;%&ndash;                    <a href="#">Be the first to write your review!</a>&ndash;%&gt;--%>
<%--                </div>--%>
            </div>
        </div>
    </div>
</div>

    <jsp:include page="bottom.jsp" flush="true"/>


    <!-- modernizr js -->
    <script src="<%=path%>page/client/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <!-- jquery-3.4.1 version -->
    <script src="<%=path%>page/client/assets/js/vendor/jquery-3.4.1.min.js"></script>
    <!-- jquery-migrate-3.1.0.min.js version -->
    <script src="<%=path%>page/client/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
    <!-- bootstra.min js -->
    <script src="http://cdn.bootstrapmb.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!-- mmenu js -->
    <script src="<%=path%>page/client/assets/mmenu/dist/mmenu.js"></script>
    <script src="<%=path%>page/client/assets/mmenu/src/mmenu.debugger.js"></script>
    <!-- jquery-ui.min js -->
    <script src="<%=path%>page/client/assets/js/jquery-ui.min.js"></script>
    <!---slick-js-->
    <script src="<%=path%>page/client/assets/js/slick.min.js"></script>
    <!---counterup-js-->
    <script src="<%=path%>page/client/assets/js/jquery.counterup.min.js"></script>
    <!---waypoints-js-->
    <script src="<%=path%>page/client/assets/js/waypoints.js"></script>
    <!---isotop-js-->
    <script src="<%=path%>page/client/assets/js/isotope.pkgd.min.js"></script>
    <!-- jquery.countdown js -->
    <script src="<%=path%>page/client/assets/js/jquery.countdown.min.js"></script>
    <!---venobox-js-->
    <script src="<%=path%>page/client/assets/js/venobox.min.js"></script>
    <!-- all js here -->
    <script src="<%=path%>page/client/shopgrid/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/popper.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/bootstrap.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/isotope.pkgd.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/imagesloaded.pkgd.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/jquery.counterup.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/waypoints.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/ajax-mail.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/owl.carousel.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/plugins.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/main.js"></script>
    <%--bootstrap分页--%>
    <script src="<%=path%>page/client/js/bootstrap-paginator.js"></script>
    <script src="<%=path%>page/client/js/pageing.js"></script>
    <%--layui--%>
    <script src="<%=path%>page/layui/layui.js"></script>
    <%--我的js--%>
    <script src="<%=path%>page/client/js/chome.js"></script>

    <script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ" type="text/javascript"></script>
<%--    <script src="<%=path%>page/client/js/baidumap.js"></script>--%>
</body>
<script>
    $(document).ready(function(){
        $("#sid").ready(function(){
            querySity();
        })
    })
    /**
     * 获得地址
     */
    function querySity(){
        layui.use('layer', function () {
            $.ajax({
                async: true,
                type: "post", //提交方式
                url: "<%=path%>admin/querySite.action",
                success: function (jso) {//执行结果
                    var ht="";
                    if(jso.defaulAddress!=null){
                        var defaul=jso.defaulAddress;
                        ht+="<option value='"+ defaul.sid +"' >"+ defaul.sa+"-"+defaul.sb+"-"+defaul.sc+"-"+defaul.scontext+"（默认地址）</option>";
                    }

                    $.each(jso.list,function(k,v){
                        ht+="<option value='"+ v.sid +"' >"+ v.sa+"-"+v.sb+"-"+v.sc+"-"+v.scontext+"</option>";
                    })
                    $("#sid").html(ht);
                },
            })
        })
    }

    function mapre(){

        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "<%=path%>admin/myMap.action",
            success: function (jso) {//执行结果
                $("#ccypt").text("正在获取位置......");
                if(jso.csc!=null){
                    $("#ccypt").text(jso.csc);
                }else{
                    //创建百度地图控件
                    var geolocation = new BMap.Geolocation();
                    geolocation.getCurrentPosition(function (r) {
                        if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                            //以指定的经度与纬度创建一个坐标点
                            var pt = new BMap.Point(r.point.lng, r.point.lat);
                            //创建一个地理位置解析器
                            var geoc = new BMap.Geocoder();
                            geoc.getLocation(pt, function (rs) {//解析格式：城市，区县，街道
                                var addComp = rs.addressComponents;
                                $("#ccypt").text(addComp.city);
                                //保存
                                addd(addComp.city);
                            });
                        } else {
                            $("#ccypt").text('定位失败');
                        }
                    }, {enableHighAccuracy: true})//指示浏览器获取高精度的位置，默认false
                }
            },
            error:function (jso) {
                $("#ccypt").text("定位失败,出现异常");
            }
        });

    }


    //保存
    function addd(csc) {
        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "<%=path%>admin/myMap.action",
            data:{
                "csc":csc,
            },
            success: function (jso) {//执行结果

            }
        })
    }
    //启动
    mapre();

    //保存
    function queryEva() {
        var sfid=$("#sfid");
        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "<%=path%>admin/queryEva.action",
            data:{
                "sfid":sfid.val(),
            },
            success: function (jso) {//执行结果
                var htm="";
                if(jso.length>0){
                    $.each(jso,function(k,v){
                        htm+="<h4>匿名用户"+(k+1) +"</h4>";
                        htm+="<p>评价："+v.econtext+"</p>";
                        htm+="<span>所选服务："+v.cosname+"评价时间："+v.etime+"</span>";
                    });
                }else{
                    htm+="<p>暂无评价</p>";
                }
                $("#pro-dec").html(htm);
            }
        })
    }
// $("#queryEva").ready(function () {
    window.onload=queryEva();
// })
</script>
<script>
<%--聊天--%>
var userid = "${userbacc.userphone}";
var uname =  "${userbacc.username}";
var avatar = "<%=path%>${userbacc.userurl}";
var fname = "${requestScope.staff.company.fname}";
var fphone = "${requestScope.staff.company.fphone}";

var system ={};
var p = navigator.platform;
system.win = p.indexOf("Win") == 0;
system.mac = p.indexOf("Mac") == 0;
system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
// if (system.win||system.mac||system.xll) {
var socket = null;
//连接websocket的ip地址
var ip = "crm.natapp1.cc";
//动态修改查
var im = {
init: function () {
if ('WebSocket' in window) {
var socketUrl = "ws://localhost:8080/HomeMaking_war_exploded/websocketTest/" + '${userbacc.userphone}';
socket = new WebSocket(socketUrl);
im.startListener();
} else {
alert('当前浏览器不支持WebSocket功能，请更换浏览器访问。');
}
},
startListener: function () {
console.log(socket);
if (socket) {
// 连接发生错误的回调方法
socket.onerror = function () {
console.log("通讯连接失败!");
};
// 连接成功建立的回调方法
socket.onopen = function (event) {
console.log("通讯连接成功");
}
// 接收到消息的回调方法
socket.onmessage = function (event) {
console.log("通讯接收到消息");
im.handleMessage(event.data);
}
// 连接关闭的回调方法
socket.onclose = function () {
console.log("通讯关闭连接！!");
}
}
},
handleMessage: function (msg) {
console.log(msg);
if(msg=="1"){
layer.msg("该聊天对象不在线，请电话联系！"+fphone);
}else {
msg = JSON.parse(msg);
layim.getMessage(msg);
}
}
};
im.init();

layui.use('layim', function(layim){
var $ = layui.jquery;
window.layim = layim;
layim.config({
    //我的信息
    mine: {
        "username":uname  //我的昵称
        ,"id": userid //我的ID
        ,"avatar": avatar //我的头像
    },
brief: false //是否简约模式（如果true则不显示主面板）
});
layim.on('sendMessage', function(data){
    console.log(layim.cache());
    var To = data.to;
if(To.type === 'friend'){
// layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
}
socket.send(To.id+"-f,t-"+data.mine.content+"-f,t-"+userid+"-f,t-"+uname+"-f,t-"+avatar);
});
//面板外的操作
var $ = layui.jquery, active = {
chat: function(){
//自定义会话
layim.chat({
name:" ${requestScope.staff.company.fname}"
,type: 'friend'
,avatar: '<%=path%>portrait/M.jpg'
,id: "${requestScope.staff.company.fphone}"
});
}
};
$('.site-demo-layim').on('click', function(){
var type = $(this).data('type');
active[type] ? active[type].call(this) : '';
});
});
</script>
</html>

