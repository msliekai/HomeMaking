<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/11
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath() + "/";
%>
<!DOCTYPE >
<html>
<head>
    <base href="<%=path%>">

    <title>放大图片</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script src="<%=path%>page/Xadmin/js/jquery.min.js" charset="utf-8"></script>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>
<%
    String dataid = request.getParameter("dataid")==null?"":request.getParameter("dataid");
%>
<body>
<input type="text" id="dataid" value="<%=dataid%>" hidden="hidden"/>
<ul id="imglist">
    <%--    <li><img id="viewImg2" src="" width="80px" height="130"/></li>--%>
    <%--    上传时间：<li id="time"></li>--%>
</ul>

<!-- 放大后的图片 -->
<div id="outerdiv" style="position:fixed;top:0;left:200px;background:rgba(0,0,0,0.7);z-index:2000;width:20%;height:20%;display:none;">
    <div id="innerdiv" style="position:absolute;width: 100%;height:100%;">
        <img id="bigimg" style="border:5px solid #fff;width: 400px;;height:500px;" src="" />
    </div>
</div>
</body>

<script type="text/javascript">
    //图片放大
    $(function(){
        $("#viewImg2").click(function(){
            var _this = $(this);//将当前的pimg元素作为_this传入函数
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
        });
        // $("#viewImg3").click(function(){
        //     var _this = $(this);//将当前的pimg元素作为_this传入函数
        //     imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
        // });
    });

    function imgShow(outerdiv, innerdiv, bigimg, _this){

        var src = _this.attr("src");//获取当前点击的pimg元素中的src属性
        alert(src)
        $('#outerdiv').attr('display','block');
        $(bigimg).attr("src", src);//设置#bigimg元素的src属性
        $(outerdiv).fadeIn("fast");

        $(outerdiv).click(function(){//再次点击淡出消失弹出层
            $(this).fadeOut("fast");
        });
    }

</script>
<script>
    $(document).ready(function(){
        var dataid=$("#dataid").val();
        $.ajax({
            url:"<%=path%>page/findStaffImg.action",
            type:"GET",
            data:"dataid="+dataid,
            success:function(redata){
                var htm="";
                $.each(redata,function(idx,obj){
                    htm+="<li><img id=\"viewImg2\" src=\"<%=path%>"+obj.upurl+"\" width=\"80px\" height=\"130\"/></li>"
                    htm+="上传时间：<li id=\"time\">"+obj.uptime+"</li>"
                })
                $("#imglist").html(htm);
            }
        })

    });
</script>

</html>
