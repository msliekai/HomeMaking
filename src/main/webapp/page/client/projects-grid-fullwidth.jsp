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
    <title>Projects Grid Fullwidth - HomeCleaner</title>
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
                    <h2>Projects Grid</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Projects Grid</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--projects-area start-->
<div class="projects-area pt-120 pt-sm-80 pb-120 pb-sm-80">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="projects-nav style-2 text-center">
                    <ul class="nav nav-tabs">
                        <li data-filter="*" class="active">All Projects</li>
                        <li data-filter=".house">House</li>
                        <li data-filter=".office">Office</li>
                        <li data-filter=".garden">Garden</li>
                        <li data-filter=".apartment">Apartment</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row project-items mt-60 mt-sm-50">
            <div class="col-lg-3 col-sm-6 house plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/1.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Office Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 office plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/2.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Garden Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 garden plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/3.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Road Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 apartment plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/4.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Factory Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 house plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/5.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Office Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 office plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/6.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Office Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 garden plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/7.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Office Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 apartment plr-0">
                <div class="project-single">
                    <div class="project-thumb">
                        <img src="assets/images/projects/8.jpg" alt="" />
                    </div>
                    <div class="project-caption">
                        <small>Office Cleaning </small>
                        <a href="project-details.html" class="btn-common">View Project</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-60 text-center">
            <div class="col-lg-12">
                <a href="#" class="btn-common">Load More</a>
            </div>
        </div>
    </div>
</div>
<!--projects-area end-->

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
