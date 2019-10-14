<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>

<!doctype html>
<html lang="en">

<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext"
          rel="stylesheet">

    <!-- title of site -->
    <title>用户登陆</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="<%=path%>page/client/css/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/font-awesome.min.css">

    <!--animate.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/animate.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="<%=path%>page/client/css/bootsnav.css">

    <!--style.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="<%=path%>page/client/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <%--layui--%>
    <%--    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css" media="all">--%>
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">

</head>

<body>


<!-- signin end -->
<section class="signin">
    <div class="container">

        <div class="sign-content">
            <h2>登陆</h2>

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-form">

                        <form action="<%=path%>admin/cUserLogin.action" method="post">
                            <div class="form-group">
                                <label for="userphone">电话</label>
                                <input type="email" class="form-control" required="required" id="userphone"
                                       name="userphone" placeholder="请输入手机号" value="13860811761">
                                <span id="userphoneerr"></span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="userpwd">密码</label>
                                <input type="password" class="form-control" autocomplete="off" required="required"
                                       id="userpwd" name="userpwd" placeholder="请输入密码" value="a123456">
                                <span id="passErr"></span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="securityCode">验证码</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="securityCode" name="securityCode" placeholder="请输入验证码" data-toggle="tooltip">
                            </div><!--/.form-group -->
                        </form><!--/form -->
                    </div><!--/.signin-form -->
                </div><!--/.col -->
            </div><!--/.row -->

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-password">
                        <div class="password-circle">
                            <div class="single-password-circle">
                                <img src="<%=path%>serial/getimage.action" id="Verify" style="cursor:hand;"
                                alt="看不清，换一张"/>
                                <label>
									<span class="round-boarder">
										<span id="verclo" class="round-boarder1">看不清？换一张</span>
									</span>
                                </label>
                            </div><!--/.single-password-circle-->
                        </div><!--/.password-circle-->

                        <div class="single-forgot-password-circle text-right">
                            <a href="<%=path%>page/client/forgot.jsp">忘记密码</a>
                        </div><!--/.single-password-circle-->

                    </div><!--/.signin-password -->
                </div><!--/.col -->
            </div><!--/.row -->

            <div class="row">
                <div class="col-sm-12">
                    <div class="signin-footer">
                        <button type="button" class="btn signin_btn signin_btn_two" data-toggle="modal"
                                data-target=".signin_modal" id="fomsub" onclick="return userLogin()">登陆
                        </button>
                        <p>
                            没有账号？
                            <a href="<%=path%>page/client/signup.jsp">注册</a>
                        </p>
                    </div><!--/.signin-footer -->
                </div><!--/.col -->
            </div><!--/.row -->

        </div><!--/.sign-content -->

    </div><!--/.container -->

</section><!--/.signin -->

<!-- signin end -->

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


    // $(document).ready(function(){

    function userLogin() {
        //
        // if (valForm()) {
            layui.use('layer', function () {

                var self = $("form");
                $.ajax({
                    async: true,
                    type: "post", //提交方式
                    url: self.attr("action"), //提交的地址（ self.attr("action")为form中的action地址）
                    data: self.serialize(), //获得表单的信息
                    // dataType:"text", //返回类型
                    success: function (logjson) {//执行结果
                        if (logjson.flog === "0") {
                            layer.msg("账号不存在");

                        } else if (logjson.flog === "2") {
                            layer.msg("账号被禁用");

                        } else if (logjson.flog === "3") {
                            layer.msg("账号被删除");

                        } else if (logjson.flog === "coderr") {
                            layer.msg("验证码错误");

                        } else if (logjson.flog === "success") {
                            layer.msg("登陆成功，准备跳转", {
                                time: 1000
                            }, function () {
                                location.href = "<%=path%>page/client/chome.jsp";
                            });


                        } else if (logjson.flog === "pw") {
                            layer.msg("账号密码错误");

                        } else if (logjson.flog === "errc") {
                            layer.msg("登陆失败");

                        } else {
                            layer.msg("出现不可预估的问题，登陆失败");
                        }
                    },
                });
            })
        }
    // }


    // })
</script>
</html>