<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/28
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
</head>
<body>
<%
    String uu = request.getParameter("uu")==null?"":request.getParameter("uu");
%>
<form id="file" action="" method="post" enctype="multipart/form-data">
    图片： <input type="file"     name = "pictureFile" /><br>
    <input type="text" value="<%=uu%>" name="creid" hidden="hidden">
    证书名：<input type="text" name="upname"/><p/>
    <input type = "button" value = "提交" onclick="tijiao()">
    <span></span>
</form>
</body>
<script>
    function tijiao() {
        $.ajax({
            url:"<%=path%>admin/addComCre.action",
            type:"post",
            cache: false,
            processData: false,
            contentType: false,
            dataType: "text",
            data:new FormData($('#file')[0]),
            success:function(redata){
                var a = redata;
                if(a=="ok")
                {
                    alert("增加成功")
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    parent.layui.table.reload("testReload", { //此处是上文提到的 初始化标识id
                        page:{
                            curr: 1
                        }
                    });
                }else
                {
                    alert("增加失败")
                    layer.close(layer.index);
                }
            }
        })
    }
</script>
</html>
