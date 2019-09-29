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
<%--          <span class="layui-breadcrumb">--%>
<%--            <a href="">首页</a>--%>
<%--            <a href="">演示</a>--%>
<%--            <a>--%>
<%--              <cite>用户管控</cite></a>--%>
<%--          </span>--%>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
<%--                    <form class="layui-form layui-col-space5">--%>
                    <div class="demoTable">
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text"  placeholder="请输入角色名" autocomplete="off" class="layui-input" name="rname" id="rname">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <span><button class="layui-btn"  data-type="reload"><i class="layui-icon">&#xe615;</i></button></span>
                        </div>
                    </div>
<%--                    </form>--%>
                </div>
<%--                <s:property value="list"></s:property>--%>
                <div class="layui-card-header">
                    <button class="layui-btn" onclick="xadmin.open('添加角色','<%=path%>page/manger/roleManger-add.jsp',600,400)"><i class="layui-icon"></i>添加角色</button>
                </div>
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
    <a class="layui-btn layui-btn-xs " lay-event="useEna">修改</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="roleDel">删除</a>
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            , url: '<%=path%>manager/getRole.action' //数据接口
            , page: true //开启分页
            ,limit:2
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
                {field: 'rid', title: '角色ID', minWidth: 100}
                , {field: 'rname', title: '角色名', minWidth: 80}
                , {field: 'rdescribe',edit: 'text', title: '角色描述', minWidth: 80}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 270}
            ]]
        });
        //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    var rname = $('#rname');
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            rname: rname.val(),
                        }
                    }, 'data');
                }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        })

        //监听单元格编辑
        table.on('edit(test)',
            function(obj) {
            var data = obj.data;//获取数据
                layer.confirm('确定修改？ID:'+data.rid, function (index) {
                    // var value = obj.value //得到修改后的值
                    //     ,field = obj.field; //得到字段
                    // layer.msg('[ID: ' + data.rid + '] ' + field + ' 字段更改为：' + value);//提示
                    fal("<%=path%>manager/upRole.action",data,"修改");
                    layer.close(index);
                });

            });

        //监听行工具事件
        table.on('tool(test)', function(obj) {
            var data = obj.data;
            if (obj.event === 'roleDel') {
                layer.confirm('确定删除？ID:'+data.rid, function (index) {
                    fal("<%=path%>manager/delRole.action",data,"刪除");
                    layer.close(index);
                });
            }
        });

        function fal(url,data,typename) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"rid":data.rid,"rdescribe":data.rdescribe},
                success: function (dat) {
                    if(dat==1){
                        layer.msg(typename+"成功");
                    }else{
                        layer.msg(typename+"失败");
                    }
                    //执行重载
                    table.reload('testReload', {
                        where: {
                            rname: rname.value, 
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('請聯繫管理員！');
                }
            })

        }

    });


</script>

</html>
