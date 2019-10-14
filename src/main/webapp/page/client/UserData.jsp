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

<%
    String str = (String) request.getAttribute("flog");
    if (str == "ChangePWD") {
%>
<script>
    alert("修改密码！需重新登录");
    location.href="<%=path%>page/client/chome.jsp";
</script>
<%
}else if (str == "OK") {
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
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
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

                    <form action="<%=path%>admin/upUser.action" enctype="multipart/form-data" method="post" target="_top" onsubmit="return upuse()">
                        基本信息
                        <hr class="layui-bg-blue">
                        <div  align="center"><%--demoTable--%>
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
                                    <td><input type="text" id="username" name="username" class="layui-input" style="width: 60%"
                                               value="${sessionScope.userbacc.username}"/></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>手机号码：</td>
                                    <td><input type="text" id="userphone" name="userphone" class="layui-input" style="width: 60%"
                                               value="${sessionScope.userbacc.userphone}" readonly="readonly"/></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>登录密码：</td>
                                    <td><input type="password" id="userpwd" name="userpwd" class="layui-input" style="width: 60%"
                                               value="${sessionScope.userbacc.userpwd}" /></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
                                    <td>

                                        <%
                                            TblUser use = (TblUser) request.getSession().getAttribute("userbacc");
                                            if (use.getUsersex().equals("女")) {
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
                                    <td>默认地址：</td>
                                    <td><select class="form-control" id="sid" name="sid" style="width: 100%">
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
</html>
