<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/21 0021
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath() + "/";
%>
<html lang="en">
<head>
    <title>个人中心</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style2.css">

    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/jquery-ui.min.css">
    <%--layui--%>
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css" media="all">
    <script src="<%=path%>page/layui/layui.js"></script>

</head>

<body>

<!-- Header -->
<div class="header-wrap d-none d-md-block">
    <div class="container">
        <div class="row">

            <!-- Left header box -->
            <header class="col-6 text-left">
                <h1>欢迎你 &nbsp ${sessionScope.userbacc.username}</h1>
            </header>
        </div>
    </div>
</div>


<!-- Main navigation主导航 -->
<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container">

        <!-- Company name shown on mobile -->
        <a class="navbar-brand d-md-none d-lg-none d-xl-none" href="#">MyCompany</a>

        <!-- Mobile menu toggle -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar" aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Main navigation items -->
        <div class="collapse navbar-collapse" id="mainNavbar">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="<%=path%>page/client/chome.jsp">首页<span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">个人中心</a>
                    <div class="dropdown-menu navbar-dark bg-primary">
                        <%--<a class="dropdown-item" href="examples.html">Style Examples</a>--%>
                        <a class="dropdown-item" href="<%=path%>page/client/UserData.jsp" target="main">基本信息</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserBalance.jsp" target="main">我的账户</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserOrder.jsp" target="main">我的订单</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserAppraise.jsp" target="main">我的评价</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserFoot.jsp" target="main">我的足迹</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserCollect.jsp" target="main">我的收藏</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserHistory.jsp" target="main">历史服务</a>
                        <a class="dropdown-item" href="<%=path%>page/client/UserSite.jsp" target="main">我的地址</a>
                    </div>
                </li>


                <li class="nav-item">
                    <a class="nav-link" onclick="exc()">退出登录</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<!-- Main content area主要内容 -->
<main class="container">
    <div class="row">

        <!-- Sidebar左侧栏 -->
        <aside class="col-sm-4">
            <div class="sidebar-box">
                <h4>个人中心</h4>
                <div class="list-group list-group-root">
                    <a class="list-group-item" href="<%=path%>page/client/UserData.jsp" target="main">基本信息</a>
                    <a class="list-group-item" href="<%=path%>page/client/UserBalance.jsp" target="main">我的账户</a>

                    <a class="list-group-item" href="<%=path%>page/client/UserOrder.jsp" target="main">我的订单</a>
                    <a class="list-group-item" href="<%=path%>page/client/UserAppraise.jsp" target="main">我的评价</a>
                    <a class="list-group-item" href="<%=path%>page/client/UserFoot.jsp" target="main">我的足迹</a>
                    <a class="list-group-item" href="<%=path%>page/client/UserCollect.jsp" target="main">我的收藏</a>
                    <a class="list-group-item" href="<%=path%>page/client/UserHistory.jsp" target="main">历史服务</a>
                    <a class="list-group-item" href="<%=path%>page/client/UserSite.jsp" target="main">我的地址</a>
                </div>
            </div>
            <%--帮助小链接--%>
            <div class="sidebar-box">
                <h4>Helpful Links</h4>
                <ul>
                    <li><a href="#" title="premium templates">Premium HTML web templates from $10</a></li>
                    <li><a href="#" title="web hosting">Cheap web hosting from Dreamhost</a></li>
                    <li><a href="#" title="Tux Themes">Premium WordPress themes</a></li>
                </ul>
            </div>
        </aside>

        <!-- Main content 主页1 -->
        <div class="col-sm-8" style="width: 100% ;height: 480px;">
                <article>
                    <iframe width="100%" align="center" height="100%" id="main" name="main" frameborder="no" boborder="0" src="<%=path%>page/client/UserData.jsp"></iframe>
                </article>
        </div>
    </div>
</main>


<!-- Footer底部 -->
<%--<footer class="footer">
    <div class="footer-lists">
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <ul>
                        <li><h4>Proin accumsan</h4></li>
                        <li><a href="#">Rutrum nulla a ultrices</a></li>
                        <li><a href="#">Blandit elementum</a></li>
                        <li><a href="#">Proin placerat accumsan</a></li>
                        <li><a href="#">Morbi hendrerit libero </a></li>
                        <li><a href="#">Curabitur sit amet tellus</a></li>
                    </ul>
                </div>
                <div class="col-sm">
                    <ul>
                        <li><h4>Condimentum</h4></li>

                        <li><a href="#">Curabitur sit amet tellus</a></li>
                        <li><a href="#">Morbi hendrerit libero </a></li>
                        <li><a href="#">Proin placerat accumsan</a></li>
                        <li><a href="#">Rutrum nulla a ultrices</a></li>
                        <li><a href="#">Cras dictum</a></li>
                    </ul>
                </div>
                <div class="col-sm">
                    <ul>
                        <li><h4>Suspendisse</h4></li>
                        <li><a href="#">Morbi hendrerit libero </a></li>
                        <li><a href="#">Proin placerat accumsan</a></li>
                        <li><a href="#">Rutrum nulla a ultrices</a></li>
                        <li><a href="#">Curabitur sit amet tellus</a></li>
                        <li><a href="#">Donec in ligula nisl.</a></li>
                    </ul>
                </div>
                <div class="col-sm">
                    <h4>Suspendisse</h4>
                    <p>Integer mattis blandit turpis, quis rutrum est. Maecenas quis arcu vel felis lobortis iaculis fringilla at ligula. Nunc dignissim porttitor dolor eget porta.</p>

                    <p class="social-icons">
                        <a href="#"><i class="fa fa-facebook fa-2x"></i></a>
                        <a href="#"><i class="fa fa-twitter fa-2x"></i></a>
                        <a href="#"><i class="fa fa-youtube fa-2x"></i></a>
                        <a href="#"><i class="fa fa-instagram fa-2x"></i></a>
                    </p>
                </div>
            </div>
        </div>
    </div>


    <div class="footer-bottom">
        <p class="text-center"><a href="#">Back to top</a></p>
    </div>

</footer>--%>



<!-- Bootcamp JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

<!-- jquery-3.4.1 version -->
<script src="<%=path%>page/client/assets/js/vendor/jquery-3.4.1.min.js"></script>
<!-- jquery-ui.min js -->
<script src="<%=path%>page/client/assets/js/jquery-ui.min.js"></script>

<script type="text/javascript">

    function zhedie(a) {
        if(document.getElementById(a+"s").style.display.length<1){
            document.getElementById(a+"s").style.display="none";
        }else{
            document.getElementById(a+"s").style.display="";
        }

    }
</script>
<script>
    function SetWinHeight(obj)
    {
        var win=obj;
        if (document.getElementById)
        {
            if (win && !window.opera)
            {
                if (win.contentDocument && win.contentDocument.body.offsetHeight)
                    win.height = win.contentDocument.body.offsetHeight;
                else if(win.Document && win.Document.body.scrollHeight)
                    win.height = win.Document.body.scrollHeight;
            }
        }
    }

    function exc() {
        var result = confirm('是否注销！');
        if(result){
            $.ajax({
                url: "<%=path%>admin/userEsc.action",
                type: "POST",
                success: function (obj) {
                    if (obj.flog == "by") {
                        alert("已注销"),
                            location.href="<%=path%>page/client/chome.jsp";
                    }
                }
            })
        }else{
            alert('操作取消！');
        }

    }

</script>

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
</body>
</html>
