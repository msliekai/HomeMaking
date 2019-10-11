
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>育婴知识修改</title>
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

    String kid = request.getParameter("kid")==null?"":request.getParameter("kid");
    String ktitle = request.getParameter("ktitle")==null?"":request.getParameter("ktitle");
    String ftid = request.getParameter("ftid")==null?"":request.getParameter("ftid");
    String ktime = request.getParameter("ktime")==null?"":request.getParameter("ktime");

%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>
            <div class="layui-form-item" />
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>ID</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rname" name="kid" required="" lay-verify="kid" value="<%=kid%>"
                           autocomplete="off" class="layui-input" disabled/>
                </div>

            <div class="layui-form-item">
                <label for="L_rdescribe" class="layui-form-label">
                    <span class="x-red">*</span>知识标题</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_rdescribe" name="ktitle" required="" lay-verify="ktitle" value="<%=ktitle%>"
                           autocomplete="off" class="layui-input" />
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rname" class="layui-form-label">
                    <span class="x-red">*</span>知识类别</label>
                <div class="layui-input-inline">
                    <select id="ftid" name="ftid" required="" lay-verify="ftid" value="<%=ftid%>"
                            autocomplete="off" class="layui-input" >
                        <option value="1">文章</option>
                        <option value="2">视频</option>

                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_rdescribe" class="layui-form-label">
                    <span class="x-red">*</span>添加时间</label>
                <div class="layui-input-inline">
                    <input type="text" id="L_ktime" name="ktime" required="" lay-verify="ktime" value="<%=ktime%>"
                           autocomplete="off" class="layui-input" />
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
                    url: "<%=path%>manager/updateKap.action",
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
