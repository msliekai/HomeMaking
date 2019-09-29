<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/20
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath() + "/";
%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LK家政</title>
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

    <%--layui--%>
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

<!--轮播 start-->
<%--后续这里改掉img的地址--%>
<div class="layui-carousel divimg" lay-filter="test1" id="sliderarea">
    <div carousel-item>
        <div><img src="<%=path%>page/client/img/weixin01.jpg"></div>
        <div><img src="<%=path%>page/client/img/M.jpg"></div>
        <div><img src="<%=path%>page/client/img/qq01.png"></div>
        <div><img src="<%=path%>page/client/img/M.jpg"></div>
        <div><img src="<%=path%>page/client/img/M.jpg"></div>
    </div>
</div>
<!--轮播 end-->

<!--主要服务1 start-->
<div class="services-area bg-f3f4f7 pt-108 pt-sm-68 pb-105 pb-sm-65">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <p>
                        搜索：<input type="text" id="aunt" name="aunt" />
                        <button class="layui-btn layui-btn-normal" onclick="x()"><i class="lnr lnr-magnifier"></i>
                        </button>
                    </p>
                    <h2>我们的主要服务</h2>
                    <hr/>
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
                        <h4>日常保洁</h4>
                        <a href="<%=path%>page/client/shopa.jsp?aunt='日常保洁'" class="btn-common">查看详情</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/2.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>品类保洁</h4>
                        <a href="<%=path%>page/client/shopa.jsp?aunt='品类保洁'" class="btn-common">查看详情</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/3.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>保姆</h4>
                        <a href="<%=path%>page/client/shopa.jsp?aunt='保姆'" class="btn-common">查看详情</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/4.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>月嫂</h4>
                        <a href="<%=path%>page/client/shopa.jsp?aunt='月嫂'" class="btn-common">查看详情</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="service-single text-center">
                    <div class="service-thumb">
                        <img src="<%=path%>page/client/assets/images/services/5.jpg" alt=""/>
                    </div>
                    <div class="service-desc">
                        <h4>育儿嫂</h4>
                        <a href="<%=path%>page/client/shopa.jsp?aunt='育儿嫂'" class="btn-common">查看详情</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!--主要服务1 end-->

<!--热门服务-->
<div class="blog-area pt-103 pt-sm-63 pb-60 pb-sm-20">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>热门</h2>
                </div>
            </div>
        </div>

        <div class="row blog-carousel mt-65 mt-sm-55" >
            <div id="whot"></div>

        </div>
    </div>
</div>
<!--热门服务 end-->

<!--projects-area start-->
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


<!--blog-area start-->
<div class="blog-area pt-103 pt-sm-63 pb-60 pb-sm-20">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>育婴知识</h2>
                    <p><a>更多文章</a></p>
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
                        <h4>关于我们</h4>
                        <p>我们为所有客户提供完整的套餐。</p>
                        <ul class="list-none">
                            <li>
                                <i class="lnr lnr-map-marker"></i>
                                福建省厦门市软件园二期传一科技
                            </li>
                            <li>
                                <i class="lnr lnr-phone-handset"></i>
                                (+0592) 1234567
                            </li>
                            <li>
                                <i class="lnr lnr-envelope"></i>
                                cykj@126.com
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget">
                        <h4>我们的服务</h4>
                        <ul class="list-none">
                            <li> </i>日常保洁</li>
                            <li> </i>品类保洁</li>
                            <li> </i>保姆</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget latest-posts">
                        <h4>我们的服务</h4>
                        <ul class="list-none">
                            <li> </i>月嫂</li>
                            <li> </i>育儿嫂</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget subscribe-form">
                        <h4>意见反馈</h4>
                        <p>2211334466@126.com</p>
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
                        <p>&copy; 2019 家庭清洁。保留所有权利。由lk开发</p>
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


<%--layui--%>
<script src="<%=path%>page/layui/layui.js"></script>
<!-- modernizr js -->
<script src="<%=path%>page/client/assets/js/vendor/modernizr-3.6.0.min.js"></script>
<!-- jquery-3.4.1 version -->
<script src="<%=path%>page/client/assets/js/vendor/jquery-3.4.1.min.js"></script>
<!-- jquery-migrate-3.1.0.min.js version -->
<script src="<%=path%>page/client/assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>
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



<script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ" type="text/javascript"></script>
<script src="<%=path%>page/client/js/baidumap.js"></script>
</body>

<script>
    function x() {
        var va = $('#aunt').val();
        location.href = '<%=path%>page/client/shopa.jsp?aunt=' + va;
    }


    $(document).ready(function ({}) {
        $.ajax({
            url: "<%=path%>admin/thwWelcome.action",
            type: "POST",
            dataType: "json",
            success: function (obj) {
                console.log(obj);
                var hothtml="";
                $.each(obj,function(k,v){
                    if("hot"==k){
                        $.each(v,function (hk, hv) {
                            console.log(hk);
                            console.log(hv);
                            hothtml+="<div class='col-lg-4'><div class='blog-single'><div class='blog-thumb'>";
                            // hothtml+="<a href='#'><img src='<%=path%>page/client/assets/images/blog/1.jpg' alt=''/></a></div>";
                            hothtml+="<div class='blog-desc'>";
                            hothtml+="<h4><a href='#'>服务："+hk+"</a></h4>";
                            hothtml+="<small></small> ";
                            $.each(hv,function(bk,obj){
                                hothtml+="<p>公司："+obj.fname+",完成单数："+obj.count+"</p>";
                            })
                            hothtml+="<div class='blog-author'>";
                            hothtml+="</div> </div> </div> ";
                            hothtml+="</div>";
                        })

                    }
                })
                $('#whot').html(hothtml);
            }
        })
    })
</script>
</html>
