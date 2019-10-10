<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:27
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
    <title>Blog Sidebar - HomeCleaner</title>
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
                    <h2>Blog With Sidebar</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Blog With Sidebar</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--blog-area start-->
<div class="blog-area pt-120 pt-sm-80 pb-105 pb-sm-65">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="site-sidebar">
                    <!--search-->
                    <div class="sidebar-search">
                        <input type="text" placeholder="Search courses name" />
                        <button><i class="lnr lnr-magnifier"></i></button>
                    </div>
                    <!--popular-posts-->
                    <div class="popular-posts mt-55">
                        <h4 class="mb-20">POPULAR POSTS</h4>
                        <ul class="list-none">
                            <li class="d-table">
                                <div class="popular-thumb table-cell">
                                    <a href="#"><img src="assets/images/blog/popular-posts/1.jpg" alt="" /></a>
                                </div>
                                <div class="popular-desc table-cell">
                                    <h4><a href="#">Which Cleaning Service Is Best For You?</a></h4>
                                    <small>15 November 2018</small>
                                </div>
                            </li>
                            <li class="d-table">
                                <div class="popular-thumb table-cell">
                                    <a href="#"><img src="assets/images/blog/popular-posts/2.jpg" alt="" /></a>
                                </div>
                                <div class="popular-desc table-cell">
                                    <h4><a href="#">Cleaning Tip: How to Clean Stainless Steel</a></h4>
                                    <small>15 November 2018</small>
                                </div>
                            </li>
                            <li class="d-table">
                                <div class="popular-thumb table-cell">
                                    <a href="#"><img src="assets/images/blog/popular-posts/3.jpg" alt="" /></a>
                                </div>
                                <div class="popular-desc table-cell">
                                    <h4><a href="#">The Top 3 Germiest Places in Your Office</a></h4>
                                    <small>15 November 2018</small>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--category-->
                    <div class="sidebar-category mt-40">
                        <h4 class="sidebar-title">Categories</h4>
                        <ul class="list-none">
                            <li><a href="#">English</a><span>(10)</span></li>
                            <li><a href="#">Music</a><span>(5)</span></li>
                            <li><a href="#">Photography</a><span>(6)</span></li>
                            <li><a href="#">Design</a><span>(3)</span></li>
                            <li><a href="#">Business</a><span>(9)</span></li>
                            <li><a href="#">Science</a><span>(9)</span></li>
                        </ul>
                    </div>
                    <!--archives-->
                    <div class="sidebar-category mt-40">
                        <h4 class="sidebar-title">ARCHIVES</h4>
                        <ul class="list-none">
                            <li><a href="#">January 2018</a><span>(10)</span></li>
                            <li><a href="#">March 2018</a><span>(5)</span></li>
                            <li><a href="#">May 2018</a><span>(6)</span></li>
                            <li><a href="#">July 2018</a><span>(3)</span></li>
                            <li><a href="#">August 2018</a><span>(9)</span></li>
                            <li><a href="#">October 2018</a><span>(9)</span></li>
                        </ul>
                    </div>
                    <!--tags-->
                    <div class="tags-list mt-40">
                        <h4 class="sidebar-title">Tags</h4>
                        <a href="#">House</a>
                        <a href="#">Floor</a>
                        <a href="#">Building</a>
                        <a href="#">Clutter Cleanup</a>
                        <a href="#">Cleaning</a>
                        <a href="#">Window</a>
                        <a href="#">Office</a>
                        <a href="#">Stains</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 mt-sm-50">
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-single">
                            <div class="blog-thumb">
                                <a href="#"><img src="assets/images/blog/1.jpg" alt="" /></a>
                            </div>
                            <div class="blog-desc">
                                <small>28 April 2018</small>
                                <h4><a href="#">Which Cleaning Service Is Best For You?</a></h4>
                                <p>We’ve been in the cleaning industry long enough to know that while not everyone needs a bi-weekly housecleaning...</p>
                                <div class="blog-author">
                                    <img src="assets/images/blog/authors/1.png" alt="" />
                                    <small>By<a href="#"><strong>Caleigh Jerde</strong></a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-single">
                            <div class="blog-thumb">
                                <a href="#"><img src="assets/images/blog/2.jpg" alt="" /></a>
                            </div>
                            <div class="blog-desc">
                                <small>28 April 2018</small>
                                <h4><a href="#">How To Clean Grout and Remove Stains</a></h4>
                                <p>This has to be one of the most tedious and time-consuming household chores ever. Although the actual customer and the provider job is a pain...</p>
                                <div class="blog-author">
                                    <img src="assets/images/blog/authors/2.png" alt="" />
                                    <small>By<a href="#"><strong>Will Marvin</strong></a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-single">
                            <div class="blog-thumb">
                                <a href="#"><img src="assets/images/blog/3.jpg" alt="" /></a>
                            </div>
                            <div class="blog-desc">
                                <small>28 April 2018</small>
                                <h4><a href="#">The Three Rules of Maid Service Etiquette</a></h4>
                                <p>Every service industry has a list of do’s and don’ts to make sure both the customer and the provider can benefit from the relationship...</p>
                                <div class="blog-author">
                                    <img src="assets/images/blog/authors/3.png" alt="" />
                                    <small>By<a href="#"><strong>Katlynn Pouros</strong></a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-single">
                            <div class="blog-thumb">
                                <a href="#"><img src="assets/images/blog/4.jpg" alt="" /></a>
                            </div>
                            <div class="blog-desc">
                                <small>28 April 2018</small>
                                <h4><a href="#">Cleaning Tip: How to Clean Stainless Steel</a></h4>
                                <p>Stainless steel remains a popular option when choosing kitchen appliances. From dishwashers to ovens, stainless steel outsells other colors...</p>
                                <div class="blog-author">
                                    <img src="assets/images/blog/authors/2.png" alt="" />
                                    <small>By<a href="#"><strong>Caleigh Jerde</strong></a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-single">
                            <div class="blog-thumb">
                                <a href="#"><img src="assets/images/blog/5.jpg" alt="" /></a>
                            </div>
                            <div class="blog-desc">
                                <small>28 April 2018</small>
                                <h4><a href="#">The Top 3 Germiest Places in Your Office</a></h4>
                                <p>You might be surprised that it’s not the restroom! Nope, the germiest place in your office is likely the last place you imagine it would be...</p>
                                <div class="blog-author">
                                    <img src="assets/images/blog/authors/1.png" alt="" />
                                    <small>By<a href="#"><strong>Will Marvin</strong></a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="blog-single">
                            <div class="blog-thumb">
                                <a href="#"><img src="assets/images/blog/6.jpg" alt="" /></a>
                            </div>
                            <div class="blog-desc">
                                <small>28 April 2018</small>
                                <h4><a href="#">Why Proper Floor Maintenance is Critical for All Flooring</a></h4>
                                <p>When you think of cleaning and maintenance for your commercial building, do you factor in floor maintenance?...</p>
                                <div class="blog-author">
                                    <img src="assets/images/blog/authors/3.png" alt="" />
                                    <small>By<a href="#"><strong>Katlynn Pouros</strong></a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--pagination-->
        <div class="row mt-20 mt-sm-zero">
            <div class="col-lg-12">
                <div class="site-pagination style-3 text-center">
                    <ul>
                        <li><a href="#"><i class="arrow_carrot-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#"><i class="arrow_carrot-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--blog-area end-->

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
