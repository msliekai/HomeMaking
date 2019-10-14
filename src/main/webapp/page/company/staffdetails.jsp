<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/29
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>员工详情</title>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
</head>
<body>
<%
    String sfid = request.getParameter("sfid")==null?"":request.getParameter("sfid");
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
    String sfage = request.getParameter("sfage")==null?"":request.getParameter("sfage");
    String sfdob = request.getParameter("sfdob")==null?"":request.getParameter("sfdob");
    String sfcos = request.getParameter("sfcos")==null?"":request.getParameter("sfcos");
    String sfworkexp = request.getParameter("sfworkexp")==null?"":request.getParameter("sfworkexp");
    String sfgood = request.getParameter("sfgood")==null?"":request.getParameter("sfgood");
    String sftag = request.getParameter("sftag")==null?"":request.getParameter("sftag");
    String sfedu = request.getParameter("sfedu")==null?"":request.getParameter("sfedu");
    String sfwant = request.getParameter("sfwant")==null?"":request.getParameter("sfwant");
    String scard = request.getParameter("scard")==null?"":request.getParameter("scard");

%>
<form class="layui-form" action="" method="post" lay-filter="example" >
    <div class="layui-form-item">
        <label class="layui-form-label">员工id</label>
        <div class="layui-input-inline">
            <input type="text" name="sfid" lay-verify="required" value="<%=sfid%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">员工名称</label>
        <div class="layui-input-inline">
            <input type="text" name="sfname" lay-verify="required" value="<%=sfname%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-inline">
            <input type="text" name="sfage" lay-verify="required" value="<%=sfage%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">出生日期</label>
        <div class="layui-input-inline">
            <input type="text" name="sfdob" lay-verify="required" value="<%=sfdob%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">单次费用</label>
        <div class="layui-input-inline">
            <input type="text" name="sfcos" lay-verify="required" value="<%=sfcos%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">工作经历</label>
        <div class="layui-input-inline">
            <input type="text" name="sfworkexp" lay-verify="required" value="<%=sfworkexp%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">擅长</label>
        <div class="layui-input-inline">
            <input type="text" name="sfgood" lay-verify="required" value="<%=sfgood%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">标签/评价</label>
        <div class="layui-input-inline">
            <input type="text" name="sftag" lay-verify="required" value="<%=sftag%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">学历</label>
        <div class="layui-input-inline">
            <input type="text" name="sfedu" lay-verify="required" value="<%=sfedu%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">求职意向</label>
        <div class="layui-input-inline">
            <input type="text" name="sfwant" lay-verify="required" value="<%=sfwant%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">银行卡</label>
        <div class="layui-input-inline">
            <input type="text" name="scard" lay-verify="required" value="<%=scard%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
</form>

</body>
</html>
