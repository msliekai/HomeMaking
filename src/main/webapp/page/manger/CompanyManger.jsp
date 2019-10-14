<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>家政公司列表</title>
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
              <cite>家政公司列表</cite></a>
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
                            <input type="text"  placeholder="请输入公司名" autocomplete="off" class="layui-input" name="fname" id="fname">
                            <input type="text"  placeholder="请输入状态名" autocomplete="off" class="layui-input" name="stname" id="stname">

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
    <a class="layui-btn layui-btn-xs " lay-event="useEna">启用</a>
    <a class="layui-btn layui-btn-primary " lay-event="useDis">禁用</a>
    <a class="layui-btn layui-btn-normal" lay-event="userContext">查看详情</a>
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>manager/Mcompanylist.action' //数据接口
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
                , {field: 'stname', title: '状态', minWidth: 80}
                , {fixed: 'right',title: '操作', align:'center',minWidth:200,templet:function (item) {
                        var tem = [];
                        console.log(item)
                        if (item.stid == "1") {
                            tem.push('<a lay-event="useDis" class="layui-btn layui-btn-radius layui-btn-danger">禁用</a>');
                        }else{
                            tem.push('<a lay-event="useEna" class="layui-btn layui-btn-radius layui-btn">启用</a>');
                        }
                        tem.push('<a lay-event="userContext" class="layui-btn layui-btn-radius layui-btn-normal">查看详情</a>');
                        return tem.join(' <font></font> ')
                    }}
            ]]
        });
        //触发查询按钮
            var $ = layui.$, active = {
                reload: function(){
                    var fname = $('#fname');
                    var stname = $('#stname');
                    // var cong=$('#cong');
                    // var dao=$('#dao');
                    //执行重载
                    table.reload('testReload', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            fname: fname.val(),
                            stname: stname.val(),
                            // cong:cong.val(),
                            // dao:dao.val(),
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
                layer.confirm('确定启用？', function (index) {
                    fal("<%=path%>manager/updateCompanyState2.action",data.fid);
                    layer.close(index);
                });
            }
            else if(obj.event==="useDis"){
                layer.confirm('确定禁用？', function (index) {
                    fal("<%=path%>manager/updateCompanyState.action",data.fid);
                    layer.close(index);
                });
            } else if(obj.event==="userContext"){
                layer.open({
                    type:2,
                    title: "家政公司详情",
                    area: ['450px', '430px'],
                    content: "CMContext.jsp"+
                        "?fid="+encodeURIComponent(data.fid)+
                        "&fname="+encodeURIComponent(data.fname)+
                        "&flaw="+encodeURIComponent(data.flaw)+
                        "&fsite="+encodeURIComponent(data.fsite)+
                        "&stname="+encodeURIComponent(data.stname)+
                        "&ftime="+encodeURIComponent(data.ftime)+
                        "&flawphone="+encodeURIComponent(data.flawphone)+
                        "&ctname="+encodeURIComponent(data.ctname)
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
