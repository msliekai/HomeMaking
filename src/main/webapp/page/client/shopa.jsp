<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/25
  Time: 0:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LK家政</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=path%>page/client/shopgrid/img/favicon.png">
    <!-- bootstrap v4.0.0 -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- linear-icons css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/linear-icons.css">
    <!-- elegant css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/elegant.css">
    <!-- animate css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/animate.css">
    <!-- jquery.mmenu css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/mmenu/dist/mmenu.css"/>
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/jquery-ui.min.css">
    <!-- slick css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/slick.css">
    <!-- slick-theme css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/slick-theme.css">
    <!-- venobox css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/venobox.css">
    <!-- helper css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/helper.css">
    <!-- style css -->
    <link rel="stylesheet" href="<%=path%>page/client/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="<%=path%>page/client/assets/css/responsive.css">

    <%--layui--%>
    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css" media="all">
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">
    <!-- all css here -->
    <%--    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/animate.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/themify-icons.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/icofont.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/meanmenu.min.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/bundle.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/style.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/responsive.css">
    <script src="<%=path%>page/client/shopgrid/js/vendor/modernizr-2.8.3.min.js"></script>
    <%--layui--%>
    <script src="<%=path%>page/layui/layui.js"></script>
</head>
<body>
<!--header-top-->
<jsp:include page="top1.jsp" flush="true"/>
<!--header-bottom-->
<jsp:include page="top2.jsp" flush="true"/>
<!--header-ends-->

<div class="shop-page-wrapper shop-page-padding ptb-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">

                <div class="shop-sidebar mr-50">
                    <%--搜索产品--%>
                    <div class="sidebar-widget mb-50">
                        <h3 class="sidebar-title">搜索</h3>
                        <div class="sidebar-search">
                            <%--                            <form action="#">--%>
                            <%
                                String aunt = request.getParameter("aunt") == null ? "" : request.getParameter("aunt");
                            %>
                            搜索：
                            <input placeholder="输入要搜索内容" type="text" value="<%=aunt%>" id="aunt">
                        </div>
                        <button class="layui-btn layui-btn-normal" style="width: 100%;" onclick="getPageOfMemo(1)"><i
                                class="ti-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop-product-wrapper res-xl">
                    <div class="shop-bar-area">
                        <div class="shop-bar pb-60">
                            <div class="shop-found-selector">
                                <a class="layui-btn layui-btn-normal" href="<%=path%>page/client/checkout.jsp"><span>我要预约</span></a>
                            </div>

                        </div>


                        <div class="shop-product-content tab-content">
                            <%--阿姨展示--%>
                            <div id="grid-sidebar3" class="tab-pane fade active show">
                                <div class="row" id="ayitable">

                                    <div class="col-md-6 col-xl-4">
                                        <div class="product-wrapper mb-30">
                                            <div class="product-img">
                                                <a href="<%=path%>admin/product-details.action">
                                                    <img src=""
                                                         alt="">
                                                </a>
                                                <span>hot</span>
                                                <div class="product-action">
                                                    <a class="animate-left" title="Wishlist" href="#">
                                                        <i class="pe-7s-like"></i>
                                                    </a>
                                                    <a class="animate-top" title="Add To Cart" href="#">
                                                        <i class="pe-7s-cart"></i>
                                                    </a>
                                                    <a class="animate-right" title="Quick View" data-toggle="modal"
                                                       data-target="#exampleModal" href="#">
                                                        <i class="pe-7s-look"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-content">
                                                <h4><a href="#"> 我是某阿姨</a></h4>
                                                <span>￥998.00</span>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <%--                分页--%>
                <div class="pagination-style mt-50 text-center">
                    <ul id="pageButton">

                    </ul>
                </div>
                <input type="hidden" id="thispage"/>
                <%--                分页end--%>
            </div>
        </div>
    </div>
</div>

<%--底部--%>
<!--footer-area start-->
<jsp:include page="bottom.jsp" flush="true"/>
<!--footer-area end-->
<!-- modal -->
<!-- modal -->

<!-- modernizr js -->
<script src="<%=path%>page/client/assets/js/vendor/modernizr-3.6.0.min.js"></script>
<!-- jquery-3.4.1 version -->
<script src="<%=path%>page/client/assets/js/vendor/jquery-3.4.1.min.js"></script>
<!-- jquery-migrate-3.1.0.min.js version -->
<script src="<%=path%>page/client/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
<!-- bootstra.min js -->
<script src="http://cdn.bootstrapmb.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- mmenu js -->
<script src="<%=path%>page/client/assets/mmenu/dist/mmenu.js"></script>
<script src="<%=path%>page/client/assets/mmenu/src/mmenu.debugger.js"></script>
<!-- jquery-ui.min js -->
<script src="<%=path%>page/client/assets/js/jquery-ui.min.js"></script>
<!---slick-js-->
<script src="<%=path%>page/client/assets/js/slick.min.js"></script>
<!---counterup-js-->
<script src="<%=path%>page/client/assets/js/jquery.counterup.min.js"></script>
<!---waypoints-js-->
<script src="<%=path%>page/client/assets/js/waypoints.js"></script>
<!---isotop-js-->
<script src="<%=path%>page/client/assets/js/isotope.pkgd.min.js"></script>
<!-- jquery.countdown js -->
<script src="<%=path%>page/client/assets/js/jquery.countdown.min.js"></script>
<!---venobox-js-->
<script src="<%=path%>page/client/assets/js/venobox.min.js"></script>
<!-- all js here -->
<script src="<%=path%>page/client/shopgrid/js/vendor/jquery-1.12.0.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/popper.js"></script>
<script src="<%=path%>page/client/shopgrid/js/bootstrap.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/jquery.magnific-popup.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/isotope.pkgd.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/imagesloaded.pkgd.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/jquery.counterup.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/waypoints.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/ajax-mail.js"></script>
<script src="<%=path%>page/client/shopgrid/js/owl.carousel.min.js"></script>
<script src="<%=path%>page/client/shopgrid/js/plugins.js"></script>
<script src="<%=path%>page/client/shopgrid/js/main.js"></script>
<%--bootstrap分页--%>
<script src="<%=path%>page/client/js/bootstrap-paginator.js"></script>
<script src="<%=path%>page/client/js/pageing.js"></script>
<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>

<script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ" type="text/javascript"></script>
<script src="<%=path%>page/client/js/baidumap.js"></script>
</body>
<script>
    // 初始化页面

    // getPageOfMemo(1);
    window.οnlοad=getPageOfMemo(1);
</script>
</html>


