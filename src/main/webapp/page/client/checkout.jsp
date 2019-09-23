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
    <title>Checkout - HomeCleaner</title>
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
                    <h2>Checkout</h2>
                    <div class="site-breadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--page-banner-end-->

<!--checkout-area start-->
<div class="checkout-area pt-115 pt-sm-75 pb-110 pb-sm-80">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="cart-checkout">
                    <h3>Billing Details</h3>
                    <div class="row mt-35">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="first-name">First Name <span>*</span></label>
                                <input type="text" id="first-name" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="last-name">Last Name <span>*</span></label>
                                <input type="text" id="last-name" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="email">Email Address  <span>*</span></label>
                                <input type="email" id="email" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="phone">Phone Number  <span>*</span></label>
                                <input type="text" id="phone" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="country">Country  <span>*</span></label>
                                <select class="form-control" id="country">
                                    <option>United Kingdom</option>
                                    <option>United States</option>
                                    <option>Canada</option>
                                    <option>Brazil</option>
                                    <option>China</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="address">Street Address  <span>*</span></label>
                                <input type="text" id="address" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="city">Town / City  <span>*</span></label>
                                <input type="text" id="city" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="postcode">Postcode / ZIP  <span>*</span></label>
                                <input type="text" id="postcode" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-12 mt-20">
                            <input type="checkbox" id="diff-address">
                            <label for="diff-address">Ship to a different address?  <span>*</span></label>
                        </div>
                    </div>
                    <div class="different-address mt-25">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="first-name2">First Name <span>*</span></label>
                                    <input type="text" id="first-name2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="last-name2">Last Name <span>*</span></label>
                                    <input type="text" id="last-name2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="email2">Email Address  <span>*</span></label>
                                    <input type="email" id="email2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="phone2">Phone Number  <span>*</span></label>
                                    <input type="text" id="phone2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="country2">Country  <span>*</span></label>
                                    <select class="form-control" id="country2">
                                        <option>United Kingdom</option>
                                        <option>United States</option>
                                        <option>Canada</option>
                                        <option>Brazil</option>
                                        <option>China</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="address2">Street Address  <span>*</span></label>
                                    <input type="text" id="address2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="city2">Town / City  <span>*</span></label>
                                    <input type="text" id="city2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="postcode2">Postcode / ZIP  <span>*</span></label>
                                    <input type="text" id="postcode2" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <label for="info2">Additional Information</label>
                                    <textarea class="form-control" id="info2" cols="30" rows="10"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart-box cart-total mt-sm-60">
                    <h3>Your Order</h3>
                    <div class="cart-total-inner mt-45">
                        <table class="first-table">
                            <tr>
                                <td><h5>PRODUCT</h5></td>
                                <td class="text-right"><h5>TOTAL</h5></td>
                            </tr>
                            <tr>
                                <td><h5>SHIPING</h5></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" id="free-ship" />
                                    <label for="free-ship">Free Shiping</label>
                                </td>
                                <td class="text-right">+ $00.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" id="standard" />
                                    <label for="standard">Standard</label>
                                </td>
                                <td class="text-right">+ $10.00</td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" id="express" />
                                    <label for="express">Express</label>
                                </td>
                                <td class="text-right">+ $20.00</td>
                            </tr>
                        </table>
                        <table class="second-table">
                            <tr>
                                <td><h5>TOTAL:</h5></td>
                                <td class="text-right"><span>$34.50</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="proceed-checkout mt-30">
                        <a href="#" class="btn-common">PROCEED TO CHECKOUT</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--checkout-area end-->

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
