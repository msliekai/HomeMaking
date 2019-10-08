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
                , {field: 'svtime', title: '服务时间', minWidth:150}
                , {field: 'sfcos', title: '费用', minWidth: 80,templet:function (d){return d.staff.sfcos}}
                , {field: 'osname', title: '状态', minWidth: 80,templet:function (d){return d.tbloderstate.osname}}
                , {field: 'userid', title: '服务对象', minWidth: 80}
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
            active[type] ? active[type].call(this) : '';
        })

        //面板外的操作
        var $ = layui.jquery, active = {
            chat: function(data){
                alert(data);
                var id =data;
                //自定义会话
                layim.chat({
                    name: id
                    ,type: 'friend'
                    // ,avatar: '//tva3.sinaimg.cn/crop.0.0.180.180.180/7f5f6861jw1e8qgp5bmzyj2050050aa8.jpg'
                    ,id: id
                });
            }
        };
        $('.site-demo-layim').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this, $(this).data('toggle')) : '';
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
                layer.confirm('确定禁用？', function (index) {
                    fal("<%=path%>userManagement/useDis.action",data.uid);
                    layer.close(index);
                });
            }else if(obj.event==="chat"){

                alert(data.userid);
                 layim.chat({id: data.userid, name: data.userid, type: "friend"});
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
                            uname: uname.value,
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('裂开');
                }
            })

        }
    });
<%--聊天--%>
    var userid = "${company.facc}";
    var system ={};
    var p = navigator.platform;
    system.win = p.indexOf("Win") == 0;
    system.mac = p.indexOf("Mac") == 0;
    system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
    // if (system.win||system.mac||system.xll) {
    var socket = null;
    //连接websocket的ip地址
    var ip = "crm.natapp1.cc";
    //动态修改查
    var im = {
        init: function () {
            if ('WebSocket' in window) {
                var socketUrl = "ws://localhost:8080/HomeMaking_war_exploded/websocketTest/" + '${company.facc}';
                socket = new WebSocket(socketUrl);
                im.startListener();
            } else {
                alert('当前浏览器不支持WebSocket功能，请更换浏览器访问。');
            }
        },
        startListener: function () {
            console.log(socket);
            if (socket) {
                // 连接发生错误的回调方法
                socket.onerror = function () {
                    console.log("通讯连接失败!");
                };
                // 连接成功建立的回调方法
                socket.onopen = function (event) {
                    console.log("通讯连接成功");
                }
                // 接收到消息的回调方法
                socket.onmessage = function (event) {
                    console.log("通讯接收到消息");
                    im.handleMessage(event.data);
                }
                // 连接关闭的回调方法
                socket.onclose = function () {
                    console.log("通讯关闭连接！!");
                }
            }
        },
        handleMessage: function (msg) {
            console.log(msg);
            if(msg=="1"){
                layer.msg("该聊天对象不在线，请电话联系！");
            }else {
                msg = JSON.parse(msg);
                layim.getMessage(msg);
            }

        }
    };
    im.init();

    layui.use('layim', function(layim){
        var $ = layui.jquery;
        window.layim = layim;
        layim.config({
            brief: true //是否简约模式（如果true则不显示主面板）
        });
        layim.on('sendMessage', function(data){
            var To = data.to;
            console.log(data);
            console.log(data.to);
            if(To.type === 'friend'){
                // layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
            }
            console.log(data.mine.content);
            socket.send(To.id+"-f,t-"+data.mine.content);
        });
        //面板外的操作
        var $ = layui.jquery, active = {
            chat: function(data){
                alert(data);
                var id =data;
                //自定义会话
                layim.chat({
                    name: id
                    ,type: 'friend'
                    // ,avatar: '//tva3.sinaimg.cn/crop.0.0.180.180.180/7f5f6861jw1e8qgp5bmzyj2050050aa8.jpg'
                    ,id: id
                });
            }
        };
        $('.site-demo-layim').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this, $(this).data('toggle')) : '';
        });
    });
</script>

<script id="barDemo" type="text/html">
    {{#  if(d.tbloderstate.osname =="待处理"){}}
    <a class="layui-btn layui-btn-xs" lay-event="chat">沟通</a>
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>

    {{# } if(d.tbloderstate.osname =="已处理"){}}
    <a class="layui-btn layui-btn-xs " lay-event="useEna">回访</a>
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>
    {{# } if(d.tbloderstate.osname =="已评价"){}}
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>
    {{# } if(d.tbloderstate.osname =="已取消"){}}
    <a class="layui-btn layui-btn-xs" lay-event="useDis">详情</a>
    {{#  } }}
</script>
</html>
