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
<%--    <script src="<%=path%>page/src/layui.js"></script>--%>
    <%--    我的css--%>
    <link rel="stylesheet" href="<%=path%>page/client/css/chome.css">
    <%--layui--%>
    <script src="<%=path%>page/layui/layui.js"></script>

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
        <div><img src="<%=path%>page/client/img/01.jpg"></div>
        <div><img src="<%=path%>page/client/img/02.jpg"></div>
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
                        <button class="layui-btn layui-btn-normal" onclick="chong()">
                            <i class="lnr lnr-magnifier"></i></button>
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
                        <a href="<%=path%>page/client/shopa.jsp?aunt=日常保洁" class="btn-common">查看详情</a>
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
                        <a href="<%=path%>page/client/shopa.jsp?aunt=品类保洁" class="btn-common">查看详情</a>
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
                        <a href="<%=path%>page/client/shopa.jsp?aunt=保姆" class="btn-common">查看详情</a>
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
                        <a href="<%=path%>page/client/shopa.jsp?aunt=月嫂" class="btn-common">查看详情</a>
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
                        <a href="<%=path%>page/client/shopa.jsp?aunt=育儿嫂" class="btn-common">查看详情</a>
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

<%--        <div class="row blog-carousel mt-65 mt-sm-55" >--%>
            <div id="whot"></div>

<%--        </div>--%>

    </div>
</div>

<!--footer-area start-->
<jsp:include page="bottom.jsp" flush="true"/>
<!--footer-area end-->



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
<%--<script src="<%=path%>page/src/layui.js"></script>--%>
<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>

<script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ" type="text/javascript"></script>
<script src="<%=path%>page/client/js/baidumap.js"></script>
</body>

<script>
    function chong() {
        var va = $('#aunt').val();
        location.href = '<%=path%>page/client/shopa.jsp?aunt=' + va;
    }


    $(document).ready(function () {
        $.ajax({
            async: true,
            url: "<%=path%>admin/thwWelcome.action",
            type: "POST",
            dataType: "json",
            success: function (obj) {
                var hothtml="";
                $.each(obj,function(k,v){
                    if("hot"==k){
                        $.each(v,function (hk, hv) {
                            hothtml+="<div class='col-lg-4'>" +
                                        "<div class='blog-single'>" +
                                        "<div class='blog-thumb'>";
                            hothtml+="<div class='blog-desc'>";
                            hothtml+="<h4><a href='<%=path%>page/client/shopa.jsp?aunt="+hk+"'>服务："+hk+"</a></h4>";
                            hothtml+="<small></small> ";
                            $.each(hv,function(bk,obj){
                                hothtml+="<p>公司："+obj.fname+",完成单数："+obj.count+"</p>";
                            })
                            hothtml+="<div class='blog-author'>";
                            hothtml+="</div> " +
                                     "</div>" +
                                     "</div></div> ";
                            hothtml+="</div>";
                        })

                    }
                })
                $('#whot').html(hothtml);
            }
        })
    })
</script>
<script language="javascript">
    //防止页面后退
    history.pushState(null, null, document.URL);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, document.URL);
    });
</script>
</html>
