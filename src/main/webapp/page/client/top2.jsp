<%@ page import="com.hm.entity.TblUser" %><%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/20
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath() + "/";
%>
<%
    String sn = request.getServerName() ;
%>
<%
    String port = request.getServerPort() +"";
%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>-</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<nav class="navbar navbar-inverse navbar-fixed-top">--%>
<header>
    <div class="header-bottom-area" id="sticker">
        <div class="container">
            <!--mainmenu-->
            <div class="row align-items-center">
                <div class="col-lg-9 col-6">
                    <div class="mainmenu">
                        <nav>
                            <ul class="list-none">
                                <li><a href="<%=path%>page/client/chome.jsp">首页</a></li>
                                <li><a href="#">服务
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="<%=path%>page/client/shopa.jsp">所有服务</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=品类保洁">品类保洁</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=日常保洁">日常保洁</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=保姆">保姆</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=月嫂">月嫂</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=育儿嫂">育儿嫂</a></li>
                                        <%--                                        <li><a href="<%=path%>page/client/service-details.jsp">照顾宠物</a></li>--%>
                                    </ul>
                                </li>
                                <li><a href="<%=path%>page/client/blog.jsp">资讯</a></li>

                                <li><a href="#" onclick="robot();return false;">联系客服</a></li>

                            </ul>

                        </nav>
                    </div>

                    <!--mobile-tblmenu-->
                    <!--mobile logo-->
                    <div class="d-hidden mobile-logo">
                        <div class="logo">
                            <a href="<%=path%>page/client/chome.jsp"><img
                                    src="<%=path%>page/client/assets/images/logo.png" alt=""/></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <div class="cart-search text-right">
                        <ul class="list-none">
                            <c:if test="${null==userbacc}">
                                <li class="ml-25"><a href="<%=path%>page/client/signin.jsp">登陆</a></li>
                                <li class="ml-25"><a href="<%=path%>page/client/signup.jsp">注册</a></li>
                            </c:if>
                            <c:if test="${null!=userbacc}">
                                <li class="ml-25">
                                    <a href="<%=path%>page/client/UserCentor.jsp">
                                        <figure style="width: 50px;height: 0px;">
                                            <img class="img-circle" src="<%=path%>${sessionScope.userbacc.userurl}"
                                                 alt="头像"/>
                                        </figure>
                                    </a>
                                </li>
                                <li class="ml-25"><a href="<%=path%>page/client/UserCentor.jsp">${sessionScope.userbacc.username}</a>
                                </li>
                                <li class="ml-25"><button class="layui-btn layui-btn-sm layui-btn-radius layui-btn-normal" onclick="exc()">退出</button></li>

                                </li>
                            </c:if>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<%--</nav>--%>
<%--</body>--%>
<script>
    <%--聊天--%>
    var userid = "${userbacc.userphone}";
    var uuname =  "${userbacc.username}";
    var avatar = "<%=path%>${userbacc.userurl}";
    var system ={};
    if (userid.length>0) {
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
                    var socketUrl = "ws://<%=sn%>:<%=port%><%=path%>websocketTest/" + '${userbacc.userphone}';
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
                    if (fphone.length>0){
                        layer.msg("该聊天对象不在线，请电话联系！"+fphone);
                    } else {
                        layer.msg("该聊天对象不在线，请电话联系！");
                    }
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
                init: {
                    //配置客户信息
                    mine: {
                        "username":uuname  //我的昵称
                        ,"id": userid //我的ID
                        ,"avatar": avatar //我的头像
                    }
                },uploadImage: {
                    url: '<%=path%>sns/uploadFile.action?userId='+userid
                    // ,type: '' //默认post
                } ,
                uploadFile: {
                    url: '<%=path%>sns/uploadFile.action?userId='+userid
                },
                brief: false //是否简约模式（如果true则不显示主面板）
                ,title:"我的通讯"
                ,min:true
            });
            layim.on('sendMessage', function(data){
                var To = data.to;
                if(To.type === 'friend'){
                    layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
                }
                socket.send(To.id+"-f,t-"+data.mine.content+"-f,t-"+userid+"-f,t-"+uuname+"-f,t-"+avatar);
            });
        });

    }
</script>
<%--机器人--%>
<script>
    function robot(){
    layui.use('layim', function(layim){
        //建立websoket
        var socket1 = new WebSocket('ws://<%=sn%>:<%=port%><%=path%>chat');

        var layim1 = layui.layim;
        layim1.config({
            init: {
                //配置客户信息
                mine: {
                    "username": "访客" //我的昵称
                    ,"id": "10086" //我的ID
                    ,"status": "online" //在线状态 online：在线、hide：隐身
                    ,"remark": "在深邃的编码世界，做一枚轻盈的纸飞机" //我的签名
                    ,"avatar": "<%=path%>page/img/kehu.jpg" //我的头像
                }
            }
            //开启客服模式
            ,brief: true
        });
        //打开一个客服面板
        layim1.chat({
            name: '家政机器人' //名称
            ,type: 'kefu' //聊天类型
            ,avatar: '<%=path%>page/img/robot.jpg' //头像
            ,id: 10010 //定义唯一的id方便你处理信息
        });
        //layim.setChatMin(); //收缩聊天面板
        //监听发送消息
        layim1.on('sendMessage', function(data){
            var mine = data.mine;
            layim1.setChatStatus('<span style="color:#FF5722;">在线</span>');
            var obj = {
                username: mine.username,
                avatar: mine.avatar,
                id: mine.id,
                type: '访客',
                content: mine.content
            };
            socket1.send(JSON.stringify(obj));
        });
        //连接成功时触发
        socket1.onopen = function(){
            console.log('访客连接成功');
        };
        //监听收到的消息
        socket1.onmessage = function(res){
                console.log(res);
            layim1.getMessage({
                username: '家政机器人',
                avatar: '<%=path%>page/img/robot.jpg',
                id: 10010,
                type: 'kefu',
                content: res.data
            });
        };
    });
    }
</script>
<%--<script>--%>
<%--    (function(w, d, s, g, o) {--%>
<%--        var x = document.createElement(s)--%>
<%--            ,s = document.getElementsByTagName(s)[0];--%>
<%--        w[g] = o;--%>
<%--        x.async = true;--%>
<%--        x.charset = 'utf-8';--%>
<%--        x.src = 'https://cdn.xiankefu.com/dist/xiankefu.js';--%>
<%--        s.parentNode.insertBefore(x, s);--%>
<%--    })(window, document, 'script', 'XIANKEFU_GLOBAL', {--%>
<%--        bid: 'a2549272c84a3206250dcdcff8fada3f'--%>
<%--        // ,csid: 'a0cdb56bbfe13f03bdcedff6aad0f4c4'--%>
<%--    });--%>
<%--</script>--%>
<%--</html>--%>
