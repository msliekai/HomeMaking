<%@ page import="com.hm.entity.TblUser" %>
<%@ page import="javafx.scene.control.Alert" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  用户基本信息页
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>账户</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/client/assets/js/vendor/jquery-3.4.1.min.js"></script>
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
    <script src="<%=path%>page/client/js/chome.js"></script>
</head>
<body>
<div class="x-nav">
          <%--<span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">个人中心</a>
            <a>
              <cite>基本信息</cite></a>
          </span>--%>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">

                    <form action="<%=path%>admin/upUser.action" enctype="multipart/form-data" method="post" onsubmit="return upuse()">
                        基本信息
                        <hr class="layui-bg-blue">
                        <div class="demoTable" align="center">
                            <table width="60%" border="0">
                                <tbody>
                                <tr>
                                    <td width="30%">我的头像：</td>
                                    <td>
                                        <input name="fileact" type="file" id="fileact"/>
                                        <%--                                        <img id="im" src="<%=path%>${sessionScope.userbacc.userurl}" style="width: 150px;height: 150px">--%>

                                    </td>
                                    <td>
                                        <%--                                        <a class="layui-btn layui-btn-xs  layui-btn-normal" onclick="makeThisfile()" id="browse">选择图片</a>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="30%"></td>
                                    <td><!-- 用于展示上传文件名的表单 -->
                                        <span style="color: crimson">(不修改头像请不要选择)</span>
                                        <%--                                        <input id="showname" type="text" style="height:25px;" autocomplete="off"  readonly="true">--%>
                                        <%--                                        <!-- 点击触发按钮 -->--%>

                                        <%--                                        &lt;%&ndash; 真头像在这&ndash;%&gt;--%>

                                    </td>
                                </tr>
                                <tr>
                                    <td>账户名称：</td>
                                    <td><input type="text" id="username" name="username"
                                               value="${sessionScope.userbacc.username}"/></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>手机号码：</td>
                                    <td><input type="text" id="userphone" name="userphone"
                                               value="${sessionScope.userbacc.userphone}"/></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                                    <td>

                                        <%
                                            TblUser use = (TblUser) request.getSession().getAttribute("userbacc");
                                            if (use.getUsersex() == "女") {
                                        %>
                                        <label class="radio-inline">
                                            <input type="radio" name="usersex" id="nna" value="男">男
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="usersex" id="nnv" value="女" checked>女
                                        </label>
                                        <%
                                        } else {
                                        %>
                                        <label class="radio-inline">
                                            <input type="radio" name="usersex" id="nna1" value="男" checked>男
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="usersex" id="nnv1" value="女">女
                                        </label>
                                        <%
                                            }
                                        %>

                                    </td>
                                </tr>
                                <tr>
                                    <td>设置默认地址：</td>
                                    <td><select class="form-control" id="sid" name="sid">
                                    </select>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <input type="submit" class="layui-btn layui-btn-primary" value="保存"></input>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                </tbody>
                            </table>


                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>

</body>

<script id="barDemo" type="text/html">
    <%--<a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>
    <a class="layui-btn layui-btn-primary " lay-event="useDis">禁用</a>
    <a class="layui-btn layui-btn-normal" lay-event="useResetPwd">重置密码</a>--%>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="useDel">删除</a>
</script>

<script>
    $(document).ready(function () {
        $("#sid").ready(function () {
            theSityY();
        })
    })

    /**
     * 获得地址
     */
    function theSityY() {
        layui.use('layer', function () {
            $.ajax({
                async: true,
                type: "post", //提交方式
                url: "<%=path%>admin/querySite.action",
                success: function (jso) {//执行结果
                    var ht = "";
                    if (jso.defaulAddress != null) {
                        var defaul = jso.defaulAddress;
                        ht += "<option value='" + defaul.sid + "' >" + defaul.sa + "-" + defaul.sb + "-" + defaul.sc + "-" + defaul.scontext + "（默认地址）</option>";
                    }

                    $.each(jso.list, function (k, v) {
                        ht += "<option value='" + v.sid + "' >" + v.sa + "-" + v.sb + "-" + v.sc + "-" + v.scontext + "</option>";
                    })
                    $("#sid").html(ht);
                },
            })
        })
    }
</script>
<%--<script>
    layui.use('table', function() {
        var table = layui.table;

        /*table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>admin/jUserMoney.action' //数据接口
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
                {field: 'oid', title: '序号', minWidth: 80}
                , {field: 'onumber', title: '订单号', minWidth: 150}
                , {field: 'cosname', title: '服务事项', minWidth: 80}
                , {field: 'ctname', title: '服务分类', minWidth:80}
                , {field: 'otime', title: '消费时间', minWidth: 100}
                , {field: 'fname', title: '商家名称', minWidth: 80}
                , {field: 'money', title: '消费金额', minWidth: 80}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 80}
            ]]
        });*/
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
                layer.confirm('确定删除？ID:'+data.uid, function (index) {
                    fal("<%=path%>userManagement/useDel.action",data.uid);
                    layer.close(index);
                });
            } else if (obj.event === 'useEna') {
                layer.confirm('确定启用？', function (index) {
                    fal("<%=path%>userManagement/useEna.action",data.uid);
                    layer.close(index);
                });
            }else if(obj.event==="useDis"){
                layer.confirm('确定禁用？', function (index) {
                    fal("<%=path%>userManagement/useDis.action",data.uid);
                    layer.close(index);
                });
            } else if(obj.event==="useResetPwd"){
                layer.confirm('确定重置？', function (index) {
                    fal("<%=path%>userManagement/useResetPwd.action",data.uid);
                    layer.close(index);
                });
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

</script>--%>

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

<%
    String str = (String) request.getAttribute("flog");
    if (str == "OK") {
%>
<script>
    alert("修改成功");
</script>
<%
} else if (str == "NO") {
%>
<script>
    alert("修改成功");
</script>
<%
    }
%>