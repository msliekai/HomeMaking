
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
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
                <label for="useroldcard" class="layui-form-label">
                    <span class="x-red">*</span>旧银行卡</label>
                <div class="layui-input-inline">
                    <input type="text" id="useroldcard" name="useroldcard" required=""
                           autocomplete="off" class="layui-input" style="width: 200px" readonly="readonly" value="${sessionScope.userbacc.usercard}">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="usercard" class="layui-form-label">
                    <span class="x-red">*</span>新银行卡</label>
                <div class="layui-input-inline">
                    <input type="text" id="usercard" name="usercard" required="" lay-verify="card" placeholder="15-19位银行卡号"
                           autocomplete="off" class="layui-input" style="width: 200px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="userpwd" class="layui-form-label">
                    <span class="x-red">*</span>账户密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="userpwd" name="userpwd" required="" lay-verify="pass" placeholder="请输入密码"
                           autocomplete="off" class="layui-input" style="width: 200px">
                </div>
            </div>
            <div align="center" class="layui-form-item">
                <%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">修改</button>
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
            card:[/^([1-9]{1})(\d{14}|\d{18})$/,'请输入正确的银行卡号']
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
                    url: "<%=path%>admin/jUserCard.action",
                    data: data.field,
                    success: function (bac) {
                        if (bac == "1") {
                            /*layer.msg("添加成功")*/
                            layer.alert("修改成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        } else {
                            layer.msg("修改失败");
                        }
                    }
                })
                return false;
            });
    });

</script>

</body>

</html>
