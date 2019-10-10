<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:10
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
    <title>Testimonials - HomeCleaner</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- bootstrap v4.0.0 -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <!-- linear-icons css -->
    <link rel="stylesheet" href="../assets/css/linear-icons.css">
    <!-- elegant css -->
    <link rel="stylesheet" href="../assets/css/elegant.css">
    <!-- animate css -->
    <link rel="stylesheet" href="../assets/css/animate.css">
    <!-- jquery.mmenu css -->
    <link rel="stylesheet" href="../assets/css/jquery.mmenu.css">
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="../assets/css/jquery-ui.min.css">
    <!-- slick css -->
    <link rel="stylesheet" href="../assets/css/slick.css">
    <!-- slick-theme css -->
    <link rel="stylesheet" href="../assets/css/slick-theme.css">
    <!-- venobox css -->
    <link rel="stylesheet" href="../assets/css/venobox.css">
    <!-- helper css -->
    <link rel="stylesheet" href="../assets/css/helper.css">
    <!-- style css -->
    <link rel="stylesheet" href="../style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="../assets/css/responsive.css">
</head>

<body>
<!--header-top-->
<jsp:include page="../top1.jsp" flush="true"/>
<!--header-bottom-->
<jsp:include page="../top2.jsp" flush="true"/>
<!--header-ends-->

<!--page-banner-start-->
<div class="page-banner-area bg-1">
    <div class="container">
        <div class="row height-400 align-items-center">
            <div class="col-lg-12">
                <div class="page-banner text-center">
                    <h2>Testimonials</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Testimonials</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--testimonial-area start-->
<div class="testimonial-area pt-105 pt-sm-65 pb-120 pb-sm-80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>What Clients Say About Us</h2>
                    <p>We rigorously vet all of our Cleaners, please see a selection of quotes from our <br/> Channel Partners below.</p>
                </div>
            </div>
        </div>
        <div class="row mt-120">
            <div class="col-lg-6 col-md-6">
                <div class="testimonial-single style-2 text-center mb-85">
                    <img src="../assets/images/testimonials/1.png" alt="" />
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
            <div class="col-lg-6 col-md-6">
                <div class="testimonial-single style-2 text-center mb-85">
                    <img src="../assets/images/testimonials/2.png" alt="" />
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
            <div class="col-lg-6 col-md-6">
                <div class="testimonial-single style-2 text-center mb-85">
                    <img src="../assets/images/testimonials/3.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Lars Sambo</h5>
                        <small>Lawyer</small>
                    </div>
                    <p>I've used a lot of cleaners and am so happy with first service! CleanPro showed up personally to see job, supervised and totally over delivered. They worked within my budget and I haven't found any forgotten dirty spots! Reasonable price, thorough service. Can't ask for more!</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="testimonial-single style-2 text-center mb-85">
                    <img src="../assets/images/testimonials/4.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Evelien Sambo</h5>
                        <small>Educator</small>
                    </div>
                    <p>All of my friends insisted that I use your service when I needed a cleaning service. Boy, am I glad I listened. You were prompt and I felt I was getting an honest deal. Thanks for the great service! Thorough service. Can't ask for more! CleanPro showed up personally to see job, supervised and totally over delivered.</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="testimonial-single style-2 text-center mb-85">
                    <img src="../assets/images/testimonials/5.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Jayden Feenstra</h5>
                        <small>Chemist</small>
                    </div>
                    <p>Thank you so much for making my home glow before our big party. It has never looked so good. I couldn't believe how quickly you had everything clean!</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="testimonial-single style-2 text-center">
                    <img src="../assets/images/testimonials/6.png" alt="" />
                    <div class="testimonial-title">
                        <h5>Amina Mohan</h5>
                        <small>Educator</small>
                    </div>
                    <p>I have used CleanPro service for about four years. I describe myself very picky and difficult to be pleased. CleanPro exceeded my expectations. The manager is professional, flexible and very reasonable. I really like the work of the two ladies who clean our house. I trust them and their service has been consistently high quality. Thank you.</p>
                    <div class="item-rating">
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                        <i class="icon_star"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 text-center mt-50">
                <a href="#" class="btn-common">Load More</a>
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
                        <img src="../assets/images/footer/logo.png" alt="" />
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

<script src="../../layui/layui.js"></script>
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
