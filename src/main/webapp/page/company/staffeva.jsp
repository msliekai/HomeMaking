<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/29
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <script type="text/javascript" src="<%=path%>page/Xadmin/js/jquery.min.js"></script>
    <title>无标题文档</title>
</head>
<body>
<%
    String sfid = request.getParameter("sfid")==null?"":request.getParameter("sfid");
%>
<input type="text" value="<%=sfid%>" id="sfid" name="sfid" hidden="hidden"/>
<div id="di">
用户：<span id="userid"></span>&nbsp;&nbsp;&nbsp;&nbsp;
时间：<span id="time"></span><p/>
评价内容：<span id="text"></span><br/>
<span id="tt"></span>
</div>
</body>
<script>

    $(document).ready(function(){
        var sfid =$("#sfid").val();
        $.ajax({
            url:"<%=path%>page/findStaffEva.action",
            type:"GET",
            data:"sfid="+sfid,
            success:function(redata){
                var htm="";
                $.each(redata,function(idx,obj){
                    htm+="用户：<span id=\"userid\">"+obj.tblorder.userid+"</span>"
                    htm+="时间：<span id=\"time\">"+obj.etime+"</span><p/>"
                    htm+="评价内容：<span id=\"text\">"+obj.econtext+"</span><br/>"
                    htm+="<span id=\"tt\">----------------------------------</span><p/>"
                })
                $("#di").html(htm);
            }
        });
    });
</script>
</html>
