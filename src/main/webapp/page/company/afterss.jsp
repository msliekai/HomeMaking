<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 16:13
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
    String username = request.getParameter("username")==null?"":request.getParameter("username");
    String sfname = request.getParameter("sfname")==null?"":request.getParameter("sfname");
    String svtime = request.getParameter("svtime")==null?"":request.getParameter("svtime");
    String otitle = request.getParameter("otitle")==null?"":request.getParameter("otitle");
    String ocontext = request.getParameter("ocontext")==null?"":request.getParameter("ocontext");
    String fname = request.getParameter("fname")==null?"":request.getParameter("fname");
    String aftercontext = request.getParameter("aftercontext")==null?"":request.getParameter("aftercontext");
    String afterstaff = request.getParameter("afterstaff")==null?"":request.getParameter("afterstaff");
%>
<body>
订单号：<span><%=onumber%></span><p/>
订单时间：<span><%=otime%></span><p/>
用户：<span ><%=username%></span><p/>
服务人员：<span><%=sfname%></span><p/>
所属公司：<span><%=fname%></span><p/>
服务时间：<span><%=svtime%></span><p/>
服务标题：<span><%=otitle%></span><p/>
服务内容：<span><%=ocontext%></span><p/>
售后需求：<span><%=aftercontext%></span><p/>
售后员工编号：<span><%=afterstaff%></span><p/>
</body>
</html>
