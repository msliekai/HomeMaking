<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/11
  Time: 11:42
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
    String dataid = request.getParameter("dataid")==null?"":request.getParameter("dataid");
%>
<form id="file" action="" method="post" enctype="multipart/form-data">
    请选择服务人员：<br/>
    <select name="sfid" id="sfid" lay-search="" lay-verify="required">
        <option></option>
    </select>
    <p/>
    <input type="text" name="dataid" value="<%=dataid%>" hidden="hidden"/>
    图片： <input type="file"     name = "pictureFile" /><br>
    证书名：<input type="text" name="upname"/><p/>
    <input type = "button" value = "提交" onclick="tijiao()">
    <span></span>
</form>
</body>
<script>

    $(document).ready(function(){
        $.ajax({
            url:"<%=path%>page/findStaff.action",
            type:"GET",
            success:function(redata){
                var aa= redata;
                $("#sfid").empty();
                $("#sfid").append(
                    "<option>"+"请选择"+"</option>"
                )
                $.each(aa,function(idx,obj){
                    $("#sfid").append(
                        "<option value='"+obj.sfid+"'>"+obj.sfname+"</option>"
                    )
                })
            }
        })

    });
    function tijiao() {
        $.ajax({
            url:"<%=path%>admin/addStaffCre.action",
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
