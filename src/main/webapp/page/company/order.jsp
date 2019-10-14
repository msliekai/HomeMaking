<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/24
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.util.Random" %>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
    <title>用户管控</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <link rel="stylesheet" href="<%=path%>page/src/css/layui.css" media="all">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
<%--    <script src="<%=path%>page/src/layui.js"></script>--%>
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
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <div class="demoTable">
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text"  placeholder="根据状态查询，如待支付" autocomplete="off" class="layui-input" name="osname" id="osname">
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
    {{#  if(d.tbloderstate.osname =="待处理"){}}
    <a class="layui-btn layui-btn-xs " lay-event="chat">沟通</a>
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>

    {{# } if(d.tbloderstate.osname =="已处理"){}}
    <a class="layui-btn layui-btn-xs " lay-event="useEna">回访</a>
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>
    {{# } if(d.tbloderstate.osname =="已评价"){}}
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>
    {{# } if(d.tbloderstate.osname =="已取消"){}}
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>
    {{# } if(d.tbloderstate.osname =="申请售后"){}}
    <a class="layui-btn layui-btn-xs " lay-event="deal">售后详情</a>
    <a class="layui-btn layui-btn-xs " lay-event="ok">接受</a>
    <a class="layui-btn layui-btn-xs" lay-event="no">拒绝</a>
    {{# } if(d.tbloderstate.osname =="售后结束"){}}
    <a class="layui-btn layui-btn-xs " lay-event="after">订单详情</a>
    {{# } if(d.tbloderstate.osname =="售后失败"){}}
    <a class="layui-btn layui-btn-xs " lay-event="yo">订单详情</a>
    {{#  } }}
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>page/companyOrder.action' //数据接口
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
                {field: 'sfurl', title: '头像', minWidth: 100,templet:function (d){return d.staff.sfurl}}
                , {field: 'sfname', title: '保姆名字', minWidth: 100,templet:function (d){return d.staff.sfname}}
                , {field: 'fname', title: '所属家政公司', minWidth: 150,templet:function (d){return d.staff.company.fname}}
                , {field: 'otime', title: '订单时间', minWidth: 80}
                , {field: 'onumber', title: '订单号', minWidth: 80,hide:true}
                , {field: 'svtime', title: '服务时间', minWidth:150}
                , {field: 'sfcos', title: '费用', minWidth: 80,templet:function (d){return d.staff.sfcos}}
                , {field: 'osname', title: '状态', minWidth: 80,templet:function (d){return d.tbloderstate.osname}}
                , {field: 'username', title: '服务对象', minWidth: 80,templet:function (d){return d.tblUser.username}}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 200,templet:function (d){return d.tbloderstate.osname}}
            ]]
        });
        //触发查询按钮
        var $ = layui.$, active = {
            reload: function(){
                var osname = $('#osname');
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        osname: osname.val(),
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            // alert(type);
            active[type] ? active[type].call(this) : '';
        });

        //监听行工具事件
        table.on('tool(test)', function(obj) {
            var data = obj.data;
            if (obj.event === 'useEna') {
                layer.confirm('确定启用？', function (index) {
                    fal("<%=path%>userManagement/useEna.action",data.uid);
                    layer.close(index);
                });
            }else if(obj.event==="useDis"){
                layer.open({
                    type:2,
                    title: "订单信息",
                    area: ['500px', '400px'],
                    content: "ordermsg.jsp"+
                        "?onumber="+encodeURIComponent(data.onumber)+
                        "&otime="+encodeURIComponent(data.otime)+
                        "&userid="+encodeURIComponent(data.userid)+
                        "&username="+encodeURIComponent(data.tblUser.username)+
                        "&sfname="+encodeURIComponent(data.staff.sfname)+
                        "&svtime="+encodeURIComponent(data.svtime)+
                        "&otitle="+encodeURIComponent(data.otitle)+
                        "&ocontext="+encodeURIComponent(data.ocontext)+
                        "&fname="+encodeURIComponent(data.staff.company.fname)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="ok")
            {
                layer.open({
                    type:2,
                    title: "售后详情",
                    area: ['500px', '300px'],
                    content: "after.jsp"+
                        "?oid="+encodeURIComponent(data.oid)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="no")
            {
                layer.open({
                    type:2,
                    title: "拒绝反馈",
                    area: ['500px', '300px'],
                    content: "afterresult.jsp"+
                        "?oid="+encodeURIComponent(data.oid)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="deal")
            {
                layer.open({
                    type:2,
                    title: "售后详情",
                    area: ['500px', '300px'],
                    content: "afterdeal.jsp"+
                        "?username="+encodeURIComponent(data.tblUser.username)+
                        "&otime="+encodeURIComponent(data.otime)+
                        "&aftercontext="+encodeURIComponent(data.aftercontext)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="after")
            {
                layer.open({
                    type:2,
                    title: "售后详情",
                    area: ['500px', '600px'],
                    content: "afterss.jsp"+
                        "?onumber="+encodeURIComponent(data.onumber)+
                        "&otime="+encodeURIComponent(data.otime)+
                        "&userid="+encodeURIComponent(data.userid)+
                        "&username="+encodeURIComponent(data.tblUser.username)+
                        "&sfname="+encodeURIComponent(data.staff.sfname)+
                        "&svtime="+encodeURIComponent(data.svtime)+
                        "&otitle="+encodeURIComponent(data.otitle)+
                        "&ocontext="+encodeURIComponent(data.ocontext)+
                        "&fname="+encodeURIComponent(data.staff.company.fname)+
                        "&aftercontext="+encodeURIComponent(data.aftercontext)+
                        "&afterstaff="+encodeURIComponent(data.afterstaff)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="yo")
            {
                layer.open({
                    type:2,
                    title: "售后详情",
                    area: ['500px', '300px'],
                    content: "afterfa.jsp"+
                        "?onumber="+encodeURIComponent(data.onumber)+
                        "&otime="+encodeURIComponent(data.otime)+
                        "&aftercontext="+encodeURIComponent(data.aftercontext)+
                        "&afterresult="+encodeURIComponent(data.afterresult)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="chat"){
                alert(data.tblUser.userurl);
                parent.say().chat({id: data.tblUser.userphone, name: data.tblUser.username, type: "friend",avatar: "<%=path%>"+data.tblUser.userurl});
            }
        });

        function fal(url,uid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"uid":uid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("修改成功");
                    }else{
                        layer.msg("修改失败");
                    }
                    //执行重载
                    table.reload('testReload', {
                        where: {
                            osname: osname.value,
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
<script>

</script>
</html>
