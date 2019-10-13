
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>订单详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>

</head>
<body>
<%

    String oid = request.getParameter("oid")==null?"":request.getParameter("oid");
    String cosname = request.getParameter("cosname")==null?"":request.getParameter("cosname");
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
    String otime = request.getParameter("otime")==null?"":request.getParameter("otime");
    String osname = request.getParameter("osname")==null?"":request.getParameter("osname");

%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>
            <div class="layui-form-item" >
                <label for="L_trid" class="layui-form-label">
                    <span class="x-red">*</span>订单号</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_trid" name="oid" required="" lay-verify="oid" value="<%=oid%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
            </div>

            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>家政人员姓名</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rname" name="sfname" required="" lay-verify="sfname" value="<%=sfname%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
            </div>
            <div class="layui-form-item" >
                <label for="L_trid" class="layui-form-label">
                    <span class="x-red">*</span>服务</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_cosname" name="cosname" required="" lay-verify="cosname" value="<%=cosname%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rdescribe" class="layui-form-label">
                    <span class="x-red">*</span>所属公司</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rdescribe" name="fname" required="" lay-verify="fname" value="<%=fname%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>订单时间</label>
                <div class="layui-input-inline">
                    <input type="text" id="trsum" name="otime" required="" lay-verify="otime" value="<%=otime%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>状态</label>
                <div class="layui-input-inline">
                    <input type="text" id="trtime" name="osname" required="" lay-verify="osname" value="<%=osname%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
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
            trtitle: function (value) {
                if (value.length < 0) {
                    return '内容不能为空';
                }
            },
            trcontext: function (value) {
                if (value.length < 0) {
                    return '内容不能为空';
                }
            }, trsum: function (value) {
                if (value.length < 0) {
                    return '内容不能为空';
                }
            }, trtime: function (value) {
                if (value.length < 0) {
                    return '内容不能为空';
                }
            }
        });

        //监听提交
        form.on('submit(add)',
            function (data) {

                $.ajax({
                    async: false,
                    type: "post",
                    url: "<%=path%>manager/updateTrain.action",
                    dataType: "json",
                    data: data.field,
                    success: function (map) {
                        if (map == "1") {
                            layer.alert("修改成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        } else {
                            layer.msg("修改失败,稍后重试");
                        }
                    }
                })
                return false;
            });
    });
</script>

</body>

</html>
