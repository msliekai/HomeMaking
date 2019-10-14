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
            <h2>提现</h2>

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
                                <label for="draw">提现金额</label>
                                <input type="number" class="form-control" autocomplete="off" required="required" id="draw" name="draw" placeholder="请输入提现金额">
                                <span id="aaa"></span><p/>
                            </div><!--/.form-group -->

                            <div class="form-group">
                                <label for="compwd">支付密码</label>
                                <input type="password" class="form-control" autocomplete="off" required="required" id="compwd" name="compwd" placeholder="请输入支付密码">
                                <span id="bbb"></span><p/>
                            </div><!--/.form-group -->

                            <input type="button" class="btn signin_btn signin_btn_two" data-toggle="modal"
                                   data-target=".signin_modal" value="确定" onclick="pp()"/>
                        </form><!--/form -->
                    </div><!--/.col -->
                </div><!--/.row -->

            </div><!--/.signin-form -->


        </div><!--/.sign-content -->

    </div><!--/.container -->

</section><!--/.signin -->


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

    function pp(){
            var compwd=$("#compwd").val();
            var draw=$("#draw").val();
            var zzm = /^\+?[1-9][0-9]{0,4}$/;
            if(zzm.test(draw)){
                if(draw!=null&&draw!=""){
                    $.post("<%=path%>page/drawmoney.action",{"compwd":compwd,"draw":draw},function (data) {
                        if(data=="1"){
                            alert("提现成功");
                            window.location.href="<%=path%>page/company/account.jsp";
                        }else if(data=="2") {
                            alert("支付密码不正确，提现失败");
                        }else {
                            alert("余额不足，提现失败");
                        }
                    });
                }
            }else{
                alert("请输入正确格式，正整数且不大于100000！")
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
