<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
</head>
<body>
<%
    String onumber = request.getParameter("onumber")==null?"":request.getParameter("onumber");
    String otime = request.getParameter("otime")==null?"":request.getParameter("otime");
    String aftercontext = request.getParameter("aftercontext")==null?"":request.getParameter("aftercontext");
    String afterresult = request.getParameter("afterresult")==null?"":request.getParameter("afterresult");
%>
订单号：<span><%=onumber%></span><p/>
订单时间：<span><%=otime%></span><p/>
售后请求：<span><%=aftercontext%></span><p/>
售后回复：<span><%=afterresult%></span><p/>
</body>
</html>
