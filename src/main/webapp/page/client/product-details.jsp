<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Details - HomeCleaner</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

    <link rel="stylesheet" href="<%=path%>page/layui/css/layui.css" media="all">
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">

</head>

<body>

<!--header-top-->
<jsp:include page="top1.jsp" flush="true"/>
<!--header-bottom-->
<jsp:include page="top2.jsp" flush="true"/>
<!--header-ends-->

<!--page-banner-start-->
<div class="page-banner-area bg-1">
    <div class="container">
        <div class="row height-400 align-items-center">
            <div class="col-lg-12">
                <div class="page-banner text-center">
                    <h2>Product Details</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Product Details</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--product-details-area start-->
<div class="product-details-area mt-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-1">
                <ul class="nav nav-tabs products-nav-tabs">
                    <li><a class="active" data-toggle="tab" href="#product-1"><img src="assets/images/products/details/thumb-1.jpg" alt="" /></a></li>
                    <li><a data-toggle="tab" href="#product-2"><img src="assets/images/products/details/thumb-2.jpg" alt="" /></a></li>
                    <li><a data-toggle="tab" href="#product-3"><img src="assets/images/products/details/thumb-3.jpg" alt="" /></a></li>
                </ul>
            </div>
            <div class="col-lg-5">
                <div class="tab-content">
                    <div id="product-1" class="tab-pane fade in show active">
                        <img src="assets/images/products/details/1.jpg" alt="" />
                    </div>
                    <div id="product-2" class="tab-pane fade">
                        <img src="assets/images/products/details/2.jpg" alt="" />
                    </div>
                    <div id="product-3" class="tab-pane fade">
                        <img src="assets/images/products/details/3.jpg" alt="" />
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="single-product-details mt-sm-40">
                    <h2>Spray Cleaning Machine</h2>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <small>(1 Reviews)</small>
                    </div>
                    <div class="product-price mt-30">
                        <span>$130.80</span>
                        <del>$1060.00</del>
                    </div>
                    <div class="product-stock mt-25 mb-35">
                        <ul class="list-none">
                            <li>Available:<span> In Stock</span></li>
                        </ul>
                    </div>
                    <p>Powered using an air cooled industrial motor and the power will blast through grime and dirt to restore your surfaces, pistol style grip with trigger spray wand dispenses for efficient pressure washing, tackles light, medium and heavy duty cleaning tasks in half the time</p>
                    <div class="product-quantity-update mt-50">
                        <table>
                            <tr>
                                <td>
                                    <div class="cart-quantity-changer pull-left">
                                        <a class="value-decrease qtybutton">-</a>
                                        <input type="text" value="1" />
                                        <a class="value-increase qtybutton">+</a>
                                    </div>
                                </td>
                                <td>
                                    <a href="#" class="btn-common">Add to cart</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="product-meta mt-50">
                        <ul class="list-none">
                            <li>SKU: 00012 <span>|</span></li>
                            <li>Categories:
                                <a href="#">Tech</a>
                                <a href="#">Macbook</a>
                                <a href="#">Laptop</a>
                                <span>|</span>
                            </li>
                            <li>Tags:
                                <a href="#">Tech</a>
                                <a href="#">Apple</a>
                            </li>
                        </ul>
                    </div>
                    <div class="social-icons style-2">
                        <span>Share Link:</span>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-rss"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--product-details-area end-->

