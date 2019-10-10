<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  订单
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
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
              <cite>我的订单</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">

    订单记录<hr class="layui-bg-blue">

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <select name="osid" id="osid" >
                                <option value="">全部</option>
                                <option value="7">待确认</option>
                                <option value="1">待处理</option>
                                <option value="2">已处理</option>
                                <option value="5">已评价</option>
                            </select>
                        </div>
                    </div>
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

function a(){
    alert("---------------------");
}

    layui.use('table', function() {
        var table = layui.table;


        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>admin/jUserMoney.action' //数据接口
            , page: true //开启分页
            ,limit:3
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
                {field: 'oid', title: '序号', minWidth: 80}
                , {field: 'onumber', title: '订单号', minWidth: 150}
                , {field: 'osname', title: '订单状态', minWidth: 80,templet:function (d) {return d.tbloderstate.osname}}
                , {field: 'cosname', title: '服务事项', minWidth: 80,templet:function (d) {return d.tblCOS.cosname}}
                , {field: 'ctname', title: '服务分类', minWidth:80,templet:function (d) {return d.tblCOS.tblCOStype.ctname}}
                , {field: 'otime', title: '消费时间', minWidth: 100}
                , {field: 'fname', title: '商家名称', minWidth: 80,templet:function (d) {return d.staff.company.fname}}
                , {field: 'money', title: '消费金额', minWidth: 80}
                /*,{field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 180}*/
                ,{fixed: 'right',title: '操作', align:'center',minWidth:150,templet:function (item) {
                        var tem = [];
                        console.log(item)
                        if (item.osid == "1") {
                            tem.push('<a lay-event="userCK" class="layui-btn layui-btn-normal">查看</a>');
                        }
                        if(item.osid == "2"){
                            tem.push('<a lay-event="userEdit" class="layui-btn layui-btn-normal">编辑</a>');
                        }
                        tem.push('<a lay-event="userDel" class="layui-btn  layui-btn-danger layui-btn-xs"><i class="layui-icon layui-icon-delete"></i>删除</a>');
                        return tem.join(' <font></font> ')
                    }}
            ]]
        });
        //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    var osid = $('#osid');
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            osid: osid.val(),
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
            if (obj.event === 'userCK') {
                layer.open({
                    type:2,
                    title: "详情",
                    area: ['300px', '400px'],
                    content: "<%=path%>page/client/branch/Order.jsp"+
                        "?ordernum="+encodeURIComponent(data.onumber)+
                        "&ordertype="+encodeURIComponent(data.tbloderstate.osname)+
                        "&cos="+encodeURIComponent(data.tblCOS.cosname)+
                        "&costype="+encodeURIComponent(data.tblCOS.tblCOStype.ctname)+
                        "&otime="+encodeURIComponent(data.otime)+
                        "&fname="+encodeURIComponent(data.staff.company.fname)+
                        "&allmoney="+encodeURIComponent(data.money)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            } else if (obj.event === 'userEdit') {
                layer.confirm('确定启用？', function (index) {
                    fal("<%=path%>admin/jdel.action",data.oid);
                    layer.close(index);
                });
            }else if(obj.event==="userDel"){
                layer.confirm('确定删除？', function (index) {
                    fal("<%=path%>admin/jdelorder.action",data.oid);
                    layer.close(index);
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
</html>
