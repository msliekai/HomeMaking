<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
<title>登录页面html代码表单样式</title>

</head>
<body>
<form action="<%=path%>admin/userlogin.action" method="post">
    账号:<input type="text" name="userid"><p/>
    密码:<input type="password" name="userpwd"><p/>
    <input type="submit" value="登录">
</form>

<a href="client/chome.jsp">a</a>

</body>
</html>