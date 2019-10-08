<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/10/1
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath() + "/";
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LK家政</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<%=path%>page/client/shopgrid/img/favicon.png">
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
    <!-- all css here -->
    <%--    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/animate.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/themify-icons.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/icofont.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/meanmenu.min.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/bundle.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/style.css">
    <link rel="stylesheet" href="<%=path%>page/client/shopgrid/css/responsive.css">
    <script src="<%=path%>page/client/shopgrid/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!--header-top-->
<jsp:include page="top1.jsp" flush="true"/>
<!--header-bottom-->
<jsp:include page="top2.jsp" flush="true"/>
<!--header-ends-->

<body>

<!-- header start -->
<!-- header end -->
<div class="product-details ptb-100 pb-90">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-7 col-12">
                <div class="product-details-img-content">
                    <div class="product-details-tab mr-70">
                        <div class="product-details-large tab-content">
                            <div class="tab-pane active show fade" id="pro-details1" role="tabpanel">
                                <div >
                                    <a href="<%=path%>page/client/shopgrid/img/product-details/bl1.jpg">
                                        <img src="<%=path%>${requestScope.staff.sfurl}" alt="">
                                    </a>
                                </div>
                            </div>

                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-5 col-12">
                <div class="product-details-content">
                    <h3>${requestScope.staff.sfname}</h3>
                    <div class="rating-number">
                        <div class="quick-view-number">
                            <span>星级：</span>
                        </div>
                        <div class="quick-view-rating">
                            <i class="pe-7s-star red-star"></i>
                            <i class="pe-7s-star red-star"></i>
                            <i class="pe-7s-star"></i>
                            <i class="pe-7s-star"></i>
                            <i class="pe-7s-star"></i>
                        </div>

                    </div>

<%--                    <p>擅长</p>--%>
<%--                    <p>唱跳</p>--%>
                    <div class="product-details-cati-tag mt-35">
                        <ul>
                            <li class="categories-title">服务类型 :</li>
                            <li><a>${requestScope.staff.tblCOStype.ctname}</a></li>
                        </ul>
                    </div>
                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">服务事项 :</li>
                            <li><a>${requestScope.staff.tblCOS.cosname}</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">服务经验 :</li>
                            <li><a>${requestScope.staff.sfexp}年</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">出生日期 :</li>
                            <li><a>${requestScope.staff.sfdob}</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">性别 :</li>
                            <li><a>${requestScope.staff.sfage}</a></li>
                        </ul>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <ul>
                            <li class="categories-title">公司 :</li>
                            <li><a>${requestScope.staff.company.fname}</a></li>
                            /公司地址：
                            <li><a>${requestScope.staff.company.fsite}</a></li>
                        </ul>
                    </div>

                    <div class="details-price">
                        <span>${requestScope.staff.sfcos}元/次</span>
                    </div>

                    <div class="product-details-cati-tag mtb-10">
                        <div class="layui-btn-group">

                            <button type="button" class="layui-btn">咨询</button>
                            <c:if test="${requestScope.staff.tblsfcoll==null}">
                                <button type="button" class="layui-btn layui-btn-warm" onclick="proCollections(${requestScope.staff.sfid})">收藏</button>
                            </c:if>
                            <c:if test="${requestScope.staff.tblsfcoll!=null}">
                                <button type="button" class="layui-btn layui-btn-warm" onclick="proDelcollections(${requestScope.staff.tblsfcoll.scoid})">取消收藏</button>
                            </c:if>

                        </div>
                    </div>

                </div>



            </div>

                <div>
                    <hr/>
                    <h3>我要预约</h3>
                    <form>
                        <input type="hidden" id="sfid" name="sfid" value="${requestScope.staff.sfid}"/>
                        <input type="hidden" id="cosid" name="cosid" value="${requestScope.staff.tblCOS.cosid}"/>
                        <input type="hidden" id="money" name="money" value="${requestScope.staff.sfcos}"/>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label for="sid">地址：</label>
                            <select class="form-control" id="sid" name="sid">
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="ophone">联系电话：</label>
                            <input type="text" id="ophone" name="ophone" class="form-control" value="${sessionScope.userbacc.userphone}">
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label for="ocontext">其他要求：</label>
                            <textarea class="form-control" id="ocontext" name="ocontext"></textarea>
                        </div>
                    </div>
                        <input type="button" class="layui-btn layui-btn-normal" onclick="Appointord()" value="确认预约"/>
                    </form>

                </div>
        </div>
    </div>
</div>
<div class="product-description-review-area pb-90">
    <div class="container">
        <div class="product-description-review text-center">
            <div class="description-review-title nav" role=tablist>
                <a class="active" href="#pro-dec" data-toggle="tab" role="tab" aria-selected="true">
                    Description
                </a>
                <a href="#pro-review" data-toggle="tab" role="tab" aria-selected="false">
                    Reviews (0)
                </a>
            </div>
            <div class="description-review-text tab-content">
                <div class="tab-pane active show fade" id="pro-dec" role="tabpanel">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in</p>
                </div>
                <div class="tab-pane fade" id="pro-review" role="tabpanel">
                    <a href="#">Be the first to write your review!</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product area start -->
