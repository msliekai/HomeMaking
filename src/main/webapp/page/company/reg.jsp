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

                        <form action="<%=path%>page/addCompany.action" method="post" enctype="multipart/form-data" onsubmit="return reg()">
                            <%--<div>
                                <label for="showname"><h4>头像</h4></label>
                                <!-- 用于展示上传文件名的表单 -->
                                <input id="showname" type="text" style="height:25px;" autocomplete="off" readonly="true">
                                <!-- 点击触发按钮 -->
                                <a class="layui-btn layui-btn-xs  layui-btn-normal" onclick="makeThisfile()" id="browse">选择图片</a>
                            </div>--%>
                            <%--                            真头像在这--%>
<%--                            <input name="fileact" type="file" id="fileact" style="display: none"/>--%>


                            <div class="form-group">
                                <label for="facc">家政公司账号(电话)</label>
                                <input type="number" class="form-control" autocomplete="off" required="required" id="facc" name="facc" placeholder="请输入手机号" >
                                <input type="button" id="fbtn" value="点我发送短信验证码"></input>
                                <span id="aaa"></span><p/>
                            </div><!--/.form-group -->

                                <div class="form-group">
                                    <label for="phcode">短信验证码：</label>
                                    <input type="text" class="form-control" autocomplete="off" required="required" id="phcode" name="phcode" placeholder="请输入短信验证码" >
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

<%--                            <div class="form-group">--%>
<%--                                <label for="flawphone">法人电话</label>--%>
<%--                                <input type="number" class="form-control" autocomplete="off" required="required" id="flawphone" name="flawphone" placeholder="请输入法人电话" onblur="checkflawphone()">--%>
<%--                                <span id="eee" ></span><p/>--%>
<%--                            </div><!--/.form-group -->--%>
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
                            <div class="form-group">
                                <label for="scontext">详细地址</label>
                                <input type="text" class="form-control" autocomplete="off" required="required"
                                       id="scontext" name="scontext" placeholder="详细地址">
                            </div><!--/.form-group -->
                            <!-- end .city-picker-selector -->

                            <input type="submit" class="btn signin_btn signin_btn_two" data-toggle="modal"
                                   data-target=".signin_modal" value="注册" />
                        </form><!--/form -->
                    </div><!--/.col -->
                </div><!--/.row -->

            </div><!--/.signin-form -->


            <div class="signin-footer">

                <p>
                    已有账号 ?
                    <a href="<%=path%>page/CompanyLogin.jsp">点我登陆</a>
                </p>
            </div><!--/.signin-footer -->

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

    function reg() {
        if(!checkfpwd()){
            return false;
        }
        if(!checknfpwd()){
            return false;
        }
        if(!checkflawphone()){
            return false;
        }
        if(!$("#aaa").text()=='该账号可用'){
            return false;
        }
        alert("注册成功");
        return true;
    }
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
                return true;

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
                return true;
            }
        }
        function checkflawphone(){
            var facc=$("#facc");
            var regular=new RegExp(/^1[3456789]\d{9}$/);
            if(!(regular.test(facc.val()))){
                $("#eee").html("手机号码有误，请重填");
                return false;
            }else {
                $("#eee").html("");
                return true;
            }
        }

        $(document).ready(function () {
            $("#facc").blur(function () {
                var facc=$("#facc");
                var regular=new RegExp(/^1[3456789]\d{9}$/);
                if(!(regular.test(facc.val()))){
                    $("#aaa").html("手机号码有误，请重填");
                    return false;
                }
                $.post("<%=path%>page/checkfacc.action",
                    {"facc":facc.val()},
                    function (data) {
                        if(data=="1"){
                            $("#aaa").html("该账号可用");
                            return true;
                        }else{
                            $("#aaa").html("该账号已被注册，请重新填写");
                        }
                    }
                )
            });
        });



     /**
     * <!-- 发送短信验证码倒计时-->
     */
    var InterValObj; //timer变量，控制时间
    var count = 60; //间隔函数，1秒执行
    var curCount;//当前剩余秒数
    function fsendMessage() {
        curCount = count;
        $("#fbtn").attr("disabled", "true");
        $("#fbtn").val(curCount + "秒后可重新发送");
        InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次请求后台发送验证码 TODO
    }

    //timer处理函数
    function SetRemainTime() {

        if (curCount == 0) {
            stopTime();
        } else {
            curCount--;
            $("#fbtn").val(curCount + "秒后可重新发送");
        }
    }

    function stopTime() {
        window.clearInterval(InterValObj);//停止计时器
        $("#fbtn").removeAttr("disabled");//启用按钮
        $("#fbtn").val("重新发送验证码");
    }

    /**
     * //发送手机验证码
     */
    $("#fbtn").click(function () {
        layui.use('layer', function () {
            var facc=$("#facc").val();
            var regular=new RegExp(/^1[3456789]\d{9}$/);
            if(regular.test(facc)){

                fsendMessage();
                $.ajax({
                    async: true, //true不异步，false异步
                    type: "post", //提交方式
                    url: "../../serial/sendSms.action",
                    data: {
                        "userphone": facc
                    },
                    // dataType:"text", //返回类型
                    success: function (jso) {//执行结果
                        if ("OK" == jso) {
                            layer.msg("验证码发送成功");
                        } else if ("phoneerr" == jso) {
                            layer.msg("手机号未注册");
                            stopTime();
                        } else {
                            layer.msg("验证码发送失败");
                            stopTime();
                        }
                    },
                    error: function (jso) {
                        layer.msg("验证码发送失败");
                        stopTime();
                    }
                });

            } else {
                layer.msg("手机号输入不正确");
            }
        })
    })

</script>



<script type="text/javascript">

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
    location.href="<%=path%>page/CompanyLogin.jsp";
</script>
<%} else if (request.getAttribute("flog")=="reqerr") {%>
<script>
    alert("注册失败");
</script>
<%}else if (request.getAttribute("flog")=="phcodeErr") {%>
<script>
    alert("短信验证码错误");
</script>
<%}else if (request.getAttribute("flog")=="securityCodeErr") {%>
<script>
    alert("验证码错误");
</script>
<%}%>
</html>
