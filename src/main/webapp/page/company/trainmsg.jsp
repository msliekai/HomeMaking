<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/9
  Time: 9:04
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
    <title>Title</title>
</head>
<body>
<%
    String trid = request.getParameter("trid")==null?"":request.getParameter("trid");
%>
<input type="text" value="<%=trid%>" id="trid" hidden="hidden">
序号：<span id="trid"><%=trid%></span><p/>
培训标题：<span id="trtitle"></span><p/>
培训内容：<span id="trcontext"></span><p/>
培训容纳人数：<span id="trsum"></span><p/>
培训时间：<span id="trtime"></span><p/>
已报名人数：<span id="trpsum"></span><p/>
培训项目名：<span id="itname"></span><p/>
培训时长：<span id="ittime"></span><p/>
培训证书：<span id="itbook"></span>
</body>
<script>
    $(document).ready(function(){
        var trid=$("#trid").val();
        $.ajax({
            url:"<%=path%>page/trainMsg.action",
            type:"GET",
            // dataType:"json",
            data:"trid="+trid,
            success:function(aa){

                $("#trtitle").html(aa.trtitle);
                $("#trcontext").html(aa.trcontext);
                $("#trsum").html(aa.trsum);
                $("#trtime").html(aa.trtime);
                $("#trpsum").html(aa.trpsum);
                $("#itname").html(aa.tbltritem.itname);
                $("#ittime").html(aa.tbltritem.ittime);
                $("#itbook").html(aa.tbltritem.itbook);
            }
        })

    });


</script>
</html>
