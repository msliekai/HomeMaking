<%--
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

<header>

    <div class="header-top-area">
        <div class="container">
            <div class="row height-100 align-items-center">
                <div class="col-lg-5 col-sm-4">
                    <div class="logo">
                        <a href="<%=path%>page/client/chome.jsp"><img src="<%=path%>page/client/assets/images/logo.png"
                                                                      alt=""/></a>
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
                                            <li><a data-toggle="modal" data-target="#myModal">点击改变位置</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 book-btn">
                            <c:if test="${null!=sessionScope.userbacc}">
                                <a class="layui-btn layui-btn-normal" href="<%=path%>page/client/checkout.jsp"><span>我要预约</span></a>
                            </c:if>
                            <c:if test="${null==sessionScope.userbacc}">
                                <a class="layui-btn layui-btn-normal" onclick="alert('请先登陆，再预约')"><span>我要预约</span></a>
                            </c:if>
                        </div>

                        <div class="modal fade" id="myModal" tabindex="0" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3>选择你的地址</h3>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div>
                                            <select id="s_province"></select>  
                                            <select id="s_city"></select>  
                                            <select id="s_county"></select>
                                            <%--加载城市下拉框--%>
                                            <script class="resources library" src="<%=path%>page/client/js/city-data.js"
                                                    type="text/javascript"></script>

                                            <script type="text/javascript">_init_area();</script>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                        </button>
                                        <button type="button" class="btn btn-primary" onclick="upcity()">
                                            提交更改
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

