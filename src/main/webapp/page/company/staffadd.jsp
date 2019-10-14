<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/11
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css"  media="all">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
</head>
<body>

    <form class="layui-form" id="cos" action="" method="post" lay-filter="example" enctype="multipart/form-data">
        <label class="layui-form-label">员工名称</label>
        <div class="layui-input-inline">
            <input type="text" name="sfname" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">员工头像</label>
            <div class="layui-input-inline">
                <input type="file"     name = "pictureFile" />
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">出生日期</label>
            <div class="layui-input-inline">
                <input type="text" name="sfdob" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="sfage" value="男" title="男" checked="">
                <input type="radio" name="sfage" value="女" title="女">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">服务经验</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="sfexp" class="layui-textarea"></textarea>
            </div>
        </div>
        <label class="layui-form-label">单次费用</label>
        <div class="layui-input-inline">
            <input type="text" name="sfcos" lay-verify="required" placeholder="元/次" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">工作经历</label>
            <div class="layui-input-inline">
                <input type="text" name="sfworkexp" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">擅长</label>
            <div class="layui-input-inline">
                <input type="text" name="sfgood" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">标签/评价</label>
            <div class="layui-input-inline">
                <input type="text" name="sftag" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学历</label>
            <div class="layui-input-inline">
                <input type="text" name="sfedu" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">求职意向</label>
            <div class="layui-input-inline">
                <input type="text" name="sfwant" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">银行卡号</label>
            <div class="layui-input-inline">
                <input type="text" name="scard" lay-verify="required" placeholder="请输入正确卡号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <%--        员工所属公司id--%>
        <input type="text" name="fid" value="${sessionScope.company.fid}" hidden="hidden">
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="button" class="layui-btn" lay-submit="" lay-filter="demo1" onclick="tijiao()">立即提交</button>
            </div>
        </div>
    </form>

</body>
<script>
    function tijiao() {
        $.ajax({
            url:"<%=path%>admin/addStaff.action",
            type:"post",
            cache: false,
            processData: false,
            contentType: false,
            dataType: "text",
            data:new FormData($('#cos')[0]),
            success:function(redata){
                var a = redata;
                if(a=="ok")
                {
                    alert("增加成功")
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    parent.layui.table.reload("testReload", { //此处是上文提到的 初始化标识id
                        page:{
                            curr: 1
                        }
                    });
                }else
                {
                    alert("增加失败")
                    layer.close(layer.index);
                }
            }
        })
    }
</script>
<script src="<%=path%>page/layui/laydate.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
    });
</script>
</html>
