<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:28
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
    <title>About Us - HomeCleaner</title>
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
                    <h2>About Us</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">About Us</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--about-area start-->
<div class="about-area pt-105 pt-sm-65 pb-70 pb-sm-45">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Why choose HomeCleaner?</h2>
                    <p>We know you have a lot of choices when it comes to choosing who to clean <br/> your home, here are some reasons to consider CleanPro.</p>
                </div>
            </div>
        </div>
        <div class="row mt-60 mt-sm-50 align-items-center">
            <div class="col-lg-4 col-sm-6">
                <div class="service-single text-right">
                    <i class="lnr lnr-lock"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and work-history verified.</p>
                </div>
                <div class="service-single text-right">
                    <i class="lnr lnr-smile"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and work-history verified.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 ds-sm-none">
                <img src="assets/images/about/1.jpg" alt="" />
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-single">
                    <i class="lnr lnr-bubble"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and work-history verified.</p>
                </div>
                <div class="service-single">
                    <i class="lnr lnr-tag"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and work-history verified.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--about-area end-->

<!--counterup-area start-->
<div class="counterup-area bg-1 overlay">
    <div class="container">
        <div class="row height-300 align-items-center">
            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                <div class="counter-single z-index">
                    <span class="count1">2574</span>
                    <div class="counter-title">
                        <h4>Clients a year</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                <div class="counter-single z-index">
                    <span class="count2">354</span>
                    <div class="counter-title">
                        <h4>People working</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                <div class="counter-single z-index">
                    <span class="count3">700</span>
                    <div class="counter-title">
                        <h4>Happy customers</h4>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                <div class="counter-single z-index">
                    <span class="count4">3473</span>
                    <div class="counter-title">
                        <h4>Completed projects</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--counterup-area end-->

<!--team-area start-->
<div class="team-area pt-105 pt-sm-65 pb-112 pb-sm-73">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title no-br-sm text-center">
                    <h2>Meet Our Staff</h2>
                    <p>CleanPro Company is a minority owned business with a large group of specially trained, dedicated <br/> employees to provide professional service</p>
                </div>
            </div>
        </div>
        <div class="row team-carousel mt-65 mt-sm-55">
            <div class="col-lg-4">
                <div class="team-single text-center">
                    <div class="team-thumb">
                        <img src="assets/images/team/1.jpg" alt="" />
                        <div class="team-social">
                            <a href="#"><i class="social_facebook"></i></a>
                            <a href="#"><i class="social_twitter"></i></a>
                            <a href="#"><i class="social_linkedin"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h5>Elizabeth Driessen</h5>
                        <small>General Cleaner</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-single text-center">
                    <div class="team-thumb">
                        <img src="assets/images/team/2.jpg" alt="" />
                        <div class="team-social">
                            <a href="#"><i class="social_facebook"></i></a>
                            <a href="#"><i class="social_twitter"></i></a>
                            <a href="#"><i class="social_linkedin"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h5>Aya Kleine Pier</h5>
                        <small>General Cleaner</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-single text-center">
                    <div class="team-thumb">
                        <img src="assets/images/team/3.jpg" alt="" />
                        <div class="team-social">
                            <a href="#"><i class="social_facebook"></i></a>
                            <a href="#"><i class="social_twitter"></i></a>
                            <a href="#"><i class="social_linkedin"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h5>Julie de Jonge</h5>
                        <small>General Cleaner</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="team-single text-center">
                    <div class="team-thumb">
                        <img src="assets/images/team/1.jpg" alt="" />
                        <div class="team-social">
                            <a href="#"><i class="social_facebook"></i></a>
                            <a href="#"><i class="social_twitter"></i></a>
                            <a href="#"><i class="social_linkedin"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h5>Elizabeth Driessen</h5>
                        <small>General Cleaner</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--team-area end-->

<!--testimonial-area start-->
<div class="testimonial-area bg-f3f4f7 pt-105 pt-sm-65 pb-105 pb-sm-65">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>What Clients Say About Us</h2>
                    <p>We rigorously vet all of our Cleaners, please see a selection of quotes from our <br/> Channel Partners below.</p>
                </div>
            </div>
        </div>
        <div class="row two-col-testimonial mt-70">
            <div class="col-lg-6">
                <div class="testimonial-single style-2 bg-white text-center">
                    <img src="assets/images/testimonials/1.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Caleigh Jerde</h5>
                        <small>Physician</small>
                    </div>
                    <p>I just started with the cleaning authority and so far have been pleasantly surprised. They did an awesome job and really went above and beyond for an every day cleaning. They set the standard so I hope I get this team back and the same quality every other week!</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="testimonial-single style-2 bg-white text-center">
                    <img src="assets/images/testimonials/2.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Mary Katherine</h5>
                        <small>Accountant</small>
                    </div>
                    <p>Yes we have had CleanPro cleaning our house for a year now and I just want to say that they really do an excellent job taking care of our house. They take care of all the things listed on their Tasks Sheet and they are a very professional group of people.</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="testimonial-single style-2 bg-white text-center">
                    <img src="assets/images/testimonials/3.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Caleigh Jerde</h5>
                        <small>Physician</small>
                    </div>
                    <p>I just started with the cleaning authority and so far have been pleasantly surprised. They did an awesome job and really went above and beyond for an every day cleaning. They set the standard so I hope I get this team back and the same quality every other week!</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--testimonial-area end-->

<!--cta-area start-->
<div class="cta-area bg-3669b4">
    <div class="container">
        <div class="row height-250 align-items-center">
            <div class="col-lg-9">
                <div class="cta-text">
                    <h2>Best House Cleaning Service in Netherlands</h2>
                    <p> Ready to free up your time and let us do the dirty work!</p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="cta-btn">
                    <a href="#" class="btn-common">BOOK ONLINE</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--cta-area end-->

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
