
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>评价详情</title>
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
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
    String svtime = request.getParameter("svtime")==null?"":request.getParameter("svtime");
    String money = request.getParameter("money")==null?"":request.getParameter("money");
    String etime = request.getParameter("etime")==null?"":request.getParameter("etime");
    String econtext = request.getParameter("econtext")==null?"":request.getParameter("econtext");
    String econut = request.getParameter("econut")==null?"":request.getParameter("econut");
%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>

            <div class="layui-form-item">
                <label for="sfname" class="layui-form-label">
                    <span class="x-red">*</span>服务人员</label>
                <div class="layui-input-inline">
                    <input type="text" id="sfname" name="sfname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=sfname%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="fname" class="layui-form-label">
                    <span class="x-red">*</span>所属公司</label>
                <div class="layui-input-inline">
                    <input type="text" id="fname" name="fname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=fname%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="svtime" class="layui-form-label">
                    <span class="x-red">*</span>服务时间</label>
                <div class="layui-input-inline">
                    <input type="text" id="svtime" name="svtime" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=svtime%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="money" class="layui-form-label">
                    <span class="x-red">*</span>服务费用</label>
                <div class="layui-input-inline">
                    <input type="text" id="money" name="money" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=money%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="etime" class="layui-form-label">
                    <span class="x-red">*</span>评价时间</label>
                <div class="layui-input-inline">
                    <input type="text" id="etime" name="etime" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=etime%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="econtext" class="layui-form-label">
                    <span class="x-red">*</span>评价内容</label>
                <div class="layui-input-inline">
                    <input type="text" id="econtext" name="econtext" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=econtext%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="econut" class="layui-form-label">
                    <span class="x-red">*</span>星级评价</label>
                <div class="layui-input-inline">
                    <input type="text" id="econut" name="econut" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=econut%>">
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
