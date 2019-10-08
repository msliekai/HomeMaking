
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>

</head>
<body>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>

            <div class="layui-form-item">
                <label for="usermoney" class="layui-form-label">
                    <span class="x-red">*</span>充值金额</label>
                <div class="layui-input-inline">
                    <input type="text" id="usermoney" name="usermoney" required="" lay-verify="pay" placeholder="1-10000"
                           autocomplete="off" class="layui-input" style="width: 100px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="Upwd" class="layui-form-label">
                    <span class="x-red">*</span>账户密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="Upwd" name="Upwd" required="" lay-verify="pass" placeholder="请输入密码"
                           autocomplete="off" class="layui-input" style="width: 100px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="Upwd2" class="layui-form-label">
                    <span class="x-red">*</span>确认密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="Upwd2" name="Upwd2" required="" lay-verify="pass" placeholder="再次输入密码"
                           autocomplete="off" class="layui-input" style="width: 100px">
                </div>
            </div>
            <div align="center" class="layui-form-item">
                <%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">充值</button>
            </div>
        </form>
    </div>
</div>
<script>
    layui.use(['form', 'layer', 'jquery'],
    function () {
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            pay:[/^([1-9]\d{0,3}|10000)$/,'请输入1-10000的整数金额']
            ,pass: [
                /^[a-zA-Z]\w{5,17}$/
                ,'密码长度在6~18之间，只能包含字母、数字和下划线，必须以字母开头'
            ]
        });


        //监听提交
        form.on('submit(add)',
            function (data) {

                $.ajax({
                    async: false,
                    type: "post",
                    url: "<%=path%>admin/jUserPay.action",
                    data: data.field,
                    success: function (bac) {
                        if (bac == "1") {
                            /*layer.msg("添加成功")*/
                            layer.alert("充值成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        } else {
                            layer.msg("充值失败");
                        }
                    }
                })
                return false;
            });
    });

</script>

</body>

</html>
