<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/9/21
  Time: 19:26
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
    <title>提交订单</title>
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
                    <h2>我要预约</h2>
<%--                    <div class="site-breadcrumb">--%>
<%--                        <nav aria-label="breadcrumb">--%>
<%--                            <ol class="breadcrumb">--%>
<%--                                <li class="breadcrumb-item"><a href="#">Home</a></li>--%>
<%--                                <li class="breadcrumb-item"><a href="#">Pages</a></li>--%>
<%--                                <li class="breadcrumb-item active" aria-current="page">Checkout</li>--%>
<%--                            </ol>--%>
<%--                        </nav>--%>
<%--                    </div>--%>
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
            <form action="<%=path%>">
            <div class="col-lg-8">
                <div class="cart-checkout">
                    <h3>账单详细信息</h3>

                    <div class="row mt-35">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="otitle">标题</label>
                                <input type="text" id="otitle" name="otitle" class="form-control">
                            </div>
                        </div>

<%--                        <div class="col-lg-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="username">称呼<span>*</span></label>--%>
<%--                                <input type="text" id="username" name="username" class="form-control" value="${sessionScope.userbacc.username}">--%>
<%--                            </div>--%>
<%--                        </div>--%>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="ophone">电话<span>*</span></label>
                                <input type="text" id="ophone" name="ophone" class="form-control" value="${sessionScope.userbacc.userphone}">
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="sid">地址</label>
                                <select class="form-control" id="sid" name="sid">
                                </select>
                            </div>
                        </div>

<%--                        <div class="col-lg-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="s_province">省</label>--%>
<%--                                <select class="form-control" id="s_province" name="sa"></select>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="s_city">市</label>--%>
<%--                                <select class="form-control" id="s_city" name="sb">--%>

<%--                                </select>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-6">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="s_county">区</label>--%>
<%--                                <select class="form-control" id="s_county" name="sc">--%>

<%--                                </select>--%>
<%--&lt;%&ndash;加载城市下拉框&ndash;%&gt;--%>
<%--                                <script class="resources library" src="<%=path%>page/client/js/city-data.js"--%>
<%--                                        type="text/javascript"></script>--%>

<%--                                <script type="text/javascript">_init_area();</script>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="col-lg-12">--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="scontext">详细地址</label>--%>
<%--                                <input type="text" id="scontext" name="scontext" class="form-control">--%>
<%--                            </div>--%>
<%--                        </div>--%>

                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="ocontext">其他要求</label>
                                <textarea class="form-control" id="ocontext" name="ocontext"></textarea>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart-box cart-total mt-sm-60">
                    <h3>你的订单</h3>
                    <div class="cart-total-inner mt-45">
                        <table class="first-table">
                            <tr>
                                <td><h5>服务</h5></td>
                                <td class="text-right"><h5>合计</h5></td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="ctid">⚪服务类型</label>
                                    <select class="form-control" id="ctid" name="ctid" >
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="cosid">⚪服务事项</label>
                                    <select class="form-control" id="cosid" name="cosid">
                                    </select>
                                </td>
                            </tr>

                        </table>
                        <table class="second-table">
                            <tr>
                                <td><h5>合计:</h5></td>
                                <td class="text-right"><span id="money">费用待确认</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="proceed-checkout mt-30">
                        <input type="button" class="btn-common" id="addor" value="提交（请在选择完后提交）">
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
</div>
<!--checkout-area end-->

<!--footer-area start-->
<jsp:include page="bottom.jsp" flush="true"/>
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
<%--城市--%>
<script class="resources library" src="<%=path%>page/client/js/city-data.js" type="text/javascript"></script>

<%--我的js--%>
<script src="<%=path%>page/client/js/chome.js"></script>

</body>

<script>
    $(document).ready(function(){
        $("#sid").ready(function(){
            querySity(this);
        })
    })
    $(document).ready(function(){
        getct();
    })

    /**
     * 获得地址
     */
    function querySity(){
        layui.use('layer', function () {
            $.ajax({
                async: true,
                type: "post", //提交方式
                url: "<%=path%>admin/querySite.action",
                success: function (jso) {//执行结果
                    var ht="";
                    if(jso.defaulAddress!=null){
                        var defaul=jso.defaulAddress;
                        ht+="<option value='"+ defaul.sid +"' >"+ defaul.sa+"-"+defaul.sb+"-"+defaul.sc+"-"+defaul.scontext+"（默认地址）</option>";
                    }

                    $.each(jso.list,function(k,v){
                        ht+="<option value='"+ v.sid +"' >"+ v.sa+"-"+v.sb+"-"+v.sc+"-"+v.scontext+"</option>";
                    })
                    $("#sid").html(ht);
                },
            })
        })
    }
</script>
</html>
