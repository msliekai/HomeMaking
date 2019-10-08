<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/28
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=path%>rrr/addUser.action" method="post" enctype="multipart/form-data">
    <% String uu = request.getParameter("uu")==null?"":request.getParameter("uu"); %>
    图片： <input type="file"     name = "pictureFile" /><br>
    <input type="text" value="<%=uu%>" name="creid" hidden="hidden">
    <input type = "submit" value = "提交">
    <span></span>
</form>
</body>
</html>
