<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/8/26
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>添加角色</title>
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
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>角色名称</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rname" name="rname" required="" lay-verify="rname"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rdescribe" class="layui-form-label">
                    <span class="x-red"></span>角色描述</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rdescribe" name="rdescribe" required="" lay-verify="rdescribe"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
<%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">增加</button>
            </div>
        </form>
    </div>
</div>
<script>layui.use(['form', 'layer', 'jquery'],
    function () {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            rname: function (value) {
                if (value.length < 2) {
                    return '角色名至少得2个字符啊';
                }
            },
            pass: [/(.+){3,12}$/, '密码必须3到12位'],
            repass: function (value) {
                if ($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });

        //监听提交
        form.on('submit(add)',
            function (data) {

                $.ajax({
                    async: false,
                    type: "post",
                    url: "<%=path%>manager/addRole.action",
                    dataType: "json",
                    data: data.field,
                    success: function (map) {
                        if (map == "1") {
                            layer.alert("添加成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        } else {
                            layer.msg("添加失败,稍后重试");
                        }
                    }
                })
                return false;
            });
    });
</script>

</body>

</html>
