
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

<%
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
    String cosname = request.getParameter("cosname")==null?"":request.getParameter("cosname");
    String ctname = request.getParameter("ctname")==null?"":request.getParameter("ctname");
    String onumber =request.getParameter("onumber")==null?"":request.getParameter("onumber");
    String oid =request.getParameter("oid")==null?"":request.getParameter("oid");
    String osname =request.getParameter("osname")==null?"":request.getParameter("osname");
%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>
            <div class="layui-form-item">
                <label for="onumber" class="layui-form-label">
                    <span class="x-red">*</span>订单编号</label>
                <div class="layui-input-inline">
                    <input type="text" id="onumber" name="onumber" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=onumber%>" style="width: 200px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="osname" class="layui-form-label">
                    <span class="x-red">*</span>订单状态</label>
                <div class="layui-input-inline">
                    <input type="text" id="osname" name="osname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=osname%>" style="width: 200px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="sfname" class="layui-form-label">
                    <span class="x-red">*</span>服务人员</label>
                <div class="layui-input-inline">
                    <input type="text" id="sfname" name="sfname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=sfname%>" style="width: 200px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="cosname" class="layui-form-label">
                    <span class="x-red">*</span>服务事项</label>
                <div class="layui-input-inline">
                    <input type="text" id="cosname" name="cosname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=cosname%>" style="width: 200px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ctname" class="layui-form-label">
                    <span class="x-red">*</span>服务类型</label>
                <div class="layui-input-inline">
                    <input type="text" id="ctname" name="ctname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=ctname%>" style="width: 200px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="aftercontext" class="layui-form-label">
                    <span class="x-red">*</span>售后原因</label>
                <div class="layui-input-inline">
                    <textarea id="aftercontext" name="aftercontext" required="" lay-verify="card" placeholder="请描述售后申请的理由(100字以内)"
                           autocomplete="off" class="layui-input"  style="width: 200px;height: 100px;resize:none;" ></textarea>
                    <%--<input type="hidden" id="oid" name="oid" required=""
                           autocomplete="off" class="layui-input" value="<%=oid%>"/>--%>
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
            <%--<div class="layui-form-item">
                <label for="econut" class="layui-form-label">
                    <span class="x-red">*</span>星级评价</label>
                <div class="layui-input-inline">
                    <input type="text" id="econut" name="econut" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=econut%>">
                </div>
            </div>--%>
            <div align="center" class="layui-form-item">
                <%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">提交申请</button>
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
            card:[/^.{3,100}$/,'请输入3-100字符的评价']
            ,pass: [
                /^[a-zA-Z]\w{5,17}$/
                ,'密码长度在6~18之间，只能包含字母、数字和下划线，必须以字母开头'
            ]
        });


        //监听提交
        form.on('submit(add)',
            function (data) {
                console.log(data)
                $.ajax({
                    async: false,
                    type: "post",
                    url: "<%=path%>admin/jUserAddAfter.action",
                    data: data.field,
                    success: function (bac) {
                        if (bac == "1") {
                            /*layer.msg("添加成功")*/
                            layer.alert("申请成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        } else {
                            layer.msg("申请失败");
                        }
                    }
                })
                return false;
            });
    });

</script>

</body>

</html>
