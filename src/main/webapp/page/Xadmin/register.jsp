<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/8/27
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="<%=path%>Xadmin/css/form_style.css">
    <link rel="stylesheet" href="<%=path%>Xadmin/css/form_fort.css">

    <script type="text/javascript" src="<%=path%>Xadmin/js/jquery.min.js"></script>
    <script src="<%=path%>Xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script src="<%=path%>Xadmin/js/form_fort.js"></script>

    <script type="text/javascript">
        //OK
        $(document).ready(function() {
            $("#useracc").blur(function() {
                var bac=$("#useracc").val();
                var txt = new RegExp(/["'<>%;)(&+]/);
                if (!txt.test(bac)&&2<bac.length&&11>bac.length) {
                    $.ajax({
                        async:true,
                        url : "<%=path%>UserServlet",
                        type : "POST",
                        data : {
                            "method" : "seekUser",
                            "useracc" : bac,
                        },
                        dataType:"text",
                        success : function(data) {
                            if (data == "0") {
                                $("#bacc_news").text("该账号可以使用")
                            } else if (data == "1"){
                                $("#bacc_news").text("该账号不可使用")
                            }else{
                                $("#bacc_news").text("出现错误，用户名出现非法字符")
                            }
                        },
                    });
                }else{
                    $("#bacc_news").text("用户名不能出现非法字符，至少3个字,最多10个字");
                }
            });
        });
    </script>
</head>
<body>
<div class="form-wrapper">
    <div class="top"><div class="colors"></div></div>
    <div class="nav">

    </div>
    <h2>用户注册</h2>
    <form name="form" action="<%=path %>UserServlet" onsubmit="return datacheck()">
        <input name="method" value="addUser" type="hidden">
        <div>

            <div id="bacc_news"></div>
            <div class="form-item">
                <input type="text" id="useracc" name="useracc" required="required" placeholder="用户名" autocomplete="off" >
            </div>

            <div class="form-item">
                <input type="text" id="username" name="username" required="required" placeholder="姓名" autocomplete="off">
            </div>

            <div class="form-item">
                <input type="password" id="userpwd" name="userpwd" required="required" placeholder="密码" autocomplete="off">
            </div>

            <div class="form-item">
                <input type="password" id="userpwd2" name="userpwd2" required="required" placeholder="确认密码" autocomplete="off">
            </div>

            <div>
                <p>
                    <span>性别：</span>
                    <input type="radio"  name="usersex" checked="checked" value="1" />男
                    <input type="radio"  name="usersex" value="2">女
                </p>
            </div>


            <div class="form-item">
                <input type="number" id="userage" name="userage" required="required" placeholder="年龄" autocomplete="off">
            </div>

            <div class="form-item">
                <input type="number" id="userphone" name="userphone" required="required" placeholder="手机" autocomplete="off">
            </div>

            <div class="form-item">
                <input type="text" id="usersite" name="usersite" required="required" placeholder="地址" autocomplete="off">
            </div>

            <div class="button-panel">
                <input type="submit" class="button"  value="注册">
                <a href="<%=path %>index.jsp">返回</a>
            </div>
        </div>
    </form>
</div>
<div class="footer-banner" style="width:728px; margin:200px auto 0"></div>

</body>

<script>

    function datacheck() {
        var userpwd = document.getElementById("userpwd").value;
        var userpwd2 = document.getElementById("userpwd2").value;
        var userphone=$("#userphone").val();
        var usersite=$("#usersite").val();
        var userage=$("#userage").val();

        var t=$("#bacc_news").text();
        if(t!="该账号可以使用"){
            alert("账户不可用")
            return false;
        }

        if (userpwd.length <3) {
            alert("密码必须多于或等于3个字符。")
            return false;
        }else if(userpwd!=userpwd2){
            alert("两次密码不一致")
            return false;
        }

        var bag=/^(?:[1-9]?\d|100)$/;
        if(!bag.test(userage)){
            alert("年龄格式不正确");
            return false;
        }

        var phz=/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9]|19[0-9])\d{8}$/;
        if(!phz.test(userphone)){
            alert("电话号码格式不正确，以13开头的11位数字");
            return false;
        }
        var sitez=/^[\u4e00-\u9fa5]{0,}$/;
        if(!sitez.test(usersite)){
            alert("地址必须是汉字");
            return false;
        }
        if(usersite.length>30){
            alert("地址不得超过30个字");
            return false;
        }
        return true;
    }
</script>
</html>
