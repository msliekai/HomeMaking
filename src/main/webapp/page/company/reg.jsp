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
    <style>
        span{color: red}
    </style>
</head>

<body>


<!-- signin end -->
<section class="signin signup">
    <div class="container">

        <div class="sign-content">
            <h2>公司注册</h2>

            <div class="signin-form">
                <div class=" ">
                    <div class=" ">

                        <form action="<%=path%>page/addCompany.action" method="post" enctype="multipart/form-data">
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
                                <input type="number" class="form-control" autocomplete="off" required="required" id="facc" name="facc" placeholder="请输入手机号">
                                <span id="aaa"></span><p/>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="fpwd">密码</label>
                                <input type="password" class="form-control" autocomplete="off" required="required" id="fpwd" name="fpwd" placeholder="请输入密码" onblur="checkfpwd()">
                                <span id="bbb"></span><p/>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="nfpwd">确认密码</label>
                                <input type="password" class="form-control" autocomplete="off" required="required" id="nfpwd" name="nfpwd" placeholder="再次输入" onblur="checknfpwd()">
                                <span id="ccc"></span><p/>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="flaw">法人代表</label>
                                <input type="text" class="form-control" autocomplete="off" required="required" id="flaw" name="flaw" placeholder="请输入法人姓名">
                                <span id="ddd"></span><p/>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="flawphone">法人电话</label>
                                <input type="number" class="form-control" autocomplete="off" required="required" id="flawphone" name="flawphone" placeholder="请输入法人电话" onblur="checkflawphone()">
                                <span id="eee" ></span><p/>
                            </div><!--/.form-group -->
                            <div class="form-group">
                                <label for="ftime">注册时间</label>
                                <input type="date" class="form-control" autocomplete="off" required="required" id="ftime" name="ftime" placeholder="请输入注册时间">
                                <span id="fff" ></span><p/>
                            </div><!--/.form-group -->

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
                                   data-target=".signin_modal" value="注册" onsubmit="submit()" />
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

<script>

    function submit() {
        function checkfpwd(){
            var fpwd=$("#fpwd").val();
            var reg=/^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)\S{6,}$/
            if(!(reg.test(fpwd))){
                $("#bbb").html("密码输入格式不正确");
                return false;
            }
            else if(fpwd==""){
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
            var regular=new RegExp(/^1[3456789]\d{9}$/);

            if(!(regular.test(flawphone))){
                $("#eee").html("手机号码有误，请重填");
                return false;
            }else {
                $("#eee").html("");
            }
        }
    }

    $(document).ready(function () {
        $("#facc").blur(function () {
            var facc=$("#facc").val();
            var regular=new RegExp(/^1[3456789]\d{9}$/);
            if(!(regular.test(facc))){
                $("#aaa").html("手机号码有误，请重填");
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
