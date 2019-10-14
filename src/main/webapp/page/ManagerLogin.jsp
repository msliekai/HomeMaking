<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/8/23
  Time: 0:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath()+"/"; %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>管理端登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/login.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
    <script src="<%=path%>page/Xadmin/js/layui.js" charset="utf-8"></script>

</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">管理员</div>
    <div id="darkbannerwrap"></div>

    <form method="post" action="<%=path%>manager/adminLogin.action" >
        <input id="aname" name="userphone" placeholder="用户名" type="text" lay-verify="required" class="layui-input"
               value="">
        <hr class="hr15">
        <input name="userpwd" lay-verify="required" placeholder="密码" type="password" class="layui-input" value="">
        <hr class="hr15">
        <span>验证码：
             <img src="<%=path%>serial/getimage.action" id="Verify"style="cursor:hand;" alt="看不清，换一张"/>
				<span id="verclo" class="round-boarder1">看不清？换一张</span>
        </span>
        <input type="text" name="securityCode" placeholder="验证码" />
        <hr class="hr15">
        <input value="登录" style="width:100%;" type="submit">
        <span style="color: aliceblue">--</span>
<%--        <input value="注册" lay-submit  style="width:100%;" type="submit">--%>
        <hr class="hr20">
    </form>
</div>

<script>
    //点击切换验证码
    $(function () {
        //点击图片更换验证码
        $("#verclo").click(function(){
            $("#Verify").attr("src","<%=path%>serial/getimage.action?timestamp="+new Date().getTime());
        });
    });
</script>

</body>
</html>

<%
    String flog=(String) request.getAttribute("flog");

    if(flog=="loginErr"){
%>
<script>
    alert("账号密码错误")
</script>
<%
}else if(flog=="securityCodeErr"){
%>
<script>
    alert("验证码错误")
</script>
<%
    }
%>