<%--<div class="product-area pb-95">--%>
<%--    <div class="container">--%>
<%--        <div class="section-title-3 text-center mb-50">--%>
<%--            <h2>Related products</h2>--%>
<%--        </div>--%>
<%--        <div class="product-style">--%>
<%--            <div class="related-product-active owl-carousel">--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/1.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <span>hot</span>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/2.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/3.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <span>hot</span>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/4.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/5.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <span>hot</span>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/1.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="product-wrapper">--%>
<%--                    <div class="product-img">--%>
<%--                        <a href="#">--%>
<%--                            <img src="<%=path%>page/client/shopgrid/img/product/fashion-colorful/2.jpg" alt="">--%>
<%--                        </a>--%>
<%--                        <span>hot</span>--%>
<%--                        <div class="product-action">--%>
<%--                            <a class="animate-left" title="Wishlist" href="#">--%>
<%--                                <i class="pe-7s-like"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-top" title="Add To Cart" href="#">--%>
<%--                                <i class="pe-7s-cart"></i>--%>
<%--                            </a>--%>
<%--                            <a class="animate-right" title="Quick View" data-toggle="modal" data-target="#exampleModal"--%>
<%--                               href="#">--%>
<%--                                <i class="pe-7s-look"></i>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="product-content">--%>
<%--                        <h4><a href="#">Arifo Stylas Dress</a></h4>--%>
<%--                        <span>$115.00</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- product area end -->
    <jsp:include page="bottom.jsp" flush="true"/>
<!-- modal -->
<!-- modal -->
<%--<div class="modal fade" id="exampleCompare" tabindex="-1" role="dialog" aria-hidden="true">--%>
<%--    <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--        <span class="pe-7s-close" aria-hidden="true"></span>--%>
<%--    </button>--%>
<%--    <div class="modal-dialog modal-compare-width" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-body">--%>
<%--                <form action="#">--%>
<%--                    <div class="table-content compare-style table-responsive">--%>
<%--                        <table>--%>
<%--                            <thead>--%>
<%--                            <tr>--%>
<%--                                <th></th>--%>
<%--                                <th>--%>
<%--                                    <a href="#">Remove <span>x</span></a>--%>
<%--                                    <img src="<%=path%>page/client/shopgrid/img/cart/4.jpg" alt="">--%>
<%--                                    <p>Blush Sequin Top </p>--%>
<%--                                    <span>$75.99</span>--%>
<%--                                    <a class="compare-btn" href="#">Add to cart</a>--%>
<%--                                </th>--%>
<%--                            </tr>--%>
<%--                            </thead>--%>
<%--                            <tbody>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>Description </h4></td>--%>
<%--                                <td class="compare-dec compare-common">--%>
<%--                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem--%>
<%--                                        Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown--%>
<%--                                        printer took a galley</p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>Sku </h4></td>--%>
<%--                                <td class="product-none compare-common">--%>
<%--                                    <p>-</p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>Availability </h4></td>--%>
<%--                                <td class="compare-stock compare-common">--%>
<%--                                    <p>In stock</p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>Weight </h4></td>--%>
<%--                                <td class="compare-none compare-common">--%>
<%--                                    <p>-</p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>Dimensions </h4></td>--%>
<%--                                <td class="compare-stock compare-common">--%>
<%--                                    <p>N/A</p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>brand </h4></td>--%>
<%--                                <td class="compare-brand compare-common">--%>
<%--                                    <p>HasTech</p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>color </h4></td>--%>
<%--                                <td class="compare-color compare-common">--%>
<%--                                    <p>Grey, Light Yellow, Green, Blue, Purple, Black </p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"><h4>size </h4></td>--%>
<%--                                <td class="compare-size compare-common">--%>
<%--                                    <p>XS, S, M, L, XL, XXL </p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td class="compare-title"></td>--%>
<%--                                <td class="compare-price compare-common">--%>
<%--                                    <p>$75.99 </p>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                            </tbody>--%>
<%--                        </table>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


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
    <!-- all js here -->
    <script src="<%=path%>page/client/shopgrid/js/vendor/jquery-1.12.0.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/popper.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/bootstrap.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/isotope.pkgd.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/imagesloaded.pkgd.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/jquery.counterup.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/waypoints.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/ajax-mail.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/owl.carousel.min.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/plugins.js"></script>
    <script src="<%=path%>page/client/shopgrid/js/main.js"></script>
    <%--bootstrap分页--%>
    <script src="<%=path%>page/client/js/bootstrap-paginator.js"></script>
    <script src="<%=path%>page/client/js/pageing.js"></script>
    <%--layui--%>
    <script src="<%=path%>page/layui/layui.js"></script>
    <%--我的js--%>
    <script src="<%=path%>page/client/js/chome.js"></script>

    <script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ" type="text/javascript"></script>
    <script src="<%=path%>page/client/js/baidumap.js"></script>
</body>
<script>
    $(document).ready(function(){
        $("#sid").ready(function(){
            theSity();
        })
    })
    function theSity(){
        layui.use('layer', function () {
            $.ajax({
                async: true,
                type: "post", //提交方式
                url: "../admin/querySite.action",
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

