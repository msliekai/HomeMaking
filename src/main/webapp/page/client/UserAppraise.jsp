<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  待评价
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>我的评价</title>
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
    <%--页眉导航栏--%>
          <%--<span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">个人中心</a>
            <a>
              <cite>我的评价</cite></a>
          </span>--%>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
<%--                    <form class="layui-form layui-col-space5">--%>

    <%--账户信息<hr class="layui-bg-blue">
                    <div class="demoTable" align="center">
                        <table width="50%" border="0">
                            <tbody>
                            <tr>
                                <td width="30%">账号类型：</td>
                                <td>个人账号</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>账户余额：</td>
                                <td>${sessionScope.userbacc.usermoney}元</td>
                                <td><button class="layui-btn layui-btn-normal">充值</button></td>
                            </tr>
                            <tr>
                                <td>绑定账户：</td>
                                <td>${sessionScope.userbacc.usercard}</td>
                                <td><button class="layui-btn layui-btn-primary">修改</button></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>--%>


                        <%--<div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="开始日" type="date" name="cong" id="cong">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input"  autocomplete="off" placeholder="截止日" type="date" name="dao" id="dao">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text"  placeholder="请输入用户名" autocomplete="off" class="layui-input" name="uname" id="uname">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <span><button class="layui-btn"  data-type="reload"><i class="layui-icon">&#xe615;</i></button></span>
                        </div>--%>

    所有评论<hr class="layui-bg-blue">
<%--                    </form>--%>
                </div>
<%--                <s:property value="list"></s:property>--%>

                <%--<div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    <button class="layui-btn" onclick="xadmin.open('添加管理员','<%=path%>page/Xadmin/member-add.jsp',600,400)"><i class="layui-icon"></i>添加管理员</button>
                </div>--%>

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
    <%--<a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>
    <a class="layui-btn layui-btn-primary " lay-event="useDis">禁用</a>--%>
    <a class="layui-btn layui-btn-normal" lay-event="useResetPwd">去评价</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="useDel">删除</a>
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>admin/jUserAppraise.action' //数据接口
            , page: true //开启分页
            ,limit:2
            , limits: [2,3,5,10]
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
                {field: 'sfname', title: '保姆名字', minWidth: 80,templet:function (d) {return d.tblorder.staff.sfname}}
                , {field: 'fname', title: '所属公司', minWidth: 150,templet:function (d) {return d.tblorder.staff.company.fname}}
                , {field: 'svtime', title: '服务时间', minWidth: 80,templet:function (d) {return d.tblorder.svtime}}
                , {field: 'money', title: '总费用', minWidth:80,templet:function (d) {return d.tblorder.staff.sfcos}}
                , {field: 'osname', title: '状态', minWidth: 100,templet:function (d) {return d.tblorder.tbloderstate.osname}}
                , {fixed: 'right',title: '操作', align:'center',minWidth:150,templet:function (item) {
                        var tem = [];
                        console.log(item)
                        if (item.tblorder.osid == "5") {
                            tem.push('<a lay-event="useCK" class="layui-btn layui-btn-primary">详情</a>');
                        }
                        if(item.tblorder.osid == "2"){
                            tem.push('<a lay-event="useApp" class="layui-btn layui-btn-normal">评论</a>');
                        }
                        tem.push('<a lay-event="useDel" class="layui-btn  layui-btn-danger layui-btn-xs"><i class="layui-icon layui-icon-delete"></i>删除</a>');
                        return tem.join(' <font></font> ')
                    }}
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
            if (obj.event === 'useDel') {
                layer.confirm('确定删除该订单记录？', function (index) {
                    fal("<%=path%>admin/jdelorder.action",data.tblorder.oid);
                    layer.close(index);
                });
            } else if (obj.event === 'useCK') {
                layer.open({
                    type:2,
                    title: "评价详情",
                    area: ['300px', '400px'],
                    content: "<%=path%>page/client/branch/Appraise.jsp"+
                        "?sfname="+encodeURIComponent(data.tblorder.staff.sfname)+
                        "&fname="+encodeURIComponent(data.tblorder.staff.company.fname)+
                        "&svtime="+encodeURIComponent(data.tblorder.svtime)+
                        "&money="+encodeURIComponent(data.tblorder.staff.sfcos)+
                        "&etime="+encodeURIComponent(data.etime)+
                        "&econtext="+encodeURIComponent(data.econtext)+
                        "&econut="+encodeURIComponent(data.econut)+
                        "&eid="+encodeURIComponent(data.eid)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }else if(obj.event==="useApp"){
                layer.open({
                    type:2,
                    title: "评价",
                    area: ['400px', '400px'],
                    content: "<%=path%>page/client/branch/AddAppraise.jsp"+
                        "?sfname="+encodeURIComponent(data.tblorder.staff.sfname)+
                        "&fname="+encodeURIComponent(data.tblorder.staff.company.fname)+
                        "&svtime="+encodeURIComponent(data.tblorder.svtime)+
                        "&money="+encodeURIComponent(data.tblorder.staff.sfcos)+
                        "&oid="+encodeURIComponent(data.tblorder.oid)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }
        });

        function fal(url,oid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"oid":oid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("操作成功");
                    }else{
                        layer.msg("操作失败");
                    }
                    //执行重载
                    table.reload('testReload', {
                        /*where: {
                            uname: uname.value,
                            cong:cong.value,
                            dao:dao.value,
                        }*/
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('未知错误');
                }
            })

        }
    });

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
</html>
