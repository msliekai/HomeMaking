
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
    String ordernum = request.getParameter("ordernum")==null?"":request.getParameter("ordernum");
    String ordertype = request.getParameter("ordertype")==null?"":request.getParameter("ordertype");
    String cos = request.getParameter("cos")==null?"":request.getParameter("cos");
    String costype = request.getParameter("costype")==null?"":request.getParameter("costype");
    String oid = request.getParameter("oid")==null?"":request.getParameter("oid");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
    String allmoney = request.getParameter("allmoney")==null?"":request.getParameter("allmoney");
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>

            <div class="layui-form-item">
                <label for="ordernum" class="layui-form-label">
                    <span class="x-red">*</span>订单号码</label>
                <div class="layui-input-inline">
                    <input type="text" id="ordernum" name="ordernum" required="" lay-verify="trtitle"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=ordernum%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ordertype" class="layui-form-label">
                    <span class="x-red">*</span>订单状态</label>
                <div class="layui-input-inline">
                    <input type="text" id="ordertype" name="ordertype" required="" lay-verify="trcontext"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=ordertype%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="cos" class="layui-form-label">
                    <span class="x-red">*</span>服务事项</label>
                <div class="layui-input-inline">
                    <input type="text" id="cos" name="cos" required="" lay-verify="rname"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=cos%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="costype" class="layui-form-label">
                    <span class="x-red">*</span>服务类型</label>
                <div class="layui-input-inline">
                    <input type="text" id="costype" name="costype" required="" lay-verify="rname"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=costype%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="sfname" class="layui-form-label">
                    <span class="x-red">*</span>服务人员</label>
                <div class="layui-input-inline">
                    <input type="text" id="sfname" name="sfname" required="" lay-verify="rname"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=sfname%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="fname" class="layui-form-label">
                    <span class="x-red">*</span>商家名称</label>
                <div class="layui-input-inline">
                    <input type="text" id="fname" name="fname" required="" lay-verify="rname"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=fname%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="allmoney" class="layui-form-label">
                    <span class="x-red">*</span>消费金额</label>
                <div class="layui-input-inline">
                    <input type="text" id="allmoney" name="allmoney" required="" lay-verify="rname"
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=allmoney%>">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="oid" class="layui-form-label">
                </label>
                <div class="layui-input-inline">
                    <input type="hidden" id="oid" name="oid" required=""
                           autocomplete="off" class="layui-input" value="<%=oid%>"/>
                </div>
            </div>
            <div align="center" class="layui-form-item">
                <%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">确认订单</button>
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
        //监听提交
        form.on('submit(add)',
            function (data) {
                console.log(data)
                $.ajax({
                    async: false,
                    type: "post",
                    url: "<%=path%>admin/jUserOrderOK.action",
                    data: data.field,
                    success: function (bac) {
                        if (bac == "1") {
                            layer.alert("确认成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        }else if(bac == "2"){
                            layer.msg("余额不足，请前往充值！");
                        }
                        else {
                            layer.msg("确认失败");
                        }
                    }
                })
                return false;
            });
    });
</script>

</body>

</html>
