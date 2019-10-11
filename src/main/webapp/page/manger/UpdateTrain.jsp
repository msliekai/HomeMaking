
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>修改培训安排</title>
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

    String trtime = request.getParameter("trtime")==null?"":request.getParameter("trtime");
    String trtitle = request.getParameter("trtitle")==null?"":request.getParameter("trtitle");
    String trcontext = request.getParameter("trcontext")==null?"":request.getParameter("trcontext");
    String trsum = request.getParameter("trsum")==null?"":request.getParameter("trsum");
    String trid = request.getParameter("trid")==null?"":request.getParameter("trid");

%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>
            <div class="layui-form-item">
                <label for="L_trid" class="layui-form-label">
                    <span class="x-red">*</span>培训安排ID</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_trid" name="trid" required="" lay-verify="trid" value="<%=trid%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>
            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>培训标题</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rname" name="trtitle" required="" lay-verify="trtitle" value="<%=trtitle%>"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rdescribe" class="layui-form-label">
                    <span class="x-red">*</span>培训内容</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rdescribe" name="trcontext" required="" lay-verify="trcontext" value="<%=trcontext%>"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>培训人数</label>
                <div class="layui-input-inline">
                    <input type="text" id="trsum" name="trsum" required="" lay-verify="rname" value="<%=trsum%>"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>培训时间</label>
                <div class="layui-input-inline">
                    <input type="text" id="trtime" name="trtime" required="" lay-verify="rname" value="<%=trtime%>"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div align="center" class="layui-form-item">
                <%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">修改</button>
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
