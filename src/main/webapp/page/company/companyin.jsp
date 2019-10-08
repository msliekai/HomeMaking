<%--
  Created by IntelliJ IDEA.
  User: 王佳锋
  Date: 2019/9/23
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>入驻申请</title>
</head>
<body>
<form action="">

公司名称：<input type="text" id="fname" name="fname"/><p/>
服务类别：
<input type="checkbox" name="ctid" id="品类保洁"/>品类保洁
<input type="checkbox" name="ctid" id="日常保洁"/>日常保洁
<input type="checkbox" name="ctid" id="保姆"/>保姆
<input type="checkbox" name="ctid" id="月嫂"/>月嫂
<input type="checkbox" name="ctid" id="育儿嫂"/>育儿嫂
<p/>
资料上传：<input type="file"/><p/>
<input type="submit" value="提交"/>
<input type="button" value="取消"/>

</form>
</body>
</html>
