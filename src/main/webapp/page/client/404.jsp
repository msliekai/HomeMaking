<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path=request.getContextPath()+"/";%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>404 - HomeCleaner</title>
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
<!--header-ends-->

<!--404-area start-->
<div class="error-msg-area display-table">
    <div class="vertical-middle">
        <div class="container">
            <div class="row  align-items-center">
                <div class="col-lg-12">
                    <div class="error-img text-center">
                        <img src="assets/images/404.png" alt="" />
                    </div>
                    <div class="error-msg text-center mt-20">
                        <h1>Ooops! That page doesn't exist!</h1>
                        <p>You might searching our site, or starting at our home page</p>
                        <a href="index.html" class="btn-common mt-40 mt-sm-20">BACK TO HOME PAGE</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--404-area end-->

<!--footer-area start-->
<jsp:include page="bottom.jsp" flush="true"/>
<!--footer-area end-->

<!-- modernizr js -->
<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
<!-- jquery-3.4.1 version -->
<script src="assets/js/vendor/jquery-3.4.1.min.js"></script>
<!-- jquery-migrate-3.1.0.min.js version -->
<script src="assets/js/vendor/jquery-migrate-3.1.0.min.js"></script>
<!-- bootstra.min js -->
<script src="http://cdn.bootstrapmb.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- mmenu js -->
<script src="assets/js/jquery.mmenu.js"></script>
<!-- jquery-ui.min js -->
<script src="assets/js/jquery-ui.min.js"></script>
<!---slick-js-->
<script src="assets/js/slick.min.js"></script>
<!---counterup-js-->
<script src="assets/js/jquery.counterup.min.js"></script>
<!---waypoints-js-->
<script src="assets/js/waypoints.js"></script>
<!---isotop-js-->
<script src="assets/js/isotope.pkgd.min.js"></script>
<!-- jquery.countdown js -->
<script src="assets/js/jquery.countdown.min.js"></script>
<!---venobox-js-->
<script src="assets/js/venobox.min.js"></script>
<!-- plugins js -->
<script src="assets/js/plugins.js"></script>
<!-- main js -->
<script src="assets/js/main.js"></script>

</body>
</html>

