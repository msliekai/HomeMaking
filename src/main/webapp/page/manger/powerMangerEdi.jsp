<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/8/26
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
    String rid =  request.getParameter("rid");
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
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div id="menu">
</div>

<input type="hidden" value="<%=rid%>" id="rid"/>
<div class="layui-form-item" align="center">
    <button class="layui-btn" lay-filter="add"  lay-demo="saveMenu">保存</button>
</div>
</body>
<script>
    var that = this;
    layui.use(['tree', 'util'], function() {
        var tree = layui.tree;
        var layer = layui.layer;
        var util = layui.util;
        //渲染
        var inst1 = tree.render({
            elem: '#menu', //绑定标签元素
            data: getData(),    //加载菜单数据
            id: 'menu',
            showCheckbox: true		//是否显示复选框
        });

        // });
        function getData(){
            var data = [];
            $.ajax({
                url: "<%=path%>manager/getPower.action",    //后台数据请求地址
                data: {rid: getRid()},        //id为加载当前角色的权限菜单，为角色id
                type: "post",
                async:false,
                success: function(resut){
                    alert("data"+resut);
                    data =resut;
                }
            });
            return data;
        }

        function getRid(){
            var rid = $("#rid").val();
            return rid;
        }
        <%--layer.confirm('确定删除？ID:'+data.rid, function (index) {--%>
        <%--    fal("<%=path%>manager/delRole.action",data,"刪除");--%>
        <%--    layer.close(index);--%>
        <%--})--%>
        //保存菜单
        util.event('lay-demo', {
            saveMenu: function(othis){       //saveMenu和保存按钮的lay-demo属性对应
                layer.confirm('is not?', {icon: 3, title:'提示'}, function(index){
                    var checkedData = tree.getChecked('menu'); //获取选中节点的数据
                    var str = JSON.stringify(checkedData);    //转为json格式
                    alert(getRid());
                    alert(str);
                    if(that.roll == 1){
                        return;
                    }
                    $.ajax({
                        type: 'post',
                        url: '<%=path%>manager/getNewPower.action',
                        data: {rid: getRid(),data: str},
                        async : false,
                        success : function(result){
                            that.roll = 1;
                            if(result){
                                layer.msg("保存成功！",{offset:'rb'});
                            }else{
                                layer.msg("保存失败！", {offset:'rb'});
                            }
                        }
                    })
                    layer.close(index);
                });

            }
        });

    });
</script>
</html>
