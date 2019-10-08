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
    <title>公司账户</title>
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

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    评论信息
                    <hr class="layui-bg-red">

                    <%--<div class="layui-form-item">
                            <div class="layui-inline">
                            <label class="layui-form-label">账户类型:</label>
                            <div class="layui-input-inline">
                                <input type="tel" name="cardtype" lay-verify="required|phone" autocomplete="off" class="layui-input" id="cardtype">
                            </div>--%>
                    <form class="layui-form" action="<%=path%>rrr/addStaff.action" method="post" lay-filter="example" enctype="multipart/form-data">
                    <div class="layui-inline">
                        <label class="layui-form-label">起始时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="sfdob" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                    <div class="layui-inline">
                            <label class="layui-form-label">结束时间</label>
                        <div class="layui-input-inline">
                            <input type="text" name="sfdob" id="date2" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                        <div class="layui-inline layui-show-xs-block">
                            <span><button class="layui-btn"  data-type="reload"><i class="layui-icon">&#xe615;</i></button></span>
                        </div>

                    </form>


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
        // var date1 =$('#date1').val();
        // var date2 =$('#date2').val();
        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>page/querycomment.action' //数据接口
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
                // {field: 'eid', title: '序号', minWidth: 100}

                 {field: 'userurl', title: '用户头像', minWidth: 80,templet:function (d) {return d.tblorder.tblUser.userurl

                    }}
                , {field: 'userid', title: '用户id', minWidth: 80,templet:function (d) {return d.tblorder.tblUser.userid

                    }}

                , {field: 'econtext', title: '评价', minWidth: 80}
                , {field: 'etime', title: '评价时间', minWidth: 80}
            ]]
        });
        //触发查询按钮
        var $ = layui.$, active = {
            reload: function(){
                var date1 = $('#date1');
                var date2=$('#date2');
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        date1: date1.val(),
                        date2:date2.val(),
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

</script>
<script src="<%=path%>page/layui/laydate.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date1'
        });
        laydate.render({
            elem: '#date2'
        });
    });
</script>

</html>
