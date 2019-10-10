<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 9:07
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
<form id="cos" action="" method="get">
请分配服务类型：<br/>
<select name="ctid" id="ctid">
    <option></option>
</select>
<p/>
    <input type="button" value="确定" onclick="tijiao()"/>
</form>
</body>
<script>
    $(document).ready(function(){
        $.ajax({
            url:"<%=path%>page/findCosStyle.action",
            type:"GET",
            success:function(redata){
                var aa= redata;
                $("#ctid").empty();
                $("#ctid").append(
                    "<option>"+"请选择"+"</option>"
                )
                $.each(aa,function(idx,obj){
                    $("#ctid").append(
                        "<option value='"+obj.tblCOStype.ctid+"'>"+obj.tblCOStype.ctname+"</option>"
                    )
                })
            }
        })

    });
</script>
<script>

    function tijiao() {
        $.ajax({
            url:"<%=path%>page/fenPei.action",
            type:"get",
            dataType: "text",
            data:$('#cos').serialize(),
            success:function(redata){
                var a = redata;
                if(a=="ok")
                {
                    alert("分配成功")
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    parent.layui.table.reload("testReload", { //此处是上文提到的 初始化标识id
                        page:{
                            curr: 1
                        }
                    });
                }else
                {
                    alert("分配失败")
                    layer.close(layer.index);
                }
            }
        })
    }
</script>
</html>
