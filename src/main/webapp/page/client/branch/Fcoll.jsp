
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>详情</title>
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
    String ctname = request.getParameter("ctname")==null?"":request.getParameter("ctname");
    String ctcontext = request.getParameter("ctcontext")==null?"":request.getParameter("ctcontext");
    String fcotime = request.getParameter("fcotime")==null?"":request.getParameter("fcotime");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>

            <div class="layui-form-item">
                <label for="fname" class="layui-form-label">
                    <span class="x-red">*</span>公司名字</label>
                <div class="layui-input-inline">
                    <input type="text" id="fname" name="fname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=fname%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="fcotime" class="layui-form-label">
                    <span class="x-red">*</span>收藏时间</label>
                <div class="layui-input-inline">
                    <input type="text" id="fcotime" name="fcotime" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=fcotime%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ctname" class="layui-form-label">
                    <span class="x-red">*</span>服务类型</label>
                <div class="layui-input-inline">
                    <input type="text" id="ctname" name="ctname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=ctname%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ctcontext" class="layui-form-label">
                    <span class="x-red">*</span>服务介绍</label>
                <div class="layui-input-inline">
                    <input type="text" id="ctcontext" name="ctcontext" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=ctcontext%>">
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
                    url: "<%=path%>manager/addtrain.action",
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
