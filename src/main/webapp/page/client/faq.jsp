<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:26
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
    <title>FAQ - HomeCleaner</title>
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
                    <h2>FAQ</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">FAQ</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--faq-area start-->
<div class="faq-area bg-f3f4f7 pt-105 pt-sm-65 pb-100 pb-sm-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title no-br-sm text-center">
                    <h2>Frequently Asked Questions</h2>
                    <p>Our goal is to provide the best customer service and to answer all of your questions in a timely manner. Below <br/> are just some of the frequently asked questions we receive.</p>
                </div>
            </div>
        </div>
        <div id="accordion" class="row mt-70 mt-sm-60">
            <div class="col-lg-6">
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingOne">
                        <h5 class="mb-0">
                            <a href="#collapseOne" class="btn btn-link" data-toggle="collapse" aria-expanded="true" aria-controls="collapseOne">
                                Do I have to sign a contract?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <p>No, we believe in performance-based contracts, which means that we have to earn your business every month. We do need to have you sign an Agreement that outlines the services to be provided, the frequency, price, and payment terms. The agreement also states that either party may discontinue service with a 30-day notice.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingTwo">
                        <h5 class="mb-0">
                            <a href="#collapseTwo" class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                What is included in a standard cleaning?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingThree">
                        <h5 class="mb-0">
                            <a href="#collapseThree" class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Will the same person be in my home each time?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingFour">
                        <h5 class="mb-0">
                            <a href="#collapseFour" class="btn btn-link" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                Can I request special tasks or extras?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingFive">
                        <h5 class="mb-0">
                            <a href="#collapseFive" class="btn btn-link" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                Why should I use CleaningPro?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingSix">
                        <h5 class="mb-0">
                            <a href="#collapseSix" class="btn btn-link" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                Can I hire one of your cleaning professionals directly?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingSeven">
                        <h5 class="mb-0">
                            <a href="#collapseSeven" class="btn btn-link" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                What if something in my home gets damaged?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingEight">
                        <h5 class="mb-0">
                            <a href="#collapseEight" class="btn btn-link" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                Do you guarantee your work?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingNine">
                        <h5 class="mb-0">
                            <a href="#collapseNine" class="btn btn-link" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                What if my cleaning schedule falls on a holiday?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
                <div class="card single-faq">
                    <div class="card-header faq-heading" id="headingTen">
                        <h5 class="mb-0">
                            <a href="#collapseTen" class="btn btn-link" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                How often should I have my home cleaned?
                                <i class="arrow_carrot-up" aria-hidden="true"></i>
                                <i class="arrow_carrot-down" aria-hidden="true"></i>
                            </a>
                        </h5>
                    </div>
                    <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                        <div class="card-body">
                            <p>The graphical control element accordion is a vertically stacked list of items, such as labels or thumbnails. Each item can be "expanded" or "stretched" to reveal the content associated with that item. There can be zero expanded items, exactly one, or more than one item expanded at a time, depending on the configuration stacked list of items, such as labels or thumbnails.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--faq-area end-->

<!--contact-area start-->
<div class="contact-area bg-1 pt-100 pt-sm-80 pb-100 pb-sm-80">
    <div class="container">
        <div class="row">
            <div class="col-lg-6"></div>
            <div class="col-lg-6">
                <div class="contact-form style-3">
                    <h2>Ask Us Anything</h2>
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Name*">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email*">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Phone*">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" rows="3" placeholder="Message *"></textarea>
                        </div>
                        <button type="button" class="btn-common mt-20">BOOK NOW</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--contact-area end-->

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
