<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/10/2
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>

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