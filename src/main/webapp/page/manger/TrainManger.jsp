<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>培训计划</title>
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
              <cite>培训安排</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">

                <div class="layui-card-header">
                    <button class="layui-btn" onclick="xadmin.open('添加','<%=path%>page/manger/AddTrain.jsp',600,400)"><i class="layui-icon"></i>添加</button>
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
    <a class="layui-btn layui-btn-xs " lay-event="tdel">删除</a>
    <a class="layui-btn layui-btn-primary " lay-event="tupdate">修改</a>
    <a class="layui-btn layui-btn-normal" lay-event="trainContext">查看详情</a>
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>manager/Mtrainlist.action' //数据接口
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
                {field: 'trtime', title: '培训时间', minWidth: 100}
                , {field: 'trtitle', title: '培训标题', minWidth: 80}
                , {field: 'trcontext', title: '培训内容', minWidth: 80}
                , {field: 'trsum', title: '培训人数', minWidth:50}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 270}
            ]]
        });
        //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    var uname = $('#uname');
                    var cong=$('#cong');
                    var dao=$('#dao');
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            uname: uname.val(),
                            cong:cong.val(),
                            dao:dao.val(),
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
            if (obj.event === 'tdel') {
                layer.confirm('确定删除？', function (index) {
                    fal("<%=path%>manager/delTrain.action",data.trid);
                    layer.close(index);
                });
            }else if(obj.event==="tupdate"){
                layer.open({
                    type:2,
                    title: "培训安排修改",
                    area: ['450px', '430px'],
                    content: "UpdateTrain.jsp"+
                        "?trtime="+encodeURIComponent(data.trtime)+
                        "&trtitle="+encodeURIComponent(data.trtitle)+
                        "&trcontext="+encodeURIComponent(data.trcontext)+
                        "&trsum="+encodeURIComponent(data.trsum)+
                        "&trid="+encodeURIComponent(data.trid)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            } else if(obj.event==="trainContext"){
                layer.open({
                    type:2,
                    title: "培训安排详情",
                    area: ['450px', '430px'],
                    content: "UpdateContext.jsp"+
                        "?trtime="+encodeURIComponent(data.trtime)+
                        "&trtitle="+encodeURIComponent(data.trtitle)+
                        "&trcontext="+encodeURIComponent(data.trcontext)+
                        "&trsum="+encodeURIComponent(data.trsum)+
                        "&trid="+encodeURIComponent(data.trid)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }
        });

        function fal(url,trid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"trid":trid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("操作成功");
                    }else{
                        layer.msg("操作失败");
                    }
                    //执行重载
                    table.reload('testReload', {
                        where: {
                            trid: trid.value,
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('裂开');
                }
            })

        }
    });

</script>


</html>
