<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:23
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
    <title>Service Details - HomeCleaner</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- bootstrap v4.0.0 -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- linear-icons css -->
    <link rel="stylesheet" href="assets/css/linear-icons.css">
    <!-- elegant css -->
    <link rel="stylesheet" href="assets/css/elegant.css">
    <!-- animate css -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!-- jquery.mmenu css -->
    <link rel="stylesheet" href="assets/css/jquery.mmenu.css">
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
    <!-- slick css -->
    <link rel="stylesheet" href="assets/css/slick.css">
    <!-- slick-theme css -->
    <link rel="stylesheet" href="assets/css/slick-theme.css">
    <!-- venobox css -->
    <link rel="stylesheet" href="assets/css/venobox.css">
    <!-- helper css -->
    <link rel="stylesheet" href="assets/css/helper.css">
    <!-- style css -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="assets/css/responsive.css">
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
                    <h2>Service Details</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Service Details</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<div class="service-details pt-120 pt-sm-80 pb-100 pb-sm-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="service-siebar">
                    <div class="service-tblmenu">
                        <ul class="list-none">
                            <li><a class="active" href="#">Home Cleaning</a></li>
                            <li><a href="#">Office Cleaning</a></li>
                            <li><a href="#">Window Cleaning</a></li>
                            <li><a href="#">Upholstery Cleaning</a></li>
                            <li><a href="#">Carpet Cleaning</a></li>
                            <li><a href="#">Clutter Cleanup</a></li>
                        </ul>
                    </div>
                    <div class="contact-info style-2 mt-50">
                        <h3>How can we help?</h3>
                        <p>Contact us at the Accentuate office nearest to you or submit an inquiry online.</p>
                        <ul class="list-none mt-25">
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
                        <a href="#" class="btn-common mt-40">GET IN TOUCH</a>
                    </div>
                    <div class="company-bouchure mt-50">
                        <h3>HomeCleaner Bouchure</h3>
                        <p>HomeCleaner’s cleaning service line can provide a complete range of professional cleaning services adapted to the needs of each client.</p>
                        <a href="#" class="btn-common mt-10">DOWNLOAD PDF</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="service-details mt-sm-50">
                    <img src="assets/images/services/details/1.jpg" alt="" />
                    <div class="mt-45"></div>
                    <h3>Services Overview </h3>
                    <p>Maintenance is key to ensuring your house is kept looking at its best year round! We recommend having your home cleaned every 2 weeks, but know every customer's needs are different. The domestic workers offer an array of scheduling options to ensure their services are easy and convenient for you! Most of our first time customers will begin services by having the Spring Cleaning (detailed service), and follow up with the Basic Cleaning.</p>
                    <h6 class="mt-30">Basic service may include:</h6>
                    <div class="row mt-30">
                        <div class="col-lg-6">
                            <ul class="list-circle">
                                <li>Dust ceiling fans</li>
                                <li>Remove cobwebs</li>
                                <li>Clean/sanitize sinks</li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-circle">
                                <li>Dusting and furniture polishing</li>
                                <li>Wipe down cabinet facings</li>
                                <li>Clean glass doors</li>
                            </ul>
                        </div>
                    </div>
                    <blockquote class="mt-45"><span>Not only will we provide you with a full-service, janitorial cleaning program, but we will provide you with all your restroom supplies and manage the inventory for you, freeing up your time to do what you do best.</span></blockquote>
                    <div class="row mt-60">
                        <div class="col-lg-6">
                            <img src="assets/images/services/details/2.jpg" alt="" />
                        </div>
                        <div class="col-lg-6">
                            <p>Our unique 22-Step Healthy Touch Deep Cleaning System will ensure you'll receive a healthy, thorough housecleaning with every visit. We’ll tackle mold and mildew. We’ll eliminate dust. We’ll eliminate on pet dander and hair. We use cleaning products that are friendly to the environment—that includes Mother Nature’s home and your own.</p>
                            <p>Ready to make a healthy home a clean habit? Get your free estimate for regular housecleaning services</p>
                            <a href="#" class="btn-common">SERVICE CALCULATOR</a>
                        </div>
                    </div>
                    <div class="row mt-60">
                        <div class="col-lg-12">
                            <h3>Frequently Asked Questions</h3>
                            <div id="accordion" class="mt-35">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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