<!--product-review-area start-->
<div class="product-review-area mt-62 pb-50">
    <div class="container">
        <div class="product-review-section">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs product-review-nav">
                        <li><a class="active" data-toggle="tab" href="#product-desc">Description</a></li>
                        <li><a data-toggle="tab" href="#product-review">Reviews (2)</a></li>
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="tab-content product-review-desc">
                        <div id="product-desc" class="tab-pane fade in show active">
                            <p>Adjustable Spray Nozzle & Soap Dispenser, you can choose most suitable flow by rotating the head of the gun and apply soap to completely clean any surface. Overall dimension(package): 12” x 9.8” x 19”. Great Gifts for gardeners, families or friends who has a need. Contact us at anytime if you need customer service.</p>
                            <div class="row mt-30">
                                <div class="col-lg-6">
                                    <ul class="list-circle">
                                        <li>Brand Name:AUTO CARE</li>
                                        <li>Item Width:9.6inch</li>
                                        <li>Model Name:HXD1200BF-2</li>
                                        <li>Include Accessories:Yes</li>
                                        <li>Item Height:17.5inch</li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="list-circle">
                                        <li>Item Length:11.4inch</li>
                                        <li>External Testing Certification:CE</li>
                                        <li>Motor Type:Universal Motor</li>
                                        <li>Item Weight:6kg</li>
                                        <li>Material Type:ABS Copper</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="product-review" class="tab-pane fade">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="product-rating-section">
                                        <p>Average Rating</p>
                                        <h4>5.00</h4>
                                        <div class="item-rating style-2 mt-25">
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <small>(1 Reviews)</small>
                                        </div>
                                        <!--rating-line-->
                                        <div class="row align-items-center progress-row mt-30">
                                            <div class="col-xl-2 col-lg-3 col-4">
                                                <strong>5 stars</strong>
                                            </div>
                                            <div class="col-xl-8 col-lg-7 col-5">
                                                <div class="single-progress">
                                                    <div class="progress">
                                                        <div class="progress-bar width-100p" role="progressbar" aria-valuenow="100"
                                                             aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-lg-2 col-2">
                                                <span>100%</span>
                                            </div>
                                        </div>
                                        <!--rating-line-->
                                        <div class="row align-items-center mt-10">
                                            <div class="col-xl-2 col-lg-3 col-4">
                                                <strong>4 stars</strong>
                                            </div>
                                            <div class="col-xl-8 col-lg-7 col-5">
                                                <div class="single-progress">
                                                    <div class="progress">
                                                        <div class="progress-bar width-20p" role="progressbar" aria-valuenow="20"
                                                             aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-lg-2 col-2">
                                                <span>0</span>
                                            </div>
                                        </div>
                                        <!--rating-line-->
                                        <div class="row align-items-center mt-10">
                                            <div class="col-xl-2 col-lg-3 col-4">
                                                <strong>3 stars</strong>
                                            </div>
                                            <div class="col-xl-8 col-lg-7 col-5">
                                                <div class="single-progress">
                                                    <div class="progress">
                                                        <div class="progress-bar width-20p" role="progressbar" aria-valuenow="20"
                                                             aria-valuemin="0" aria-valuemax="100">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-lg-2 col-2">
                                                <span>0</span>
                                            </div>
                                        </div>
                                        <!--rating-line-->
                                        <div class="row align-items-center mt-10">
                                            <div class="col-xl-2 col-lg-3 col-4">
                                                <strong>2 stars</strong>
                                            </div>
                                            <div class="col-xl-8 col-lg-7 col-5">
                                                <div class="single-progress">
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                             aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-lg-2 col-2">
                                                <span>0</span>
                                            </div>
                                        </div>
                                        <!--rating-line-->
                                        <div class="row align-items-center mt-10">
                                            <div class="col-xl-2 col-lg-3 col-4">
                                                <strong>1 star</strong>
                                            </div>
                                            <div class="col-xl-8 col-lg-7 col-5">
                                                <div class="single-progress">
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" aria-valuenow="0"
                                                             aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 col-lg-2 col-2">
                                                <span>0</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="blog-comment-form product-review-form mt-sm-35">
                                        <h4>Submit Your Review</h4>
                                        <p>Your email address will not be published. Required fields are marked *</p>
                                        <div class="item-rating style-2 mt-20">
                                            <strong>Your rating of this product </strong>
                                            <i class="icon_star_alt"></i>
                                            <i class="icon_star_alt"></i>
                                            <i class="icon_star_alt"></i>
                                            <i class="icon_star_alt"></i>
                                            <i class="icon_star_alt"></i>
                                        </div>
                                        <div class="row mt-30">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <textarea class="form-control" placeholder="Your Review"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Your Name:* ">
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Your Email:* ">
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <button class="btn-common mt-15">SUBMIT COMMENT</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--reviews-->
                            <div class="product-review-list">
                                <div class="row mt-60">
                                    <div class="col-lg-12">
                                        <h3>1 Review For This Product</h3>
                                    </div>
                                    <div class="col-lg-12">
                                        <ul class="list-none">
                                            <li>
                                                <div class="comment-avatar">
                                                    <img src="assets/images/blog/comment/1.png" alt="" />
                                                </div>
                                                <div class="comment-desc">
                                                    <div class="item-rating">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                    </div>
                                                    <div class="comment-name-date">
                                                        <h4><span>By</span> Lisa Mack </h4> |
                                                        <small>28 April 2018 </small>
                                                    </div>
                                                    <p>People tend not to remember to wash their hands before and after using public transportation simply because they are on the go, and also because they are rarely cleaned properly. At least for me, it's something I have to remind myself to do!</p>
                                                    <div class="comment-reaction">
                                                        <a href="#"><i class="arrow_back"></i>Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--product-review-area end-->

