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
    <title>Blog Details - HomeCleaner</title>
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
<div class="page-banner-area bg-2">
    <div class="container">
        <div class="row height-400 align-items-center"></div>
    </div>
</div>
<!--page-banner-end-->

<!--blog-area start-->
<div class="blog-area pt-120 pt-sm-80 pb-120 pb-sm-80">
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
            <div class="col-lg-8 mt-sm-60">
                <div class="pl-20">
                    <div class="blog-details pb-90 bb-e5e5e5">
                        <div class="blog-title">
                            <h2>The Top 3 Germiest Places in Your Office</h2>
                        </div>
                        <div class="blog-date-time mb-45 mb-sm-25">
                            <ul class="list-none">
                                <li>Author: <a href="#">Caleigh Jerde</a></li>
                                <li>Date: <a href="#">15 November 2018</a></li>
                            </ul>
                        </div>
                        <p>While we all might breathe a collective sigh of relief when flu season is over that does not mean the germs just fade away into the summer sunlight. Unfortunately, germs and illness can still be spread regardless of the season. Here are some of the surprising spots within your office that contain germs.</p>
                        <div class="img-radius mt-65 mb-50">
                            <img src="assets/images/blog/details/1.jpg" alt="" />
                        </div>
                        <h3>1. Computer keyboards</h3>
                        <p>The workplace keyboard can have more than 200 times as many bacteria as a toilet seat.  To begin with, it is often touched throughout the day, so wherever those fingers have been,  it’s likely the computer keyboard has been there too. It is also the perfect surface for catching sneezes and all the times people cough while sitting at their desk, either into their hands or out in the open.</p>
                        <blockquote class="blockquote">It's no surprise - we eat at our desks, drop all sorts of things on our keyboards and rarely wash our hands before we start using the computer. <strong>Caleigh Jerde</strong></blockquote>
                        <h3>2. Telephones</h3>
                        <p>Think of all the different people in a single day who are touching the phone with the hands while their putting their mouth near it as they speak. It was estimated that there are 25,000 germs per square inch that can live on the workplace telephone.</p>
                        <h3>3. Break Room Sink Faucet Handles</h3>
                        <p>In a study by Kimberly-Clark Professionals, 75% of break room sink faucet handles were found to be extremely dirty and at high risk for spreading illness, while 91% needed to be cleaned overall. You might have noticed a trend: Most of the dirtiest places in your office are surfaces that are meant to be handled, but that don’t get cleaned very often.</p>
                        <p>Other seriously dirty germ hotspots in your office are:</p>
                        <div class="row mt-30 mb-20">
                            <div class="col-lg-6">
                                <ul class="list-none icon-circle">
                                    <li>Fridge door handles</li>
                                    <li>Water fountain buttons</li>
                                    <li>Vending machine buttons</li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul class="list-none icon-circle">
                                    <li>Computer mice</li>
                                    <li>Phones</li>
                                    <li>Coffee pot handles</li>
                                </ul>
                            </div>
                        </div>
                        <p>Buttons, door knobs, handles, and other places that are touched by lots of people are hubs where germs and contaminants spread. That’s why keeping your office well cleaned is so important!</p>

                        <div class="row mt-62">
                            <div class="col-lg-6 blog-tags">
                                <i class="icon_tags_alt"></i>
                                <a href="#">Cleaning,</a>
                                <a href="#">Window,</a>
                                <a href="#">Office</a>
                            </div>
                            <div class="col-lg-6 social-icons text-right">
                                <span>Share: </span>
                                <a href="#"><i class="social_facebook"></i></a>
                                <a href="#"><i class="social_twitter"></i></a>
                                <a href="#"><i class="social_linkedin"></i></a>
                                <a href="#"><i class="social_pinterest"></i></a>
                            </div>
                        </div>
                        <div class="author-bio mt-55">
                            <div class="author-thumb">
                                <img src="assets/images/blog/authors/4.png" alt="" />
                            </div>
                            <div class="author-desc">
                                <h5>Caleigh Jerde <span>Author</span></h5>
                                <p>Caleigh Jerde is a writer and producer for TIME Healthland. She is a graduate from the Northwestern University Medill School of Journalism.</p>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-80 mb-50">
                        <div class="col-lg-12">
                            <h3>You May Also Like</h3>
                        </div>
                    </div>
                    <div class="row blog-two-carousel bb-e5e5e5">
                        <div class="col-lg-6">
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
                        <div class="col-lg-6">
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
                        <div class="col-lg-6">
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
                    </div>
                    <div class="row mt-80 mt-sm-60">
                        <div class="col-lg-12">
                            <div class="blog-comments">
                                <h3>3 Comments</h3>
                                <ul class="list-none">
                                    <li class="has-reply">
                                        <div class="comment-avatar">
                                            <img src="assets/images/blog/comment/1.png" alt="" />
                                        </div>
                                        <div class="comment-desc">
                                            <div class="comment-name-date">
                                                <h4>Lisa Mack</h4>
                                                <small>28 April 2018 at  5:35 am</small>
                                            </div>
                                            <p>Excellent article Zuzana and really like the Slideshare. Which of the 3 do you think would rank as the worst for the spread of infections?</p>
                                            <div class="comment-reaction">
                                                <a href="#"><i class="arrow_back"></i>Reply</a>
                                            </div>
                                        </div>
                                        <ul class="list-none">
                                            <li>
                                                <div class="comment-avatar">
                                                    <img src="assets/images/blog/comment/2.png" alt="" />
                                                </div>
                                                <div class="comment-desc">
                                                    <div class="comment-name-date">
                                                        <h4>Yoshiko Mraz</h4>
                                                        <small>28 April 2018 at  5:35 am</small>
                                                    </div>
                                                    <p>Hi Lisa Mack. Thank you! Out of the 3 Most Germiest Places, I think Computer keyboards is the worst for the spread of infections primarily</p>
                                                    <div class="comment-reaction">
                                                        <a href="#"><i class="arrow_back"></i>Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <div class="comment-avatar">
                                            <img src="assets/images/blog/comment/3.png" alt="" />
                                        </div>
                                        <div class="comment-desc">
                                            <div class="comment-name-date">
                                                <h4>Kole Bednar</h4>
                                                <small>28 April 2018 at  5:35 am</small>
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
                    <div class="blog-comment-form mt-80 mt-sm-60">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-title">
                                    <h3><span>Leave A Comment</span></h3>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-40">
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Comment"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Name:* ">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email:* ">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Website: ">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <button class="btn-common mt-15">SUBMIT COMMENT</button>
                            </div>
                        </div>
                    </div>
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

