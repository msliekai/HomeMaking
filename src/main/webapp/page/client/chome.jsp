<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/20
  Time: 10:05
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
    <title>HomeCleaner - Home One</title>
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

<!--header-starts-->

<!--header-top-->
<jsp:include page="top1.jsp" flush="true"/>
<!--header-bottom-->
<jsp:include page="top2.jsp" flush="true"/>
<!--header-ends-->

<!--slider-area start-->
<%--后续这里改掉img的地址--%>
<div class="layui-carousel divimg" lay-filter="test1" id="sliderarea">
    <div carousel-item>
        <div ><img src="<%=path%>page/client/img/M.jpg" ></div>
        <div ><img src="<%=path%>page/client/img/M.jpg" ></div>
        <div><img src="<%=path%>page/client/img/M.jpg" ></div>
        <div><img src="<%=path%>page/client/img/M.jpg" ></div>
        <div><img src="<%=path%>page/client/img/M.jpg" ></div>
    </div>
</div>
<!--slider-area end-->

<!--services-area start-->
<div class="services-area bg-f3f4f7 pt-108 pt-sm-68 pb-105 pb-sm-65">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Our Main Services</h2>
                    <p>With an outstanding reputation for quality, integrity and service, <br/> we can clean anything
                        you throw at us!</p>
                </div>
            </div>
        </div>
        <div class="row services-carousel mt-65 mt-sm-55">
            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/1.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>Home Cleaning</h4>
                        <p>Imagine coming home to a completely clean, fresh smelling home after a long day of work. You
                            didn't have to lift a finger...</p>
                        <a href="#" class="btn-common">READ MORE</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/2.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>Office Cleaning</h4>
                        <p>We provide full office cleaning services from highly trained staff. Offering businesses after
                            hours daily office cleaning..</p>
                        <a href="#" class="btn-common">READ MORE</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/3.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>Window Cleaning</h4>
                        <p>Contract us for ongoing window cleaning services and we can make sure your building is always
                            sparkling whatever the weather...</p>
                        <a href="#" class="btn-common">READ MORE</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/1.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>Home Cleaning</h4>
                        <p>Imagine coming home to a completely clean, fresh smelling home after a long day of work. You
                            didn't have to lift a finger...</p>
                        <a href="#">READ MORE</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--services-area end-->

<!--about-area start-->
<div class="about-area pt-105 pt-sm-65 pb-70 pb-sm-45">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Why choose HomeCleaner?</h2>
                    <p>We know you have a lot of choices when it comes to choosing who to clean <br/> your home, here
                        are some reasons to consider CleanPro.</p>
                </div>
            </div>
        </div>
        <div class="row mt-60 mt-sm-50 align-items-center">
            <div class="col-lg-4 col-sm-6">
                <div class="service-single text-right">
                    <i class="lnr lnr-lock"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and
                        work-history verified.</p>
                </div>
                <div class="service-single text-right">
                    <i class="lnr lnr-smile"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and
                        work-history verified.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 ds-sm-none">
                <img src="<%=path%>page/client/assets/images/about/1.jpg" alt=""/>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service-single">
                    <i class="lnr lnr-bubble"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and
                        work-history verified.</p>
                </div>
                <div class="service-single">
                    <i class="lnr lnr-tag"></i>
                    <h4>Professional and Secure</h4>
                    <p>No one steps foot on your property until they have been background checked, drug screened, and
                        work-history verified.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--about-area end-->

<!--projects-area start-->
<div class="projects-area bg-f3f4f7 pt-105 pt-sm-65">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Selected Projects</h2>
                    <p>Here are a few of many projects we have completed for our customers. <br/> We provide a
                        professional service</p>
                </div>
            </div>
        </div>
        <div class="row mt-68 mt-sm-58">
            <div class="col-lg-12">
                <div class="projects-nav text-center">
                    <ul class="nav nav-tabs">
                        <li><a class="active" data-toggle="tab" href="#house">House</a></li>
                        <li><a data-toggle="tab" href="#office">Office</a></li>
                        <li><a data-toggle="tab" href="#garden">Garden</a></li>
                        <li><a data-toggle="tab" href="#apartment">Apartment</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-content mt-50">
            <!--single-tab-->
            <div id="house" class="tab-pane active">
                <div class="row projects-carousel">
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/2.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Garden Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/3.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Road Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/4.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Factory Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--single-tab-->
            <div id="office" class="tab-pane fade">
                <div class="row projects-carousel">
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/4.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Factory Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/3.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Road Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/2.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Garden Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--single-tab-->
            <div id="garden" class="tab-pane fade">
                <div class="row projects-carousel">
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/2.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Garden Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/3.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Road Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/4.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Factory Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--single-tab-->
            <div id="apartment" class="tab-pane fade">
                <div class="row projects-carousel">
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/4.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Factory Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/3.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Road Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/2.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Garden Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 plr-0">
                        <div class="project-single">
                            <div class="project-thumb">
                                <img src="<%=path%>page/client/assets/images/projects/1.jpg" alt=""/>
                            </div>
                            <div class="project-caption">
                                <small>Office Cleaning</small>
                                <a href="project-details.html" class="btn-common">View Project</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--projects-area end-->

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

