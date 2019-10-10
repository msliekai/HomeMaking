<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<!doctype html>
<html  lang="en">

<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">

    <!-- title of site -->
    <title>忘记密码</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="<%=path%>page/client/css/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/font-awesome.min.css">

    <!--animate.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/animate.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="<%=path%>page/client/css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <%--layui--%>
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css" media="all">
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">

</head>

<body>


<!-- signin end -->
<section class="signin signup">
    <div class="container">

        <div class="sign-content">
            <h2>忘记密码</h2>

            <div class="signin-form">
                <div class=" ">
                    <div class=" ">
                        <form action="<%=path%>admin/userForgot.action" >
                            <div class="form-group">
                                <label for="facc">手机号</label>
                                <input type="number" class="form-control" id="facc" name="facc" placeholder="请输入手机号" onblur="infacc()"><span id="aaa"></span><p/>
                                <input type="button" id="btn" value="点我发送短信验证码"></input>
                                <span id="userphoneerr"></span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="phcode">短信验证码</label>
                                <input type="text" class="form-control" id="phcode" name="phcode" placeholder="请输入短信验证码">
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="fpwd">密码</label>
                                <input type="password" class="form-control" id="fpwd" name="fpwd" placeholder="请输入密码" onblur="addpwd()"><span id="bbb"></span><p/>
                                <span id="passErr"></span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="userpwd2">确认密码</label>
                                <input type="password" class="form-control" id="userpwd2" name="userpwd2" placeholder="再次输入" onblur="addnpwd()"><span id="ccc"></span><p/>
                                <span id="passErr2"></span>
                            </div><!--/.form-group -->

                        </form><!--/form -->
                    </div><!--/.col -->
                </div><!--/.row -->

            </div><!--/.signin-form -->


            <div class="signin-footer">
                <button type="button" class="btn signin_btn signin_btn_two" data-toggle="modal" data-target=".signin_modal" onclick="forgot()">
                    提交
                </button>
                <p>
                    <a href="<%=path%>page/CompanyLogin.jsp">点我返回登陆</a>
                </p>
            </div><!--/.signin-footer -->

        </div><!--/.sign-content -->

    </div><!--/.container -->

</section><!--/.signin -->

<!-- Include all js compiled plugins (below), or include individual files as needed -->

<script src="<%=path%>page/client/js/jquery.js"></script>

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

<!--bootstrap.min.js-->
<script src="<%=path%>page/client/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="<%=path%>page/client/js/bootsnav.js"></script>

<!-- jquery.sticky.js -->
<script src="<%=path%>page/client/js/jquery.sticky.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


<!--Custom JS-->
<script src="<%=path%>page/client/js/custom.js"></script>

<%--layui--%>
<script src="<%=path%>page/layui/layui.js"></script>
<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>

</body>
<script>
    function infacc(){
        var facc=$("#facc").val();
        var regular=new RegExp(/^1[3456789]\d{9}$/);
        if(!regular.test(facc)){
            $("#aaa").html("手机号码有误，请重填");
            return false;
        }
        $.post("<%=path%>page/forgotpwd.action",{"facc":facc},
            function (data) {
                if(data=="1"){
                    $("#aaa").html("");
                }else{
                    $("#aaa").html("该手机未注册");
                }
            }
        );
    }
    function addpwd() {
        var fpwd=$("#fpwd").val();
        var reg=/^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)\S{6,}$/;
        if(!reg.test(fpwd)){
            $("#bbb").html("输入密码格式不正确");
            return false;
        }else if(fpwd==""){
            $("#bbb").html("密码不能为空");
            return false;
        }else {
            $("#bbb").html("");
            return true;
        }
    }
    function addnpwd() {
        var fpwd=$("#fpwd").val();
        var userpwd2=$("#userpwd2").val();
        if(fpwd!=userpwd2){
            $("#ccc").html("两次密码重置不一致");
            return false;
        }else {
            $("#ccc").html("");
            return true;
        }

    }

    function forgot() {
        var facc=$("#facc").val();
        var fpwd=$("#fpwd").val();
        $.post("<%=path%>page/changepwd.action",{"facc":facc,"fpwd":fpwd},
       function (data) {
           if(data=="1"){
               alert("修改成功");
           }else {
               alert("修改失败");
           }
       } );
    }
    



</script>
</html>
