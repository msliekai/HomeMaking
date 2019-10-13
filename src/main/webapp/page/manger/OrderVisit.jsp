
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
    String oid = request.getParameter("oid")==null?"":request.getParameter("oid");
    String username = request.getParameter("username")==null?"":request.getParameter("username");
    String ophone = request.getParameter("ophone")==null?"":request.getParameter("ophone");
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
    String visit = request.getParameter("visit")==null?"":request.getParameter("visit");


%>

<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" enctype="multipart/form-data">

            <input id="anotherAimg" name="aimg" type="hidden" value=""/>
            <div class="layui-form-item">
                <label for="oid" class="layui-form-label">
                    <span class="x-red">*</span>订单ID</label>
                <div class="layui-input-inline">
                    <input type="text" id="oid" name="oid" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=oid%>" style="width: 200px" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>用户姓名</label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=username%>" style="width: 200px" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ophone" class="layui-form-label">
                    <span class="x-red">*</span>用户联系方式</label>
                <div class="layui-input-inline">
                    <input type="text" id="ophone" name="ophone" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=ophone%>" style="width: 200px" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="sfname" class="layui-form-label">
                    <span class="x-red">*</span>服务人员</label>
                <div class="layui-input-inline">
                    <input type="text" id="sfname" name="sfname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=sfname%>" style="width: 200px" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="fname" class="layui-form-label">
                    <span class="x-red">*</span>所属公司</label>
                <div class="layui-input-inline">
                    <input type="text" id="fname" name="fname" required=""
                           autocomplete="off" class="layui-input" readonly="readonly" value="<%=fname%>" style="width: 200px" disabled/>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="visit" class="layui-form-label">
                    <span class="x-red">*</span>回访内容</label>
                <div class="layui-input-inline">
                    <textarea id="visit" name="visit" required="" lay-verify="card" placeholder="请如实提交回访内容，谢谢！(100字以内)"
                           autocomplete="off" class="layui-input"  style="width: 200px;height: 100px;resize:none;" ></textarea>
                    <%--<input type="hidden" value="<%=tblorder%>"/>--%>
                </div>
            </div>
            <div align="center" class="layui-form-item">
                <%--                <label for="L_repass" class="layui-form-label"></label>--%>
                <button class="layui-btn" lay-filter="add" lay-submit="">提交</button>
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
                    url: "<%=path%>manager/OrderVisit.action",
                    data: data.field,
                    success: function (bac) {
                        if (bac == "1") {
                            /*layer.msg("添加成功")*/
                            layer.alert("提交成功", {
                                icon: 6
                            }, function () {
                                //关闭当前frame
                                xadmin.close();
                                // 可以对父窗口进行刷新
                                xadmin.father_reload();
                            });
                        } else {
                            layer.msg("提交失败");
                        }
                    }
                })
                return false;
            });
    });

</script>

</body>

</html>
