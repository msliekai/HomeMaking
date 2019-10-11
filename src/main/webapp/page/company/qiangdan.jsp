<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/7
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/font.css">
    <link rel="stylesheet" href="<%=path%>page/Xadmin/css/xadmin.css">
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css">
    <script src="<%=path%>page/Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/xadmin.js"></script>
    <title>Title</title>
</head>
<body>
<%
    String oid = request.getParameter("oid")==null?"":request.getParameter("oid");
%>
<form  id="form1" action="" method="get" lay-filter="example" >
    <input type="text" value="<%=oid%>" name="oid" hidden="hidden">
请选择服务人员：<br/>
        <select name="sfid" id="sfid" lay-search="" lay-verify="required">
                <option></option>
            </select>
        <p/>
请选择服务时间：  <div class="layui-inline">
             <div class="layui-input-inline">
             <input type="text" name="svtime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
            </div><br/>
    <input type="button" value="确定" onclick="tijiao()">
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
</script>
<script>

    function tijiao() {
        $.ajax({
            url:"<%=path%>page/take.action",
            type:"get",
            dataType: "text",
            data:$('#form1').serialize(),
            success:function(redata){
                var a = redata;
                if(a=="ok")
                {
                    alert("接单成功")
                    var index = parent.layer.getFrameIndex(window.name);
                    parent.layer.close(index);
                    parent.layui.table.reload("testReload", { //此处是上文提到的 初始化标识id
                        page:{
                            curr: 1
                        }
                    });
                }else
                {
                    alert("接单失败")
                    layer.close(layer.index);
                }
            }
        })
    }
</script>
<script src="<%=path%>page/layui/laydate.js"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
    });
</script>
</html>

