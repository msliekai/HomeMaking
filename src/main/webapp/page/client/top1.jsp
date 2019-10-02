<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/20
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>

<header>

    <div class="header-top-area">
        <div class="container">
            <div class="row height-100 align-items-center">
                <div class="col-lg-5 col-sm-4">
                    <div class="logo">
                        <a href="<%=path%>page/client/chome.jsp"><img src="assets/images/logo.png" alt=""/></a>
                    </div>
                </div>
                <div class="col-lg-7 col-sm-8">
                    <div class="row">
                        <div class="col-xl-9 col-lg-12">
                            <div class="row m-0">
                                <div class="col-lg-6 col-sm-6">
                                    <div class="office-info open-hours">
                                        <i class="lnr lnr-history"></i>
                                        <ul class="list-none">
                                            <li><span>开 放 时 间</span></li>
                                            <li>24小时</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-sm-6">
                                    <div class="office-info call-us">
                                        <i class="lnr lnr-map-marker"></i>
                                        <ul class="list-none">
                                            <li><span id="ccypt">当前位置</span></li>
                                            <li><a onclick="mapre()">点击改变位置</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 book-btn">
                            <a class="layui-btn layui-btn-normal" href="<%=path%>page/client/checkout.jsp"><span>我要预约</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

