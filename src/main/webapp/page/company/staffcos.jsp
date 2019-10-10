<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/10
  Time: 9:12
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
String sfid = request.getParameter("sfid")==null?"":request.getParameter("sfid");
%>
<input type="text" id="ss" value="${sessionScope.ctid}" hidden="hidden"/>
<form id="cos" action="" method="get">
    <input type="text" id="sfid" name="sfid" value="<%=sfid%>" hidden="hidden"/>
    请分配服务：<br/>
    <select name="cosid" id="cosid">
        <option></option>
    </select>
    <p/>
    <input type="button" value="确定" onclick="tijiao()"/>
</form>
<%
    Integer ctid= (Integer) request.getSession().getAttribute("ctid");
    if(ctid==null)
    {
%>
<script>
    alert("请先选择服务类型")
</script>
<%}%>
</body>
<script>
    $(document).ready(function(){
        var ctid=$("#ss").val();
        $.ajax({
            url:"<%=path%>page/findCos.action",
            type:"GET",
            data:"ctid="+ctid,
            success:function(redata){
                var aa= redata;
                $("#cosid").empty();
                $("#cosid").append(
                    "<option>"+"请选择"+"</option>"
                )
                $.each(aa,function(idx,obj){
                    $("#cosid").append(
                        "<option value='"+obj.cosid+"'>"+obj.cosname+"</option>"
                    )
                })
            }
        })

    });
</script>
<script>

    function tijiao() {
        $.ajax({
            url:"<%=path%>page/fenPeiCos.action",
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
