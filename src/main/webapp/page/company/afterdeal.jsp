<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
    <title>Title</title>
</head>
<body>
<%
    String username = request.getParameter("username")==null?"":request.getParameter("username");
    String otime = request.getParameter("otime")==null?"":request.getParameter("otime");
    String aftercontext = request.getParameter("aftercontext")==null?"":request.getParameter("aftercontext");
%>
用户：<span id="trid"><%=username%></span><p/>
订单时间：<span id="trtitle"><%=otime%></span><p/>
售后内容：<span id="trcontext"><%=aftercontext%></span><p/>
</body>
</html>
