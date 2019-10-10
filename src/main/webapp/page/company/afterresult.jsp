<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 15:22
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
    String oid = request.getParameter("oid")==null?"":request.getParameter("oid");
%>
<form id="cos" action="" method="get">
    <input type="text" id="oid" name="oid" value="<%=oid%>" hidden="hidden"/>
    拒绝理由：<textarea cols="60" rows="8" id="afterresult" name="afterresult"></textarea>
    <input type="button" onclick="tijiao()" value="确定">
</form>
</body>
<script>

    function tijiao() {
        $.ajax({
            url:"<%=path%>page/afterResult.action",
            type:"get",
            dataType: "text",
            data:$('#cos').serialize(),
            success:function(redata){
                var a = redata;
                if(a=="ok")
                {
                    alert("反馈成功")
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    parent.layui.table.reload("testReload", { //此处是上文提到的 初始化标识id
                        page:{
                            curr: 1
                        }
                    });
                }else
                {
                    alert("反馈失败")
                    layer.close(layer.index);
                }
            }
        })
    }
</script>
</html>