<!--testimonial-area start-->
<div class="testimonial-area pt-105 pt-sm-65 pb-100 pb-sm-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Testimonials & Partners</h2>
                    <p>We rigorously vet all of our Cleaners, please see a selection of quotes from our <br/> Channel
                        Partners below.</p>
                </div>
            </div>
        </div>
        <div class="row mt-65 align-items-center">
            <div class="col-lg-6">
                <div class="testimonial-items">
                    <div class="testimonial-single style-1 text-center">
                        <div class="testimonial-thumb">
                            <img src="<%=path%>page/client/assets/images/testimonials/1.png" alt=""/>
                            <div class="quote-icon">
                                <img src="<%=path%>page/client/assets/images/testimonials/quote-icon.png" alt=""/>
                            </div>
                        </div>
                        <p>Wonderful! Not only were they kind and did a terrific job, but most importantly, one employee
                            found nearly $200 in cash in my dad's pockets. My dad has Alzheimer's and loses money
                            constantly. She handed me the money directly which meant a lot to me. A great business with
                            great employees. Thank you so much!</p>
                        <h5>Caleigh Jerde</h5>
                        <small>Physician</small>
                    </div>
                    <div class="testimonial-single style-1 text-center">
                        <div class="testimonial-thumb">
                            <img src="<%=path%>page/client/assets/images/testimonials/2.png" alt=""/>
                        </div>
                        <p>Wonderful! Not only were they kind and did a terrific job, but most importantly, one employee
                            found nearly $200 in cash in my dad's pockets. My dad has Alzheimer's and loses money
                            constantly. She handed me the money directly which meant a lot to me. A great business with
                            great employees. Thank you so much!</p>
                        <h5>Caleigh Jerde</h5>
                        <small>Physician</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="brand-items">
                    <ul class="list-none">
                        <li><img src="<%=path%>page/client/assets/images/brands/1.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/2.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/3.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/4.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/5.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/6.jpg" alt=""/></li>
                    </ul>
                    <ul class="list-none">
                        <li><img src="<%=path%>page/client/assets/images/brands/6.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/5.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/4.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/3.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/2.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/1.jpg" alt=""/></li>
                    </ul>
                    <ul class="list-none">
                        <li><img src="<%=path%>page/client/assets/images/brands/1.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/2.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/3.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/4.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/5.jpg" alt=""/></li>
                        <li><img src="<%=path%>page/client/assets/images/brands/6.jpg" alt=""/></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--testimonial-area end-->

