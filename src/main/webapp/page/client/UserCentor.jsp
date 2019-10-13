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

                <%--导航栏分支--%>
                <%--<li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>--%>
            </ul>
            <%--搜索栏--%>
            <%--<form class="form-inline header-search-form my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="text" size="10"  placeholder="Search" aria-label="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>--%>
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

</body>
</html>
