<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>订单列表</title>
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
              <cite>订单列表</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <div class="demoTable">

                        <div class="layui-inline layui-show-xs-block">
                            <input type="text"  placeholder="根据家政公司查询" autocomplete="off" class="layui-input" name="fname" id="fname">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <span><button class="layui-btn"  data-type="reload"><i class="layui-icon">&#xe615;</i></button></span>
                        </div>
                    </div>

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
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>manager/OrderList.action' //数据接口
            , page: true //开启分页
            ,limit:10
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
                {field: 'oid', title: '订单号', minWidth: 100}
                , {field: 'sfname', title: '家政人员姓名', minWidth: 80}
                , {field: 'cosname', title: '服务', minWidth: 80}
                , {field: 'fname', title: '所属公司', minWidth: 80}
                , {field: 'otime', title: '订单时间', minWidth: 80}
                , {field: 'osname', title: '状态', minWidth: 80}
                , {fixed: 'right',title: '操作', align:'center',minWidth:270,templet:function (item) {
                        var tem = [];
                        console.log(item)
                        if (item.osid == "10") {
                            if(item.visit !=null){
                                tem.push('<a class="layui-btn layui-btn-disabled">已回访</a>');
                            }else{
                                tem.push('<a lay-event="OrderVisit" class="layui-btn layui-btn-normal">回访</a>');
                            }

                        }
                        tem.push('<a lay-event="OrderContext" class="layui-btn layui-btn-normal">查看详情</a>');
                        return tem.join(' <font></font> ')
                    }}
            ]]
        });
        //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    var fname = $('#fname');

                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            fname: fname.val(),
                        }
                    }, 'data');
                }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            alert(type);
            active[type] ? active[type].call(this) : '';
        })

        //监听行工具事件
        table.on('tool(test)', function(obj) {
            var data = obj.data;
             if(obj.event==="OrderContext"){
                 layer.open({
                     type:2,
                     title: "订单详情",
                     area: ['450px', '430px'],
                     content: "OrderContext.jsp"+
                         "?oid="+encodeURIComponent(data.oid)+
                         "&cosname="+encodeURIComponent(data.cosname)+
                         "&sfname="+encodeURIComponent(data.sfname)+
                         "&fname="+encodeURIComponent(data.fname)+
                         "&otime="+encodeURIComponent(data.otime)+
                         "&osname="+encodeURIComponent(data.osname)
                     //引用的弹出层的页面层的方式加载修改界面表单
                 });
             }
             else if(obj.event==="OrderVisit"){
                layer.open({
                    type:2,
                    title: "回访",
                    area: ['450px', '430px'],
                    content: "OrderVisit.jsp"+
                        "?oid="+encodeURIComponent(data.oid)+
                        "&username="+encodeURIComponent(data.username)+
                        "&ophone="+encodeURIComponent(data.ophone)+
                        "&sfname="+encodeURIComponent(data.sfname)+
                        "&fname="+encodeURIComponent(data.fname)+
                        "&visit="+encodeURIComponent(data.visit)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }
        });


    });

</script>


</html>
