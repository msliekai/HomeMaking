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
    <link rel="stylesheet" href="<%=path%>page/Xdamin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xdamin/css/login.css">
    <link rel="stylesheet" href="<%=path%>page/Xdamin/css/xadmin.css">
    <script type="text/javascript" src="<%=path%>page/Xdamin/js/jquery.min.js"></script>
    <script src="<%=path%>page/Xdamin/js/layui.js" charset="utf-8"></script>

</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">管理员</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form">
        <input id="aname" name="aname" placeholder="用户名" type="text" lay-verify="required" class="layui-input"
               value="">
        <hr class="hr15">
        <input name="apwd" lay-verify="required" placeholder="密码" type="password" class="layui-input" value="">
        <hr class="hr15">
        <span>验证码：
            <img src="serial/getimage.action" id="Verify" style="cursor:hand;" alt="看不清，换一张"/>
            <span id="verclo">看不清，换一个</span>
        </span>
        <input type="text" name="securityCode" placeholder="验证码" />
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <span style="color: aliceblue">--</span>
        <input value="注册" lay-submit  style="width:100%;" type="submit">
        <hr class="hr20">
    </form>
</div>

<script>
    $(function () {
        layui.use('form', function () {
            var form = layui.form;

            //监听提交
            form.on('submit(login)', function (data) {
                var index = layer.load();//layui加载层
                $.ajax({
                    async: true,
                    type: "post",
                    url: "loginAction/adminLogin.action",
                    dataType: "text",
                    data: data.field,
                    success: function (dat) {
                        layer.close(index);//layui加载层关闭

                        if ("success" == dat) {
                            layer.msg('登陆成功(°ー°〃)', {
                                time: 2000
                            }, function () {
                                location.href = "<%=path%>Xadmin/index.jsp";
                            });
                        } else if ("fail" == dat) {
                            layer.msg('登陆失败(*/ω＼*)', {
                                time: 1000
                            }, function () {
                                layer.msg('你不会不知道密码吧(ಥ _ ಥ)', {
                                    time: 2000
                                })
                            });
                        } else {
                            layer.msg('你干了什么，号是不是被封了');
                        }

                    },

                    error: function (dat) {
                        layer.close(index);//layui加载层关闭
                        layer.msg('裂开，你是不是把服务器炸了');
                    }
                })

                return false;
            });

        });
    })
    $(function () {
        //点击图片更换验证码
        $("#verclo").click(function(){
            $("#Verify").attr("src","serial/getimage.action?timestamp="+new Date().getTime());
        });
    });

</script>

</body>
</html>