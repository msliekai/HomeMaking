<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/20
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>-</title>
</head>
<body>

<%--<nav class="navbar navbar-inverse navbar-fixed-top">--%>
<header>
    <div class="header-bottom-area" id="sticker">
        <div class="container">
            <!--mainmenu-->
            <div class="row align-items-center">
                <div class="col-lg-9 col-6">
                    <div class="mainmenu">
                        <nav>
                            <ul class="list-none">
                                <li><a href="#">首页</a></li>
                                <li><a href="#">其他界面
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="about.html">关于我们</a></li>
                                        <li><a href="testimonials.html">推荐</a></li>
                                        <li><a href="pricing.html">定价和计划</a></li>
                                        <li><a href="order-form.html">订单表格</a></li>
                                        <li><a href="faq.html">常见问题/解答</a></li>
                                        <li><a href="404.html">404 Error</a></li>
                                        <li><a href="coming-soon.html">即将推出</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">服务
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="services.html">品类保洁</a></li>
                                        <li><a href="service-details.html">日常保洁</a></li>
                                        <li><a href="service-details.html">保姆</a></li>
                                        <li><a href="service-details.html">月嫂</a></li>
                                        <li><a href="service-details.html">育儿嫂</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Projects
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="projects-grid.html">Projects Grid</a></li>
                                        <li><a href="projects-grid-fullwidth.html">Projects Fullwidth</a></li>
                                        <li><a href="project-details.html">Project Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Shop
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="shop.html">Shop Grid</a></li>
                                        <li><a href="product-details.html">Product Details</a></li>
                                        <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Blog
                                    <i class="arrow_carrot-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog.html">Blog List</a></li>
                                        <li><a href="blog-sidebar.html">Blog With Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </nav>
                    </div>

                    <!--mobile-menu-->
                    <div class="d-hidden mobile-menu">
                        <nav id="mobile-menu">
                            <ul class="list-none">
                                <li><a href="#">首页</a>
                                    <ul>
                                        <li><a href="index.html">Home Default</a></li>
                                        <li><a href="index-2.html">Home With Caculator</a></li>
                                        <li><a href="index-3.html">Home With Booking</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Pages</a>
                                    <ul>
                                        <li><a href="about.html">About Us</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                        <li><a href="pricing.html">Pricing & Plan</a></li>
                                        <li><a href="order-form.html">Order Form</a></li>
                                        <li><a href="faq.html">FAQS</a></li>
                                        <li><a href="404.html">404 Error</a></li>
                                        <li><a href="coming-soon.html">Coming soon</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Services</a>
                                    <ul>
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="service-details.html">Service Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Projects</a>
                                    <ul>
                                        <li><a href="projects-grid.html">Projects Grid</a></li>
                                        <li><a href="projects-grid-fullwidth.html">Projects Fullwidth</a></li>
                                        <li><a href="project-details.html">Project Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Shop</a>
                                    <ul>
                                        <li><a href="shop.html">Shop Grid</a></li>
                                        <li><a href="product-details.html">Product Details</a></li>
                                        <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="checkout.html">Checout</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Blog</a>
                                    <ul>
                                        <li><a href="blog.html">Blog List</a></li>
                                        <li><a href="blog-sidebar.html">Blog With Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!--mobile logo-->
                    <div class="d-hidden mobile-logo">
                        <div class="logo">
                            <a href="index.html"><img src="assets/images/logo.png" alt=""/></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-6">
                    <div class="cart-search text-right">
                        <ul class="list-none">
                            <li class="ml-25"><a href="#">登陆</a></li>
                            <li class="ml-25"><a href="#">注册</a></li>

                            <li class="mmenu-icon"><a href="#mobile-menu"><i class="icon_menu"></i></a></li>
                            <li class="minicart-icon"><a href="#"><i class="lnr lnr-cart"></i></i><span>2</span></a>
                                <div class="cart-dropdown">
                                    <ul class="list-none">
                                        <li>
                                            <div class="mini-cart-thumb">
                                                <a href="#"><img src="assets/images/products/cart/1.jpg" alt=""/></a>
                                            </div>
                                            <div class="mini-cart-heading">
                                                <h5><a href="#">Cleaning Mop</a></h5>
                                                <small>Qty: 02</small>
                                                <span>$29.00</span>
                                            </div>
                                            <div class="mini-cart-remove">
                                                <button><i class="icon_close"></i></button>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="minicart-total fix">
                                        <ul class="list-none">
                                            <li>
                                                <span>SHIPPING:</span>
                                                <span>$0.00</span>
                                            </li>
                                            <li>
                                                <span>TOTAL:</span>
                                                <span>$34.50</span>
                                            </li>
                                        </ul>
                                    </div>
<%--                                    按钮--%>
                                    <div class="mini-cart-checkout">
                                        <a href="shopping-cart.html" class="btn-common">VIEW CARD</a>
                                        <a href="checkout.html" class="btn-common checkout mt-10">CHECK OUT</a>
                                    </div>
                                </div>
                            </li>
                            <li class="ml-25"><a href="#" class="search-icon"><i class="lnr lnr-magnifier"></i></a>
                                <div class="search-box">
                                    <input type="text" placeholder="Enter Keyword..."/>
                                    <button><i class="lnr lnr-magnifier"></i></button>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<%--</nav>--%>
</body>
</html>