<!--package-area start-->
<div class="package-area bg-f3f4f7 pt-100 pt-sm-60 pb-120 pb-sm-80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Calculated Form</h2>
                    <p>This unique tool allows you to easily create price estimation forms to give your <br/> client
                        idea of the cost of your service.</p>
                </div>
            </div>
        </div>
        <div class="row calculate-form mt-60 mt-sm-50">
            <div class="col-lg-6 col-sm-6">
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Choose your service</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                        <option>Choose</option>
                        <option>Home Cleaning</option>
                        <option>Office Cleaning</option>
                        <option>Window Cleaning</option>
                    </select>
                </div>
                <div class="price_filter mt-40">
                    <div class="price_slider_amount">
                        <div class="row align-items-center">
                            <div class="col-lg-10">
                                <div id="service-range"></div>
                            </div>
                            <div class="col-lg-2 mt-sm-20">
                                <input type="text" id="square-feets" name="price" placeholder="Add Your Price"
                                       readonly/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Cleaning frequency</label>
                    <select class="form-control" id="exampleFormControlSelect2">
                        <option>Choose</option>
                        <option>Upholstery Cleaning</option>
                        <option>Carpet Cleaning</option>
                        <option>Clutter Cleanup</option>
                    </select>
                </div>
                <div class="price_filter mt-40">
                    <div class="price_slider_amount">
                        <div class="row align-items-center">
                            <div class="col-lg-10">
                                <div id="cleaning-frequency"></div>
                            </div>
                            <div class="col-lg-2 mt-sm-20">
                                <input type="text" id="total-workers" name="price" placeholder="Add Your Price"
                                       readonly/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row package-carousel mt-45 mt-sm-35">
            <div class="col-lg-4">
                <div class="package-single">
                    <h4>STANDARD</h4>
                    <h2>$100.00</h2>
                    <h5>/ per month</h5>
                    <ul class="list-none">
                        <li>3 Bedrooms cleaning</li>
                        <li>Vacuuming</li>
                        <li>2 Bathroom cleaning</li>
                        <li>Mirror Cleaning</li>
                        <li>1 Livingroom cleaning</li>
                        <li>Window Sills</li>
                    </ul>
                    <a href="#" class="btn-common width-150">BOOK ONLINE</a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="package-single">
                    <h4>PREMIUM</h4>
                    <h2>$150.00</h2>
                    <h5>/ per month</h5>
                    <ul class="list-none">
                        <li>5 Bedrooms cleaning</li>
                        <li>Vacuuming</li>
                        <li>2 Bathroom cleaning</li>
                        <li>Mirror Cleaning</li>
                        <li>1 Livingroom cleaning</li>
                        <li>Window Sills</li>
                    </ul>
                    <a href="#" class="btn-common width-150">BOOK ONLINE</a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="package-single">
                    <h4>ENTERPRISE</h4>
                    <h2>$200.00</h2>
                    <h5>/ per month</h5>
                    <ul class="list-none">
                        <li>7 Bedrooms cleaning</li>
                        <li>Vacuuming</li>
                        <li>2 Bathroom cleaning</li>
                        <li>Mirror Cleaning</li>
                        <li>1 Livingroom cleaning</li>
                        <li>Window Sills</li>
                    </ul>
                    <a href="#" class="btn-common width-150">BOOK ONLINE</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--package-area end-->

<!--blog-area start-->
<div class="blog-area pt-103 pt-sm-63 pb-60 pb-sm-20">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Latest News</h2>
                    <p>Read some of our latest stories from across the LeanPro organization below, and then <br/> browse
                        our archive to learn more about projects from years past.</p>
                </div>
            </div>
        </div>
        <div class="row blog-carousel mt-65 mt-sm-55">
            <div class="col-lg-4">
                <div class="blog-single">
                    <div class="blog-thumb">
                        <a href="#"><img src="<%=path%>page/client/assets/images/blog/1.jpg" alt=""/></a>
                    </div>
                    <div class="blog-desc">
                        <small>28 April 2018</small>
                        <h4><a href="#">Which Cleaning Service Is Best For You?</a></h4>
                        <p>We’ve been in the cleaning industry long enough to know that while not everyone needs a
                            bi-weekly housecleaning...</p>
                        <div class="blog-author">
                            <img src="<%=path%>page/client/assets/images/blog/authors/1.png" alt=""/>
                            <small>By<a href="#"><strong>Caleigh Jerde</strong></a></small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog-single">
                    <div class="blog-thumb">
                        <a href="#"><img src="<%=path%>page/client/assets/images/blog/2.jpg" alt=""/></a>
                    </div>
                    <div class="blog-desc">
                        <small>28 April 2018</small>
                        <h4><a href="#">How To Clean Grout and Remove Stains</a></h4>
                        <p>This has to be one of the most tedious and time-consuming household chores ever. Although the
                            actual customer and the provider job is a pain...</p>
                        <div class="blog-author">
                            <img src="<%=path%>page/client/assets/images/blog/authors/2.png" alt=""/>
                            <small>By<a href="#"><strong>Will Marvin</strong></a></small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog-single">
                    <div class="blog-thumb">
                        <a href="#"><img src="<%=path%>page/client/assets/images/blog/3.jpg" alt=""/></a>
                    </div>
                    <div class="blog-desc">
                        <small>28 April 2018</small>
                        <h4><a href="#">The Three Rules of Maid Service Etiquette</a></h4>
                        <p>Every service industry has a list of do’s and don’ts to make sure both the customer and the
                            provider can benefit from the relationship...</p>
                        <div class="blog-author">
                            <img src="<%=path%>page/client/assets/images/blog/authors/3.png" alt=""/>
                            <small>By<a href="#"><strong>Katlynn Pouros</strong></a></small>
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
                        <input type="text" placeholder="Your Email*"/>
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
                        <img src="<%=path%>page/client/assets/images/footer/logo.png" alt=""/>
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
