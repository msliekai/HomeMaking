<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    我的收藏
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>我的收藏</title>
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
            <a href="">个人中心</a>
            <a>
              <cite>我的收藏</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">

    我的收藏<hr class="layui-bg-blue">
<%--                    </form>--%>
                </div>
<%--                <s:property value="list"></s:property>--%>

                <div class="layui-tab layui-tab-card" lay-filter="filter">
                    <ul class="layui-tab-title">
                        <li data-status="" class="layui-this">收藏的阿姨</li>
                        <li data-status="1">收藏的公司</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show"><div class="layui-card-body" align="center" >
                            <table class="layui-table"  id="utable" align="center">
                            </table>
                        </div></div>
                        <div class="layui-tab-item"><div class="layui-card-body" align="center" >
                            <table class="layui-table"  id="utable2" align="center">
                            </table>
                        </div></div>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

</body>

<script id="barDemo" type="text/html">
    <%--<a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>--%>
    <a class="layui-btn layui-btn-normal" lay-event="useResetPwd">查看详情</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="useDel">删除</a>

    <%--默认地址是灰色--%>
</script>

<%--<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>admin/jUsersfcoll.action' //数据接口
            , page: true //开启分页
            ,limit:2
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
                {field: 'sfname', title: '服务人员', minWidth: 80,templet:function (d) {return d.staff.sfname}}
                , {field: 'scotime', title: '收藏时间', minWidth: 150}
                , {field: 'fname', title: '所属公司', minWidth: 80,templet:function (d) {return d.staff.company.fname}}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 80}
            ]]
        });
    });
</script>--%>

<script>
    layui.use(['element', 'table'], function () {
        // Tab的切换功能，切换事件监听等，需要依赖element模块
        var $ = layui.jquery, table = layui.table, element = layui.element;
        // 初始化加载
        getList('#utable', '')
        // 监听tab切换 操作：文档 - 内置模块 - 常用元素操作 element - 监听tab切换
        element.on('tab(filter)', function (data) {
            // console.log(this);        // 当前Tab标题所在的原始DOM元素
            // console.log(data.index);  // 得到当前Tab的所在下标
            // console.log(data.elem);   // 得到当前的Tab大容器
            var status = $(this).attr('data-status')
            var position = '#utable'
            switch (status) {
                case '1': position = '#utable2'; break;
                default: position = '#utable';
            }
            getList(position, status)
        })
        // 公共方法
        function getList(position, status = '') {
            if (status == ""){
                table.render({
                    elem: position
                    , url:'<%=path%>admin/jUsersfcoll.action'
                    , where: {
                        status: status
                    }
                    , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                    , page: true
                    , limit: 2
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
                        {field: 'sfname', title: '服务人员', minWidth: 80,templet:function (d) {return d.staff.sfname}}
                        , {field: 'scotime', title: '收藏时间', minWidth: 150}
                        , {field: 'fname', title: '所属公司', minWidth: 80,templet:function (d) {return d.staff.company.fname}}
                        , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 120}
                    ]]
                });
            } else {
                table.render({
                    elem: position
                    , url:'<%=path%>admin/jUsersfcoll.action'
                    , where: {
                        status: status
                    }
                    , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
                    , page: true
                    , limit: 2
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
                        {field: 'fname', title: '公司名字', minWidth: 80,templet:function (d) {return d.company.fname}}
                        ,{field: 'fcotime', title: '收藏时间', minWidth: 80}
                        , {field: 'ctname', title: '服务类型', minWidth: 80,templet:function (d) {return d.company.tblCOStype.ctname}}
                        , {field: 'ctcontext', title: '服务介绍', minWidth: 80,templet:function (d) {return d.company.tblCOStype.ctcontext}}
                        , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 120}
                    ]]
                });
            }

        }
    })
</script>
</html>
