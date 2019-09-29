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
<%--                            价格：--%>
<%--                            <input placeholder="输入最低价格" type="text" value="" id="aunt">--%>
<%--                                至--%>
<%--                            <input placeholder="输入最高价格" type="text" value="" id="aunt">--%>
                            <%--                            </form>--%>
                        </div>
                        <button class="layui-btn layui-btn-normal" style="width: 100%;" onclick="getPageOfMemo(1)"><i
                                class="ti-search"></i></button>
                    </div>
                    <%--搜索产品 end--%>

                    <%--&lt;%&ndash;价格筛选&ndash;%&gt;--%>
                    <%--                    <div class="sidebar-widget mb-40">--%>
                    <%--                        <h3 class="sidebar-title">价格筛选</h3>--%>
                    <%--                        <div class="price_filter">--%>
                    <%--                            <div id="slider-range"></div>--%>
                    <%--                            <div class="price_slider_amount">--%>
                    <%--                                <div class="label-input">--%>
                    <%--                                    <label>价格 : </label>--%>
                    <%--                                    <input type="text" id="amount" name="price" placeholder="Add Your Price"/>--%>
                    <%--                                </div>--%>
                    <%--                                <button type="button">查询</button>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--    &lt;%&ndash;价格筛选 end&ndash;%&gt;--%>

                    <%--                    <div class="sidebar-widget mb-45">--%>
                    <%--                        <h3 class="sidebar-title">服务事项表</h3>--%>
                    <%--                        <div class="sidebar-categories">--%>
                    <%--                            <ul>--%>
                    <%--                                <li><a href="#">所有服务 <span>1</span></a></li>--%>
                    <%--                                <li><a href="#">擦玻璃<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">空调清洗<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">除螨清洁<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">冰箱清洁<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">洗衣机清洁<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">油烟机清洗<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">室内表面清洁<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">物品整理<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">基础除尘除垢<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">住家保姆<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">白班保姆<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">钟点工<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">菲佣式保姆<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">产后修复<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">生活照顾<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">启蒙教育<span>1</span></a></li>--%>
                    <%--                                <li><a href="#">起居护理<span>1</span></a></li>--%>
                    <%--                            </ul>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>

                    <%--热门--%>
                    <div class="sidebar-widget mb-50">
                        <h3 class="sidebar-title">TOP3</h3>
                        <div class="sidebar-top-rated-all">

                            <div class="sidebar-top-rated mb-30">

                                <div class="single-top-rated">
                                    <div class="top-rated-img">
                                        <a href="#"><img
                                                src="<%=path%>page/client/shopgrid/img/product/sidebar-product/1.jpg"
                                                alt=""></a>
                                    </div>
                                    <div class="top-rated-text">
                                        <h4><a href="#">Flying Drone</a></h4>
                                        <div class="top-rated-rating">
                                            <ul>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                            </ul>
                                        </div>
                                        <span>$140.00</span>
                                    </div>
                                </div>
                            </div>

                            <div class="sidebar-top-rated mb-30">
                                <div class="single-top-rated">
                                    <div class="top-rated-img">
                                        <a href="#"><img
                                                src="<%=path%>page/client/shopgrid/img/product/sidebar-product/2.jpg"
                                                alt=""></a>
                                    </div>
                                    <div class="top-rated-text">
                                        <h4><a href="#">Flying Drone</a></h4>
                                        <div class="top-rated-rating">
                                            <ul>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                            </ul>
                                        </div>
                                        <span>$140.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-top-rated mb-30">
                                <div class="single-top-rated">
                                    <div class="top-rated-img">
                                        <a href="#"><img
                                                src="<%=path%>page/client/shopgrid/img/product/sidebar-product/3.jpg"
                                                alt=""></a>
                                    </div>
                                    <div class="top-rated-text">
                                        <h4><a href="#">Flying Drone</a></h4>
                                        <div class="top-rated-rating">
                                            <ul>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                            </ul>
                                        </div>
                                        <span>$140.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="sidebar-top-rated mb-30">
                                <div class="single-top-rated">
                                    <div class="top-rated-img">
                                        <a href="#"><img
                                                src="<%=path%>page/client/shopgrid/img/product/sidebar-product/4.jpg"
                                                alt=""></a>
                                    </div>
                                    <div class="top-rated-text">
                                        <h4><a href="#">Flying Drone</a></h4>
                                        <div class="top-rated-rating">
                                            <ul>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                                <li><i class="pe-7s-star"></i></li>
                                            </ul>
                                        </div>
                                        <span>$140.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--热门 end--%>

                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop-product-wrapper res-xl">
                    <div class="shop-bar-area">
                        <div class="shop-bar pb-60">
                            <div class="shop-found-selector">
                                <a class="layui-btn layui-btn-normal" href="<%=path%>page/client/checkout.jsp"><span>我要预约</span></a>
