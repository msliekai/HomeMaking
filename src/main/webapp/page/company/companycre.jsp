<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/23
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>用户管控</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>

</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>用户管控</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>

<div class="layui-fluid">
    <h3 style="color:black;">公司资料</h3>
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body" align="center" >
                    <table class="layui-table" lay-filter="test" id="utable" align="center">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script id="barDemo" type="text/html">
    <a class="layui-btn layui-btn-xs " lay-event="deal">查看详情</a>
    <a class="layui-btn layui-btn-xs  " lay-event="add">新增＋</a>
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;
        // 公司资料表
        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>page/Comcredential.action'//数据接口
            , page: true //开启分页
            , limit: 10
            // ,method:"get"
            , id: 'testReload'
            , parseData: function (res) {
                return {
                    "code": eval(res.code), //解析接口状态
                    // "msg": res.msg, //解析提示文本
                    "count": res.count, //解析数据长度
                    "data": res.data//解析数据列表
                };
            }
            , cols: [[ //表头
                {field: 'creid', title: '材料序号', minWidth: 80}
                ,{field: 'crename', title: '材料名', minWidth: 80}
                , {field: 'count', title: '份数', minWidth: 80}
                , {field: 'right', fixed: 'right', title: '操作', toolbar: '#barDemo', minWidth: 270}
            ]]
        });


        //监听行工具事件
        table.on('tool(test)', function(obj) {

            var tt =obj.data;
            var creid=tt.creid;
            if (obj.event === 'deal') {
                alert(tt.crename)

            } else if(obj.event==="add"){
                // alert(creid)
                layer.open({
                    type:2,
                    title: "上传资料",
                    area: ['500px', '200px'],
                    content: "upfile.jsp"+"?uu="+encodeURIComponent(creid)//引用的弹出层的页面层的方式加载修改界面表单
                });
            }
        });

    });
</script>

</html>
