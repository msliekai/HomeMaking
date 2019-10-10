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
    <title>入驻申请</title>

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
            <h2>入驻申请</h2>

            <div class="signin-form">
                <div class=" ">
                    <div class=" ">

<%--                        <form action="<%=path%>page/infirm.action" method="post" enctype="multipart/form-data">--%>

                            <input name="fileact" type="file" id="fileact" style="display: none"/>

                            <div class="form-group">
                                <label for="fname">公司名:</label>
                                <input type="text" class="form-control" autocomplete="off" id="fname" name="fname" placeholder="请输入中文名" onblur="checkfacc()">
                                <span id="aaa"></span><p/>

                            </div><!--/.form-group -->

<%--                                <div class="form-group">--%>
<%--                                    <label for="fsite">资料上传:<input type="file" class="form-control" autocomplete="off" id="fsite" name="fsite"></label>--%>


<%--                                </div>--%>

                            <!--/.form-group -->

                                <div class="form-group" >
                                <label > 服务类别:
                                   <div id="costype"></div>

                                    <%--<input type="checkbox"  autocomplete="off" id="品类保洁" name="ctid">品类保洁
                                    <input type="checkbox"  autocomplete="off" id="日常保洁" name="ctid">日常保洁
                                    <input type="checkbox"  autocomplete="off" id="保姆" name="ctid">保姆
                                    <input type="checkbox"  autocomplete="off" id="月嫂" name="ctid">月嫂
                                    <input type="checkbox"  autocomplete="off" id="育儿嫂" name="ctid">育儿嫂--%>
                                    <p/>
                                </label>


                                <input type="button" value="提交" onclick="return infirm()"/>
                                    <input type="button" value="取消"/>
                                </div><!--/.form-group -->

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

    $(document).ready(function () {
        $.post("<%=path%>page/querycostype.action",
        function (data) {
            var html = '';
            for(var i in data){
                html += '<input type="checkbox" name="ctname" value="'+data[i].ctid+'">' + data[i].ctname
            }
            $("#costype").append(html);
            // console.log(html);
        });
    });


    function checkfacc(){
        var fname=$("#fname").val();
        var regular=new RegExp(/[\u4e00-\u9fa5]/);
        if(!regular.test(fname)){
            $("#aaa").html("公司名不符合要求");
            return false;
        } else if(fname==""){
            $("#aaa").html("公司账号不能为空");
            return false;
        }else{
            $("#aaa").html("公司名可用");
            return true;
        }
    }


    function infirm() {
        var ctids = getCheckBoxValueThree();
        var ctidsAll = getAllCheckBoxValueThree();
        var fname=$("#fname").val();
        if(!checkfacc()){
            alert("请使用中文名");
            return false;
        }
        else
            {
                alert(ctids);
                $.post("<%=path%>page/infirm.action",{"fname":fname,"ctids":ctids,"ctidsAll":ctidsAll},function (data) {
                    if(data=="1"){
                        alert("入驻成功");
                    }
                    else {
                        alert("入驻失败");
                    }

                });
        }
    }
    function getCheckBoxValueThree() {
        //获取input类型是checkBox并且 name="box"选中的checkBox的元素
        var data = $('input:checkbox[name="ctname"]:checked').map(function () {
            return $(this).val();
        }).get().join(",");
        return data;
    }
    function getAllCheckBoxValueThree() {
        //获取input类型是checkBox并且 name="box"选中的checkBox的元素
        var data = $('input:checkbox[name="ctname"]').map(function () {
            return $(this).val();
        }).get().join(",");
        return data;
    }
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
