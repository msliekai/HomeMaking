<%@ page import="com.hm.entity.TblUser" %><%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/20
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath() + "/";
%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>-</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<nav class="navbar navbar-inverse navbar-fixed-top">--%>
<header>
    <div class="header-bottom-area" id="sticker">
        <div class="container">
            <!--mainmenu-->
            <div class="row align-items-center">
                <div class="col-lg-9 col-6">
                    <div class="mainmenu">
                        <nav>
                            <ul class="list-none">
                                <li><a href="<%=path%>page/client/chome.jsp">首页</a></li>
                                <li><a href="#">服务
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="<%=path%>page/client/shopa.jsp">所有服务</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=品类保洁">品类保洁</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=日常保洁">日常保洁</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=保姆">保姆</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=月嫂">月嫂</a></li>
                                        <li><a href="<%=path%>page/client/shopa.jsp?aunt=育儿嫂">育儿嫂</a></li>
<%--                                        <li><a href="<%=path%>page/client/service-details.jsp">照顾宠物</a></li>--%>
                                    </ul>
                                </li>
                                <li><a href="<%=path%>page/client/contact.jsp">联系</a></li>
                            </ul>
                        </nav>
                    </div>

                    <!--mobile-tblmenu-->
                    <!--mobile logo-->
                    <div class="d-hidden mobile-logo">
                        <div class="logo">
                            <a href="<%=path%>page/client/chome.jsp"><img
                                    src="<%=path%>page/client/assets/images/logo.png" alt=""/></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <div class="cart-search text-right">
                        <ul class="list-none">
                            <c:if test="${null==userbacc}">
                                <li class="ml-25"><a href="<%=path%>page/client/signin.jsp">登陆</a></li>
                                <li class="ml-25"><a href="<%=path%>page/client/signup.jsp">注册</a></li>
                            </c:if>
                            <c:if test="${null!=userbacc}">
                                <li class="ml-25">
                                    <a href="#" onclick="alert('这里是个人中心')">
                                    <figure style="width: 50px;height: 0px;">
                                        <img class="img-circle" src="<%=path%>${sessionScope.userbacc.userurl}" alt="头像"/>
                                     </figure>
                                     </a>
                                </li>
                                <li class="ml-25"><a href="<%=path%>page/client/UserCentor.jsp">${sessionScope.userbacc.username}</a></li>
                                <li class="mmenu-icon"><a href="#mobile-tblmenu"><i class="icon_menu"></i></a></li>
                                <li class="minicart-icon"><a href="#"><i class="lnr lnr-cart"></i></i> </a>

                                </li>
                            </c:if>
<%--                            &lt;%&ndash;                            下面是搜索框&ndash;%&gt;--%>
<%--                            <li class="ml-25">--%>
<%--                                <a href="#" class="search-icon"><i class="lnr lnr-magnifier"></i></a>--%>
<%--                                <div class="search-box">--%>
<%--                                    <input type="text" placeholder=" ..."/>--%>
<%--                                    <button><i class="lnr lnr-magnifier"></i></button>--%>
<%--                                </div>--%>
<%--                            </li>--%>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<%--</nav>--%>
<%--</body>--%>
<%--</html>--%>
