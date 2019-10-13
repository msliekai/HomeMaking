
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>入驻申请详情</title>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
</head>
<body>
<%
    String fid = request.getParameter("fid")==null?"":request.getParameter("fid");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
    String flaw = request.getParameter("flaw")==null?"":request.getParameter("flaw");
    String fsite = request.getParameter("fsite")==null?"":request.getParameter("fsite");
    String ftime = request.getParameter("ftime")==null?"":request.getParameter("ftime");
    String flawphone = request.getParameter("flawphone")==null?"":request.getParameter("flawphone");
    String ctname = request.getParameter("ctname")==null?"":request.getParameter("ctname");
    String rname = request.getParameter("rname")==null?"":request.getParameter("rname");


%>
<form class="layui-form" action="" method="post" lay-filter="example" >
    <div class="layui-form-item">
        <label class="layui-form-label">家政公司id</label>
        <div class="layui-input-inline">
            <input type="text" name="fid" lay-verify="required" value="<%=fid%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">家政名称</label>
        <div class="layui-input-inline">
            <input type="text" name="fname" lay-verify="required" value="<%=fname%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">法人代表</label>
        <div class="layui-input-inline">
            <input type="text" name="flaw" lay-verify="required" value="<%=flaw%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">公司地址</label>
        <div class="layui-input-inline">
            <input type="text" name="fsite" lay-verify="required" value="<%=fsite%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">公司电话</label>
        <div class="layui-input-inline">
            <input type="text" name="flawphone" lay-verify="required" value="<%=flawphone%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">服务类别</label>
        <div class="layui-input-inline">
            <input type="text" name="ctname" lay-verify="required" value="<%=ctname%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <input type="text" name="rname" lay-verify="required" value="<%=rname%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">注册时间</label>
        <div class="layui-input-inline">
            <input type="text" name="ftime" lay-verify="required" value="<%=ftime%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>

</form>

</body>
</html>