<!--relate-products start-->
<div class="related-products-area pb-60 pb-sm-20">
    <div class="container br-top-e5e5e5">
        <div class="row pt-65">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Related Product</h2>
                </div>
            </div>
        </div>
        <div class="row related-products mt-25">
            <div class="col-lg-3">
                <div class="product-single">
                    <div class="product-thumb">
                        <a href="#"><img src="assets/images/products/1.jpg" alt="" /></a>
                        <a href="#" class="btn-common">Add To Cart</a>
                    </div>
                    <div class="product-caption">
                        <h4><a href="#">Caution Wet Floor</a></h4>
                        <span>$7.00</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="product-single">
                    <div class="product-thumb">
                        <a href="#"><img src="assets/images/products/2.jpg" alt="" /></a>
                        <a href="#" class="btn-common">Add To Cart</a>
                    </div>
                    <div class="product-caption">
                        <h4><a href="#">Carts for Cleaning</a></h4>
                        <span>$39.04</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="product-single">
                    <div class="product-thumb">
                        <a href="#"><img src="assets/images/products/3.jpg" alt="" /></a>
                        <a href="#" class="btn-common">Add To Cart</a>
                    </div>
                    <div class="product-caption">
                        <h4><a href="#">Cleaning Mop</a></h4>
                        <span>$14.50</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="product-single">
                    <div class="product-thumb">
                        <a href="#"><img src="assets/images/products/4.jpg" alt="" /></a>
                        <a href="#" class="btn-common">Add To Cart</a>
                    </div>
                    <div class="product-caption">
                        <h4><a href="#">Spray Cleaning  Machine</a></h4>
                        <span>$130.80</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="product-single">
                    <div class="product-thumb">
                        <a href="#"><img src="assets/images/products/5.jpg" alt="" /></a>
                        <a href="#" class="btn-common">Add To Cart</a>
                    </div>
                    <div class="product-caption">
                        <h4><a href="#">Cleaning Machine</a></h4>
                        <span>$250.35</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--relate-products end-->

<!--footer-area start-->
<footer>
    <div class="footer-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget office-adress">
                        <h4>ABOUT US</h4>
                        <p>We offer a complete package for all our clients.</p>
                        <ul class="list-none">
                            <li>
                                <i class="lnr lnr-map-marker"></i>
                                Franse Stormboulevard 2 9677 JB Gasselternijveen
                            </li>
                            <li>
                                <i class="lnr lnr-phone-handset"></i>
                                (0131) 804 1808
                            </li>
                            <li>
                                <i class="lnr lnr-envelope"></i>
                                CleanProtheme@gmail.com
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget">
                        <h4>OUR SERVICES</h4>
                        <ul class="list-none">
                            <li><a href="#"><i class="arrow_carrot-right"></i>Home Cleaning</a></li>
                            <li><a href="#"><i class="arrow_carrot-right"></i>Office Cleaning</a></li>
                            <li><a href="#"><i class="arrow_carrot-right"></i>Window Cleaning</a></li>
                            <li><a href="#"><i class="arrow_carrot-right"></i>Carpet Cleaning</a></li>
                            <li><a href="#"><i class="arrow_carrot-right"></i>Clutter Cleanup</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget latest-posts">
                        <h4>LATEST POSTS</h4>
                        <ul class="list-none">
                            <li>
                                <a href="#">Which Cleaning Service Is Best For You?</a>
                                <small>15 November 2019</small>
                            </li>
                            <li>
                                <a href="#">How To Clean Grout and Remove Stains</a>
                                <small>15 November 2019</small>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget subscribe-form">
                        <h4>NEWSLETTER</h4>
                        <p>Subscribe & get 10% discount when you purchase clean equipments for the first time</p>
                        <input type="text" placeholder="Your Email*" />
                        <button class="btn-common">SUBSCRIBE NOW</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--footer-bottom-->
    <div class="footer-bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 ds-sm-none">
                    <div class="logo">
                        <img src="assets/images/footer/logo.png" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="copyright-text text-center">
                        <p>&copy; 2019 HomeCleaner. All rights reserved. Developed by LionsBite</p>
                    </div>
                </div>
                <div class="col-lg-3 ds-sm-none">
                    <div class="social-icons text-right">
                        <a href="#"><i class="social_facebook"></i></a>
                        <a href="#"><i class="social_twitter"></i></a>
                        <a href="#"><i class="social_linkedin"></i></a>
                        <a href="#"><i class="social_pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--footer-area end-->

<script src="../layui/layui.js"></script>
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
<!-- plugins js -->
<script src="<%=path%>page/client/assets/js/plugins.js"></script>
<!-- main js -->
<script src="<%=path%>page/client/assets/js/main.js"></script>

<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>

</body>
</html>

