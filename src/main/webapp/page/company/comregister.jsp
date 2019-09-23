<%--
  Created by IntelliJ IDEA.
  User: 王佳锋
  Date: 2019/9/20
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path=request.getContextPath()+"/";%>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css"  media="all">
    <title>公司注册</title>
</head>
<body>
<form action="<%=path%>page/addCompany.action" method="post">
家政公司账号名：<input type="text" name="facc" id="facc"/><span id="aaa"></span><p/>
密码：<input type="password" name="fpwd" id="fpwd" onblur="checkfpwd()"/><span id="bbb"></span><p/>
确认密码；<input type="password" name="nfpwd" id="nfpwd" onblur="checknfpwd()"/><span id="ccc"></span><p/>
法人代表：<input type="text" name="flaw" id="flaw"/><span id="ddd"></span><p/>
法人电话：<input type="number" name="flawphone" id="flawphone" onblur="checkflawphone()"/><span id="eee" ></span><p/>
验证码：<input type="text"/><p/>
公司地址：<input type="text" name="fsite"/>
    <span id="fff"></span><p/>
<input type="submit" value="注册"/>
<input type="button" value="返回"/>

</form>

</body>
<script src="<%=path%>page/company/js/jquery.min.js"></script>
<script type="text/javascript">
    function checkfpwd(){
        var fpwd=$("#fpwd").val();
        if(fpwd==""){
            $("#bbb").html("密码不能为空");
            return false;
        }else if(fpwd.length<6){
            $("#bbb").html("密码位数不能低于6位数");
            return false;
        }else{
            $("#bbb").html("");
        }
    }
    function checknfpwd(){
        var fpwd=$("#fpwd").val();
        var nfpwd=$("#nfpwd").val();
        if(fpwd!=nfpwd){
            $("#ccc").html("两次输入密码不一致");
            return false;
        }else{
            $("#ccc").html("");
        }
    }
    function checkflawphone(){
        var flawphone=$("#flawphone").val();
        if(flawphone.length!=11){
            $("#eee").html("输入手机号有误");
            return false;
        }else {
            $("#eee").html("");
        }
    }

$(document).ready(function () {
    $("#facc").blur(function () {
        var facc=$("#facc").val();
        if(facc==""){
            $("#aaa").html("公司账号不能为空");
            return false;
        }
        $.post("<%=path%>page/checkfacc.action",
            {"facc":facc},
            function (data) {
                if(data=="1"){
                    $("#aaa").html("该账号可用");
                }else{
                    $("#aaa").html("该账号已被注册，请重新填写");
                }
            }
        )
    });
});
</script>
</html>
