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
    <title>服务类别</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
    <script src="<%=path%>page/company/js/jquery.min.js"></script>

</head>
<body>
<%--<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>用户管控</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>--%>


<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    服务类别
                    <hr class="layui-bg-red">

                    <div class="layui-form-item">
                            <%--<div class="layui-inline">
                            <label class="layui-form-label">账户类型:</label>
                            <div class="layui-input-inline">
                                <input type="tel" name="cardtype" lay-verify="required|phone" autocomplete="off" class="layui-input" id="cardtype">
                            </div>
                    </div>--%>

                    <div class="layui-form-item">
                            <%--<div class="layui-inline">
                                <label class="layui-form-label">账户余额:</label>
                                <div class="layui-input-inline">
                                    <input type="tel" name="famoney" lay-verify="required|phone" autocomplete="off" class="layui-input" id="famoney">
                                </div>
                    </div>--%>

                    <div class="layui-form-item">
                                <%--<div class="layui-inline">
                                    <label class="layui-form-label">绑定账号:</label>
                                    <div class="layui-input-inline">
                                        <input type="tel" name="facard" lay-verify="required|phone" autocomplete="off" class="layui-input" id="facard">
                                    </div>
                                    <button class="layer-btn" onclick="changefacard()">修改</button>
                                </div>
                    </div>--%>

                       <%-- <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
                            <button class="layui-btn layui-btn-normal" data-method="offset" data-type="auto" name="addmoney" id="addmoney" onclick="addmoney()">充值</button>
                            <button class="layui-btn layui-btn-normal" data-method="offset" data-type="auto" name="addmoney" id="transfer" onclick="transfer()">转账</button>
                            <button class="layui-btn layui-btn-normal" data-method="offset" data-type="auto" name="addmoney" id="draw" onclick="draw()">提现</button>

                            </div>
--%>
                </div>



                <%--                <s:property value="list"></s:property>--%>
                <%--<div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('添加管理员','<%=path%>Xadmin/member-add.jsp',600,400)"><i class="layui-icon"></i>添加管理员</button>
                </div>--%>

                <div class="layui-card-body" align="center" >
                    <table class="layui-table" lay-filter="test" id="utable" align="center">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%--<script id="barDemo" type="text/html">--%>
