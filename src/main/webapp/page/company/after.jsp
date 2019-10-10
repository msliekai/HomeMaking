<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 14:50
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
    请分配售后人员：<br/>
    <select name="afterstaff" id="afterstaff">
        <option></option>
    </select>
    <p/>
    <input type="button" value="确定" onclick="tijiao()"/>
</form>
</body>
<script>
    $(document).ready(function(){
        $.ajax({
            url:"<%=path%>page/findStaff.action",
            type:"GET",
            success:function(redata){
                var aa= redata;
                $("#afterstaff").empty();
                $("#afterstaff").append(
                    "<option>"+"请选择"+"</option>"
                )
                $.each(aa,function(idx,obj){
                    $("#afterstaff").append(
                        "<option value='"+obj.sfid+"'>"+obj.sfname+"</option>"
                    )
                })
            }
        })
    });
</script>
<script>

    function tijiao() {
        $.ajax({
            url:"<%=path%>page/after.action",
            type:"get",
            dataType: "text",
            data:$('#cos').serialize(),
            success:function(redata){
                var a = redata;
                if(a=="ok")
                {
                    alert("处理成功")
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    parent.layui.table.reload("testReload", { //此处是上文提到的 初始化标识id
                        page:{
                            curr: 1
                        }
                    });
                }else
                {
                    alert("处理失败")
                    layer.close(layer.index);
                }
            }
        })
    }
</script>
</html>
