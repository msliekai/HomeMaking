<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/24 0024
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        a:link {
            text-decoration: none;
        }
        a:visited {
            text-decoration: none;
        }
        a:hover {
            text-decoration: none;
        }
        a:active {
            text-decoration: none;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>我的账户</title>
    <%String path = request.getContextPath() + "/";%>

    <link rel="stylesheet" type="text/css" href="<%=path%>page/client/assets/css/begin.css" />

    <script type="text/javascript">
        var money;
        function intomon(a)
        {
            money =prompt("请输入充值金额","");
            var moneytest = /^\+?[1-9][0-9]*$/;//正则表达式
            if(null != money && "" != money && moneytest.test(money) )//如果返回的有内容，且格式正确
            {
                if (confirm("是否充值?")) {
                    location.href = a+money;
                    alert("已充值"+money+"元");
                } else {
                    alert("取消充值");
                }
            }else{
                alert("请输入正确的金额");
            }
        }

    </script>
</head>

<body>
<h1 align="center">我的账户</h1>
<div align="center"  >
    <div style="width: 880px; margin-left: 250px " >

        <span style="float:left" >余额：</span><span style="float:left">${umoney}元</span>
        <input type="button" id="intobtn" name="intobtn" value="充值" target="main" onclick="intomon('MoneyServlet?method=findmoney&action=into&intomoney=')" >
        <br/>
        <span style="float:left" >业务收入情况：</span>
    </div><br />

    <table width="628" border="1" class="responsive" >
        <thead>
        <tr>
            <td width="60" height="30"><div align="center">序号</div></td>
            <td width="80" height="30"><div align="center">订单号</div></td>
            <td width="60" height="30"><div align="center">服务</div></td>
            <td width="60" height="30"><div align="center">服务分类</div></td>
            <td width="80" height="30"><div align="center">消费时间</div></td>
            <td width="80" height="30"><div align="center">商家名称</div></td>
            <td width="80" height="30"><div align="center">消费金额</div></td>
            <td width="80" height="30"><div align="center">操作</div></td>
        </tr></thead>
        <!-- 表格内容 -->
        <c:forEach items="${moneylist}" var="moneylist">

            <tr>
                <td width="60" height="30">${moneylist.montime}</td>
                <td width="80" height="30">${moneylist.matname}</td>
                <td width="60" height="30">${moneylist.bname}</td>
                <td width="60" height="30">${moneylist.traname}</td>
                <td width="80" height="30">${moneylist.money}</td>
                <td width="80" height="30">${moneylist.traname}</td>
                <td width="80" height="30">${moneylist.money}</td>
                <td width="80" height="30"><a href="#">操作</a></td>
                <%--c标签if判断--%>
            </tr>

        </c:forEach>

    </table>
</div>
<div align="center">
    <span>共 ${nummoney} 条记录</span>
    <a href="<%=path %>MoneyServlet?method=findmoney&action=pageup" name="AdminBack" target="centrol">
        <input name="up" type="button" value="上一页">
    </a>
    <span>当前页数：</span>
    <span>${pageno}/${pagenum}</span>
    <span style="color: blue">共${pagenum} 页</span>
    <a href="<%=path %>MoneyServlet?method=findmoney&action=pagedown" name="AdminBack" target="centrol">
        <input name="lower" type="button" value="下一页">
    </a>
    <!-- <a href="window.history.back(-1)" name="AdminBack" target="main"> -->
    <input type="button" id="backbtn" name="backbtn" value="返回" onclick="window.history.back(-1)" >
    <!-- </a> -->
</div>

</body>
</html>

