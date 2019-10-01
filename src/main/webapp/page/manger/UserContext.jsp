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
    <title>用户详情</title>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
</head>
<body>
<%
    String userid = request.getParameter("userid")==null?"":request.getParameter("userid");
    String username = request.getParameter("username")==null?"":request.getParameter("username");
    String usersex = request.getParameter("usersex")==null?"":request.getParameter("usersex");
    String userphone = request.getParameter("userphone")==null?"":request.getParameter("userphone");
    String usertime = request.getParameter("usertime")==null?"":request.getParameter("usertime");
    String usermoney = request.getParameter("usermoney")==null?"":request.getParameter("usermoney");
    String usercon = request.getParameter("usercon")==null?"":request.getParameter("usercon");
    String usercard = request.getParameter("usercard")==null?"":request.getParameter("usercard");
    String stname = request.getParameter("stname")==null?"":request.getParameter("stname");


%>
<form class="layui-form" action="" method="post" lay-filter="example" >
    <div class="layui-form-item">
        <label class="layui-form-label">用户id</label>
        <div class="layui-input-inline">
            <input type="text" name="userid" lay-verify="required" value="<%=userid%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">用户名称</label>
        <div class="layui-input-inline">
            <input type="text" name="username" lay-verify="required" value="<%=username%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-inline">
            <input type="text" name="usersex" lay-verify="required" value="<%=usersex%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机号</label>
        <div class="layui-input-inline">
            <input type="text" name="userphone" lay-verify="required" value="<%=userphone%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">注册时间</label>
        <div class="layui-input-inline">
            <input type="text" name="usertime" lay-verify="required" value="<%=usertime%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">余额</label>
        <div class="layui-input-inline">
            <input type="text" name="usermoney" lay-verify="required" value="<%=usermoney%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">积分</label>
        <div class="layui-input-inline">
            <input type="text" name="usercon" lay-verify="required" value="<%=usercon%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">银行卡号</label>
        <div class="layui-input-inline">
            <input type="text" name="usercard" lay-verify="required" value="<%=usercard%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <input type="text" name="stname" lay-verify="required" value="<%=stname%>" autocomplete="off" class="layui-input" disabled/>
        </div>
    </div>
<%--    <div class="layui-form-item">--%>
<%--        <label class="layui-form-label">求职意向</label>--%>
<%--        <div class="layui-input-inline">--%>
<%--            <input type="text" name="sfwant" lay-verify="required" value="<%=sfwant%>" autocomplete="off" class="layui-input" disabled/>--%>
<%--        </div>--%>
<%--    </div>--%>
</form>

</body>
</html>
