<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>入驻审核</title>
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
              <cite>入驻审核</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>



<div class="layui-flfid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <div class="demoTable">

                        <div class="layui-inline layui-show-xs-block">
                            <input type="text"  placeholder="请输入公司名" autocomplete="off" class="layui-input" name="fname" id="fname">
                            <input type="text"  placeholder="请输入法人代表名" autocomplete="off" class="layui-input" name="flaw" id="flaw">

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
    <a class="layui-btn layui-btn-xs " lay-event="useEna">审核通过</a>
    <a class="layui-btn layui-btn-danger " lay-event="useDis">审核不通过</a>
    <a class="layui-btn layui-btn-normal" lay-event="userContext">查看详情</a>

</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>manager/cmFindCompanyAll.action' //数据接口
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
                {field: 'fid', title: '公司id', minWidth: 100}
                , {field: 'fname', title: '公司名', minWidth: 80}
                , {field: 'flaw', title: '法人代表', minWidth: 80}
                , {field: 'fsite', title: '公司地址', minWidth:50}
                , {field: 'flawphone', title: '公司电话', minWidth: 80}
                , {field: 'ctname', title: '服务类别', minWidth: 80}
                , {field: 'rname', title: '状态', minWidth: 80}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 270}
            ]]
        });
        //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    var fname = $('#fname');
                    var flaw = $('#flaw');
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            fname: fname.val(),
                            flaw: flaw.val(),
                        }
                    }, 'data');
                }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');

            active[type] ? active[type].call(this) : '';
        })

        //监听行工具事件
        table.on('tool(test)', function(obj) {
            var data = obj.data;
            if (obj.event === 'useEna') {
                layer.confirm('确定通过审核？', function (index) {
                    fal("<%=path%>manager/updateCompanyRole2.action",data.fid);
                    layer.close(index);
                });
            }
            else if(obj.event==="useDis"){
                layer.confirm('确定不通过审核？', function (index) {
                    fal("<%=path%>manager/updateCompanyRole.action",data.fid);
                    layer.close(index);
                });
            } else if(obj.event==="userContext"){
                layer.open({
                    type:2,
                    title: "入驻申请详情",
                    area: ['450px', '430px'],
                    content: "HCContext.jsp"+
                        "?fid="+encodeURIComponent(data.fid)+
                        "&fname="+encodeURIComponent(data.fname)+
                        "&flaw="+encodeURIComponent(data.flaw)+
                        "&fsite="+encodeURIComponent(data.fsite)+
                        "&ftime="+encodeURIComponent(data.ftime)+
                        "&flawphone="+encodeURIComponent(data.flawphone)+
                        "&ctname="+encodeURIComponent(data.ctname)+
                        "&rname="+encodeURIComponent(data.rname)
                    //引用的弹出层的页面层的方式加载修改界面表单
                });
            }
        });

        function fal(url,fid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"fid":fid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("操作成功");
                    }else{
                        layer.msg("操作失败");
                    }
                    //执行重载
                    table.reload('testReload', {
                        where: {
                            fname: fname.value,
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
