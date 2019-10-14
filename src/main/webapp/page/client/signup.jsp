<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
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
    <title>Sign up</title>

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

    <%--layui--%>
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css" media="all">
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">

    <%--城市--%>
    <!--必要样式-->
    <%--    <link href="<%=path%>page/client/css/city/main.css" rel="stylesheet" type="text/css"/>--%>
    <%--    <link href="<%=path%>page/css/city/bootstrap.css" rel="stylesheet" type="text/css" />--%>
    <%--    <link href="<%=path%>page/client/css/city/city-picker.css" rel="stylesheet" type="text/css"/>--%>

</head>

<body>


<!-- signin end -->
<section class="signin signup">
    <div class="container">

        <div class="sign-content">
            <h2>注册</h2>

            <div class="signin-form">
                <div class=" ">
                    <div class=" ">

                        <form action="<%=path%>admin/cUserReq.action" method="post" onsubmit="return reqsubmit()"
                              enctype="multipart/form-data">
                            <div>
                                <label for="fileact"><span>头像：</span>
                                    <input name="fileact" type="file" id="fileact"/></label>

                            </div>

                            <div class="form-group">
                                <label for="userphone">手机号：</label>
                                <input type="number" class="form-control" autocomplete="off" required="required"
                                       id="userphone" name="userphone" placeholder="请输入手机号" onblur="vaint()">
                                <input type="button" id="btn" value="点我发送短信验证码"/>
                                <span id="userphoneerr"></span>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="phcode">短信验证码：</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="phcode" name="phcode" placeholder="请输入短信验证码">
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="username">用户名：</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="username" name="username" placeholder="请输入用户名">
                                <span id="useerr"></span>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="userpwd">密码：</label>
                                <input type="password" class="form-control" autocomplete="off" required="required"
                                       id="userpwd" name="userpwd" placeholder="请输入密码">
                                <span id="passErr"></span>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="userpwd2">确认密码：</label>
                                <input type="password" class="form-control" autocomplete="off" required="required"
                                       id="userpwd2" name="userpwd2" placeholder="再次输入">
                                <span id="passErr2"></span>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="usercard">银行卡号：</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="usercard" name="usercard" placeholder="请输入正确银行卡信息">
                                <span id="cardErr"></span>
                            </div><!--/.form-group -->

                            <label>性别：</label>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="usersex" id="optionsRadios1" value="男" checked>男
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="usersex" id="optionsRadios2" value="女">女
                                </label>
                            </div>
                            <hr/>

                            <div class="form-group">
                                <label for="securityCode">验证码：</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="securityCode" name="securityCode" placeholder="输入验证码">
                            </div><!--/.form-group -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="signin-password">
                                        <div class="password-circle">
                                            <div class="single-password-circle">
                                                <img src="<%=path%>serial/getimage.action" id="Verify"
                                                     style="cursor:hand;" alt="看不清，换一张"/>
                                                <label>
										    		<span class="round-boarder">
											    		<span id="verclo" class="round-boarder1">看不清？换一张</span>
												    </span>
                                                </label>
                                            </div><!--/.single-password-circle-->
                                        </div><!--/.password-circle-->
                                    </div><!--/.signin-password -->
                                </div><!--/.col -->
                            </div><!--/.row -->

                            <div class="form-group">
                                <label for="usercard">地址：</label>
                            </div>

                            <%--                            <br/>--%>
                            <div class="info">
                                <div>
                                    <select id="s_province" name="sa"></select>  
                                    <select id="s_city" name="sb"></select>  
                                    <select id="s_county" name="sc"></select>
                                    <%--加载城市下拉框--%>
                                    <script class="resources library" src="<%=path%>page/client/js/city-data.js"
                                            type="text/javascript"></script>

                                    <script type="text/javascript">_init_area();</script>
                                </div>
                                <div id="show"></div>
                            </div>
                            <span id="cityerr"> </span>

                            <div class="form-group">
                                <label for="scontext">详细地址：</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="scontext" name="scontext" placeholder="请输入详细地址">
                                <span id="scontexterr"></span>
                            </div><!--/.form-group -->
                            <!-- end .city-picker-selector -->
                            <input type="submit" class="btn signin_btn signin_btn_two" data-toggle="modal"
                                   data-target=".signin_modal" value="注册"/>
                        </form><!--/form -->
                    </div><!--/.col -->
                </div><!--/.row -->

            </div><!--/.signin-form -->


            <div class="signin-footer">

                <p>
                    已有账号 ?
                    <a href="<%=path%>page/client/signin.jsp">点我登陆</a>
                </p>
            </div><!--/.signin-footer -->

        </div><!--/.sign-content -->

    </div><!--/.container -->

</section><!--/.signin -->

<!-- signin end -->

<%--<!--footer copyright start -->--%>
<%--<footer class="footer-copyright">--%>
<%--    <div id="scroll-Top">--%>
<%--        <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>--%>
<%--    </div><!--/.scroll-Top-->--%>

<%--</footer><!--/.hm-footer-copyright-->--%>
<%--<!--footer copyright  end -->--%>


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

<%--城市--%>
<%--<script src="<%=path%>page/client/js/city/city-picker.data.js"></script>--%>
<%--<script src="<%=path%>page/client/js/city/city-picker.js"></script>--%>
<%--<script src="<%=path%>page/client/js/city/main.js"></script>--%>
<script class="resources library" src="<%=path%>page/client/js/city-data.js" type="text/javascript"></script>
<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>
</body>
<script type="text/javascript">
    //触发隐藏的file表单
    function makeThisfile() {
        $('#fileact').click();
    }

    //file表单选中文件时,让file表单的val展示到showname这个展示框
    $('#fileact').change(function () {
        $('#showname').val($(this).val())

    })

    function vaint() {
        var userphone=$("#userphone").val();
        var az = /^1(3|4|5|7|8)\d{9}$/;
        if (az.test(userphone)) {
            $.ajax({
                async: true,
                type: "post",
                url: "<%=path%>admin/queryphone.action",
                data: {
                    "userphone": userphone
                },
                success: function (jso) {
                    if (jso == "OK") {
                        $("#userphoneerr").text("账号可用");
                    } else {
                        $("#userphoneerr").text("账号不可用");
                    }
                }
            })
        }else{
            $("#userphoneerr").text("手机号不正确");
        }

    }

</script>


<%
    if (request.getAttribute("flog") == "success") {%>
<script>
    alert("注册成功");
    location.href = "<%=path%>page/client/signin.jsp";
</script>
<%} else if (request.getAttribute("flog") == "reqerr") {%>
<script>
    alert("注册失败");
</script>
<%} else if (request.getAttribute("flog") == "imgerr") {%>
<script>
    alert("头像上传失败");
</script>
<%} else if (request.getAttribute("flog") == "codeerr") {%>
<script>
    alert("验证码错误");
</script>
<%} else if (request.getAttribute("flog") == "phcodeerr") {%>
<script>
    alert("短信验证码错误");
</script>
<%}else if(request.getAttribute("flog") == "imgeerr"){
%>
<script>
    alert("头像未上传");
</script>
<%
}%>
</html>