<%--    <a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>--%>
<%--    <a class="layui-btn layui-btn-primary " lay-event="useDis">禁用</a>--%>
<%--    <a class="layui-btn layui-btn-normal" lay-event="useResetPwd">重置密码</a>--%>
<%--    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="useDel">删除</a>--%>
<%--</script>--%>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>page/servicetype.action' //数据接口
            , page: true //开启分页
            ,limit:5
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
                {field: 'ctname', title: '服务类别名', minWidth: 100,templet:function (d) {return d.tblCOStype.ctname}}
                , {field: 'cttime', title: '服务申请时间', minWidth: 80,templet:function (d) {return d.tblCOStype.cttime}}
                , {field: 'stname', title: '状态', minWidth: 80,templet:function (d) {return d.tblstate.stname}}
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
            if (obj.event === 'addmoney') {
                layer.open({
                    type: 1,
                    title: "上传资料",
                    area: ['500px', '200px'],
                    content: $("#scheduling")//引用的弹出层的页面层的方式加载修改界面表单
                });
            } else if (obj.event === 'useEna') {

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
                            cong:cong.value,
                            dao:dao.value,
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
    //公司银行账户
    $(function(){
        $.post("<%=path%>page/queryfirmacc.action",
            function (data) {
                $("#cardtype").val(data.cardtype);
                $("#facard").val(data.facard);
                $("#famoney").val(data.famoney);
            }
        );
    });
    //充值
    function addmoney() {
        layer.prompt(function(value, index, elem){
            /*alert(value); //得到value*/
            var addmoney=value;
            var zzm = /^\+?[1-9][0-9]{0,4}$/;
            if(zzm.test(addmoney)){
                if(addmoney!=null&&addmoney!=""){

                    $(function () {
                        $.post("<%=path%>page/addmoney.action",
                            {"addmoney":addmoney},
                            function (data) {
                                alert("充值成功");
                            })
                    });
                    layer.close(index);
                }

            }else{
                alert("请输入正确格式，正整数且不大于100000！")
            }

        });
    }
    //转账
    function transfer() {
        layer.prompt(function(value, index, elem){
            alert(value); //得到value

            layer.close(index);
        });
    }
    //提现
    function draw() {
        layer.prompt(function(value, index, elem){
            var drawmoney=value;
            var zzm = /^\+?[1-9][0-9]{0,4}$/;
            if(zzm.test(drawmoney)){
                $(function () {

                    $.post("<%=path%>page/drawmoney.action",{"drawmoney":drawmoney},
                        function (data) {
                            if(data=="1"){
                                alert("提现成功");
                            }else {
                                alert("余额不足");
                            }
                        });
                });
                layer.close(index);
            }else{
                alert("请输入正确格式，正整数且不大于100000！");
            }

        });
    }
    //修改银行卡号
    function changefacard() {
        // alert("222");
        var car=$("#facard").val();
        var pattern = /^([1-9]{1})(\d{14}|\d{18})$/;
        if(pattern.test(car)){
            $.post("<%=path%>page/changefacard.action",{"car":car},
                function (data) {
                    if(data=="1"){
                        alert("修改成功");
                    }else{
                        alert("修改失败");
                    }
                });
        }else{
            alert("修改卡号格式错误");
        }

    }

</script>
<%--<script>--%>
<%--    layui.use(['laydate','form'], function(){--%>
<%--        var laydate = layui.laydate;--%>
<%--        var  form = layui.form;--%>


<%--        // 监听全选--%>
<%--        form.on('checkbox(checkall)', function(data){--%>

<%--            if(data.elem.checked){--%>
<%--                $('tbody input').prop('checked',true);--%>
<%--            }else{--%>
<%--                $('tbody input').prop('checked',false);--%>
<%--            }--%>
<%--            form.render('checkbox');--%>
<%--        });--%>
<%--        //执行一个laydate实例--%>
<%--        laydate.render({--%>
<%--            elem: '#start' //指定元素--%>
<%--        });--%>

<%--        //执行一个laydate实例--%>
<%--        laydate.render({--%>
<%--            elem: '#end' //指定元素--%>
<%--        });--%>
<%--    });--%>


<%--    /*用户-停用*/--%>
<%--    function member_stop(obj,id){--%>
<%--        layer.confirm('确认要停用吗？',function(index){--%>

<%--            if($(obj).attr('title')=='启用'){--%>

<%--                //发异步把用户状态进行更改--%>
<%--                $(obj).attr('title','停用')--%>
<%--                $(obj).find('i').html('&#xe62f;');--%>

<%--                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');--%>
<%--                layer.msg('已停用!',{icon: 5,time:1000});--%>

<%--            }else{--%>
<%--                $(obj).attr('title','启用')--%>
<%--                $(obj).find('i').html('&#xe601;');--%>

<%--                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');--%>
<%--                layer.msg('已启用!',{icon: 5,time:1000});--%>
<%--            }--%>

<%--        });--%>
<%--    }--%>

<%--    /*用户-删除*/--%>
<%--    function member_del(obj,id){--%>
<%--        layer.confirm('确认要删除吗？',function(index){--%>
<%--            //发异步删除数据--%>
<%--            $(obj).parents("tr").remove();--%>
<%--            layer.msg('已删除!',{icon:1,time:1000});--%>
<%--        });--%>
<%--    }--%>

<%--    function delAll (argument) {--%>
<%--        var ids = [];--%>

<%--        // 获取选中的id--%>
<%--        $('tbody input').each(function(index, el) {--%>
<%--            if($(this).prop('checked')){--%>
<%--                ids.push($(this).val())--%>
<%--            }--%>
<%--        });--%>

<%--        layer.confirm('确认要删除吗？'+ids.toString(),function(index){--%>
<%--            //捉到所有被选中的，发异步进行删除--%>
<%--            layer.msg('删除成功', {icon: 1});--%>
<%--            $(".layui-form-checked").not('.header').parents('tr').remove();--%>
<%--        });--%>
<%--    }--%>

<%--</script>--%>
</body>
</html>
