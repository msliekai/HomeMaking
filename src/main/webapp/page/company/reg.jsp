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
    <link rel="stylesheet" type="text/css" href="<%=path%>page/client/css/city-picker.css">
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

                        <form action="<%=path%>admin/cUserReq.action" method="post" enctype="multipart/form-data">
                            <%--<div>
                                <label for="showname"><h4>头像</h4></label>
                                <!-- 用于展示上传文件名的表单 -->
                                <input id="showname" type="text" style="height:25px;" autocomplete="off" readonly="true">
                                <!-- 点击触发按钮 -->
                                <a class="layui-btn layui-btn-xs  layui-btn-normal" onclick="makeThisfile()" id="browse">选择图片</a>
                            </div>--%>
                            <%--                            真头像在这--%>
                            <input name="fileact" type="file" id="fileact" style="display: none"/>

                            <div class="form-group">
                                <label for="facc">家政公司账号名</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="facc" name="facc" placeholder="请输入家政公司账号" />
                            </div><!--/.form-group -->

                            <%--<div class="form-group">
                                <label for="telpwd">短信验证码</label>
                                <input type="text" class="form-control" autocomplete="off" required="required" id="telpwd" name="telpwd" placeholder="请输入短信验证码">
                            </div><!--/.form-group -->--%>

                            <div class="form-group">
                                <label for="username">用户名</label>
                                <input type="text" class="form-control" autocomplete="off" required="required" id="username" name="username" placeholder="请输入用户名">
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="userpwd">密码</label>
                                <input type="password" class="form-control" autocomplete="off" required="required" id="userpwd" name="userpwd" placeholder="请输入密码">
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="userpwd2">确认密码</label>
                                <input type="password" class="form-control" autocomplete="off" required="required" id="userpwd2" name="userpwd2" placeholder="再次输入">
                            </div><!--/.form-group -->
                           <%-- <div class="form-group">
                                <label for="usercard">银行卡号</label>
                                <input type="number" class="form-control" autocomplete="off" required="required" id="usercard" name="usercard" placeholder="请输入正确银行卡信息">
                            </div><!--/.form-group -->--%>

                            <%--<div class="form-group">
                                <label>性别 </label>
                                <label class="usersex">
                                    <input type="radio" id="usersex1" name="usersex" value="男" checked> 男
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" id="usersex2" name="usersex" value="女"> 女
                                </label>
                            </div>--%>

                            <div class="form-group">
                                <label for="securityCode">验证码</label>
                                <input type="text" class="form-control" autocomplete="off" required="required" id="securityCode" name="securityCode" placeholder="输入验证码">
                            </div><!--/.form-group -->
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="signin-password">
                                        <div class="password-circle">
                                            <div class="single-password-circle">
                                                <img src="<%=path%>serial/getimage.action" id="Verify" style="cursor:hand;" alt="看不清，换一张"/>
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

                            <br/>
                            <h3>默认地址</h3>
                            <br/>
                            <div class="city-picker-selector" id="city-picker-selector">
                                <div class="selector-item storey province">
                                    <a href="javascript:;" class="selector-name reveal">北京市</a>
                                    <input type="hidden" name="sa" class="input-price val-error" value="110000"
                                           data-required="userProvinceId">
                                    <div class="selector-list listing hide">
                                        <ul>
                                            <li>北京市</li>
                                            <li>天津市</li>
                                            <li>河北省</li>
                                            <li>山西省</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="selector-item storey city">
                                    <a href="javascript:;" class="selector-name reveal">北京市</a>
                                    <input type="hidden" name="sb" class="input-price val-error" value="110100"
                                           data-required="userCityId">
                                    <div class="selector-list listing hide">
                                        <ul>
                                            <li>北京市</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="selector-item storey district">
                                    <a href="javascript:;" class="selector-name reveal">海淀区</a>
                                    <input type="hidden" name="sc" class="input-price val-error" value="110108"
                                           data-required="userDistrictId">
                                    <div class="selector-list listing hide">
                                        <ul>
                                            <li>东城区</li>
                                            <li>西城区</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="scontext">详细地址</label>
                                <input type="number" class="form-control" autocomplete="off" required="required"
                                       id="scontext" name="scontext" placeholder="详细地址">
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
    //点击切换验证码
    $(function () {
        //点击图片更换验证码
        $("#verclo").click(function(){
            $("#Verify").attr("src","<%=path%>serial/getimage.action?timestamp="+new Date().getTime());
        });
    });
</script>
<%
    if (request.getAttribute("flog")=="success") {%>
<script>
    alert("注册成功");
    <%--location.href="<%=path%>ON/hha.jsp";--%>
</script>
<%} else if (request.getAttribute("flog")=="reqerr") {%>
<script>
    alert("注册失败");
</script>
<%}else if (request.getAttribute("flog")=="imgerr") {%>
<script>
    alert("头像上传失败");
</script>
<%}else if (request.getAttribute("flog")=="codeerr") {%>
<script>
    alert("验证码错误");
</script>
<%}%>
</html>
