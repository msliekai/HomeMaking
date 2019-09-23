<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/20
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath()+"/"; %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎登录</title>
    <link rel="stylesheet" href="page/Xdamin/css/style1.css">
    <link rel="stylesheet" href="page/Xdamin/css/swiper.css"/>
    <link rel="stylesheet" href="page/Xdamin/css/example.css"/>
</head>
<body style="background-color:#000">
<!-- 代码部分begin -->
<div class="loader-inner" style="background-color:
#000">
    <div class="loader-line-wrap">
        <div class="loader-line"></div>
    </div>
    <div class="loader-line-wrap">
        <div class="loader-line"></div>
    </div>
    <div class="loader-line-wrap">
        <div class="loader-line"></div>
    </div>
    <div class="loader-line-wrap">
        <div class="loader-line"></div>
    </div>
    <div class="loader-line-wrap">
        <div class="loader-line"></div>
    </div>
</div>
<div class="box">
    <ul>
        <li>
            <img src="<%=path%>page/Xdamin/images/5.jpg" width="190" height="190" alt="">
            <div class="cover">
                <a href="page/CompanyLogin.jsp"><i class="fa fa-plus"></i></a>
                <h4>LieKai</h4>
                <p>家政公司登录</p>
            </div>
        </li>
        <li>
            <img src="<%=path%>page/Xdamin/images/6.jpg" width="190" height="190" alt="">
            <div class="cover">
                <a href="page/ManagerLogin.jsp"><i class="fa fa-plus"></i></a>
                <h4>LieKai</h4>
                <p>管理员登录</p>
            </div>
        </li>
    </ul>
</div>
</body>
</html>
