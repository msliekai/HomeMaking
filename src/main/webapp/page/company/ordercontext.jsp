<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/6
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
    <title>Title</title>
</head>
<body>
<% String uu = request.getParameter("uu")==null?"":request.getParameter("uu"); %>
<input type="text" value="<%=uu%>" id="userid" hidden="hidden"/>
用户名称：<span id="username" name="username"></span><p/>
联系方式：<span  id="phone" name="phone"></span><p/>
详细地址：<span  id="add" name="add"></span>
</body>
<script>
    $(document).ready(function(){
        var userid=$("#userid").val();
        $.ajax({
            url:"<%=path%>page/finduser.action",
            type:"GET",
            data:"userid="+userid,
            success:function(redata){
                var obj= redata;
                $("#username").html(obj.username);
                $("#phone").html(obj.userphone);
                $("#add").html(obj.tblSite.sa+obj.tblSite.sb+obj.tblSite.sc+obj.tblSite.scontext);
            }
        });
    });

</script>
</html>
