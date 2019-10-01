<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/24
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css"  media="all">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
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
                            <button type="button" class="layui-btn" id="add">增加</button>
                        </div>
                    </div>
                </div>
                <h3>&nbsp;&nbsp;&nbsp;家政人员</h3>
                <div class="layui-card-body" align="center" >
                    <table class="layui-table" lay-filter="test" id="utable" align="center">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="addstaff" style="display: none">
    <form class="layui-form" action="<%=path%>rrr/addStaff.action" method="post" lay-filter="example" enctype="multipart/form-data">
        <label class="layui-form-label">员工名称</label>
        <div class="layui-input-inline">
            <input type="text" name="sfname" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">员工头像</label>
            <div class="layui-input-inline">
                <input type="file"     name = "pictureFile" />
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">出生日期</label>
            <div class="layui-input-inline">
                <input type="text" name="sfdob" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="sfage" value="男" title="男" checked="">
                <input type="radio" name="sfage" value="女" title="女">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">服务经验</label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" name="sfexp" class="layui-textarea"></textarea>
            </div>
        </div>
        <label class="layui-form-label">单次费用</label>
        <div class="layui-input-inline">
            <input type="text" name="sfcos" lay-verify="required" placeholder="元/次" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">工作经历</label>
            <div class="layui-input-inline">
                <input type="text" name="sfworkexp" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">擅长</label>
            <div class="layui-input-inline">
                <input type="text" name="sfgood" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学历</label>
            <div class="layui-input-inline">
                <input type="text" name="sfedu" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">求职意向</label>
            <div class="layui-input-inline">
                <input type="text" name="sfwant" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
        </div>
<%--        员工所属公司id--%>
        <input type="text" name="fid" value="" hidden="hidden">
        <div class="layui-form-item">
            <div class="layui-input-block">
             <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            </div>
        </div>
    </form>
</div>
</body>

<script id="barDemo" type="text/html">
    <a class="layui-btn layui-btn-xs " lay-event="usedeal">详情</a>
    <a class="layui-btn layui-btn-xs " lay-event="usefix">修改</a>
    <a class="layui-btn layui-btn-xs " lay-event="useDel">删除</a>
</script>

<script>
    layui.use('table', function() {
        var table = layui.table;

        table.render({
            elem: '#utable'
            // , height: 500
            , url: '<%=path%>page/staffList.action' //数据接口
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
                {field: 'sfid', title: '员工编号', minWidth: 50}
                , {field: 'sfname', title: '人员名称', minWidth: 70}
                , {field: 'sfage', title: '性别', minWidth: 70}
                , {field: 'sfdob', title: '出生年月', minWidth: 70}
                , {field: 'sfedu', title: '学历', minWidth:70}
                , {field: 'sfwant', title: '求职意向', minWidth: 70}
                , {field: 'stname', title: '状态', minWidth: 70,templet:function (d) {
                        return d.tblstate.stname
                    }}
                , {field: 'right',fixed:'right', title: '操作', toolbar: '#barDemo', minWidth: 270}
            ]]
        });

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            layer.open({
                type:1,
                title: "上传资料",
                area: ['600px', '500px'],
                content: $("#addstaff")//引用的弹出层的页面层的方式加载修改界面表单
            });
        })

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
                    fal("<%=path%>userManagement/useDis.action",data.sfid);
                    layer.close(index);
                });
            }else if(obj.event==="useDel"){
                layer.confirm('确定禁用？员工ID:'+data.sfid, function (index) {
                    fal("<%=path%>page/useDel.action",data.sfid);
                    layer.close(index);
                });
            }
        });

        function fal(url,sfid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"sfid":sfid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("修改成功");
                    }else{
                        layer.msg("修改失败");
                    }
                    //执行重载
                    table.reload('testReload', {
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('裂开');
                }
            })

        }
    });


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
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
    });
</script>
</html>