<%--                                                                <div class="shop-found">--%>
<%--                                                                    <p><span>23</span> Product Found of <span>50</span></p>--%>
<%--                                                                </div>--%>
<%--                                                                <div class="shop-selector">--%>
<%--                                                                    <label>排序方式: </label>--%>
<%--                                                                    <select name="select">--%>
<%--                                                                        <option value="">默认</option>--%>
<%--                                                                        <option value="">A to Z</option>--%>
<%--                                                                        <option value=""> Z to A</option>--%>
<%--                                                                    </select>--%>
<%--                                                                </div>--%>
                            </div>

                        </div>


                        <div class="shop-product-content tab-content">
                            <%--阿姨展示--%>
                            <div id="grid-sidebar3" class="tab-pane fade active show">
                                <div class="row" id="ayitable">
                                    <div class="col-md-6 col-xl-4">
                                        <div class="product-wrapper mb-30">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/1.jpg"
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
                                                <h4><a href="#"> Dagger Smart Trousers </a></h4>
                                                <span>$115.00</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-xl-4">
                                        <div class="product-wrapper mb-30">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/2.jpg"
                                                         alt="">
                                                </a>
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
                                                <h4><a href="#">Homme Tapered Smart </a></h4>
                                                <span>$115.00</span>
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
                <%--                分页end--%>
            </div>
        </div>
    </div>
</div>

<%--底部--%>
<footer class="footer-area">
    <div class="footer-top-area bg-img pt-105 pb-65"
         style="background-image: url(<%=path%>page/client/shopgrid/img/bg/1.jpg)" data-overlay="9">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-md-3">
                    <div class="footer-widget mb-40">
                        <h3 class="footer-widget-title">Custom Service</h3>
                        <div class="footer-widget-content">
                            <ul>
                                <li><a href="#">Cart</a></li>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Login</a></li>
                                <li><a href="#">Register</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Track</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-3">
                    <div class="footer-widget mb-40">
                        <h3 class="footer-widget-title">Categories</h3>
                        <div class="footer-widget-content">
                            <ul>
                                <li><a href="shop.html">Dress</a></li>
                                <li><a href="shop.html">Shoes</a></li>
                                <li><a href="shop.html">Shirt</a></li>
                                <li><a href="shop.html">Baby Product</a></li>
                                <li><a href="shop.html">Mans Product</a></li>
                                <li><a href="shop.html">Leather</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="footer-widget mb-40">
                        <h3 class="footer-widget-title">Contact</h3>
                        <div class="footer-newsletter">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is
                                dummy.</p>
                            <div id="mc_embed_signup" class="subscribe-form pr-40">
                                <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
                                      method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
                                      class="validate" target="_blank" novalidate>
                                    <div id="mc_embed_signup_scroll" class="mc-form">
                                        <input type="email" value="" name="EMAIL" class="email"
                                               placeholder="Enter Your E-mail" required>
                                        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                        <div class="mc-news" aria-hidden="true">
                                            <input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef"
                                                   tabindex="-1" value="">
                                        </div>
                                        <div class="clear">
                                            <input type="submit" value="Subscribe" name="subscribe"
                                                   id="mc-embedded-subscribe" class="button">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="footer-contact">
                                <p><span><i class="ti-location-pin"></i></span> 77 Seventh avenue USA 12555. </p>
                                <p><span><i class=" ti-headphone-alt "></i></span> +88 (015) 609735 or +88 (012) 112266
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom black-bg ptb-20">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="copyright">
                        <p>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank"
                                                                                     href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
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
<%--layui--%>
<script src="<%=path%>page/layui/layui.js"></script>
<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>

<script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ" type="text/javascript"></script>
<script src="<%=path%>page/client/js/baidumap.js"></script>
</body>
</html>


