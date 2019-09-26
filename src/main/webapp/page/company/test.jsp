<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    String path = request.getContextPath() + "/";
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>测试图片回显</title>
</head>
<body>
<form action="<%=path%>rrr/addUser.action" method="post" enctype="multipart/form-data">
    用户名：<input type = "text"  name = "username" /><br>
    图片： <input type="file"     name = "pictureFile" /><br>
    <input type = "submit" value = "提交">
</form>

</body>
</html>

