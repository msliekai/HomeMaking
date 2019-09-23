<%@ page import="com.hm.entity.User" %>
<%@ page import="com.hm.entity.Menu" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
<%String path = request.getContextPath() + "/";%>
<link rel="stylesheet" type="text/css" href="<%=path%>page/layui/css/layui.css">
</head>

<body class="layui-layout-body">

	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">码上行动</div>


			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul  class="layui-nav layui-layout-left">
				<li id="thtime" class="layui-nav-item"><a href="">时间
                </a></li>
 
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> 
				<!-- <img src="http://t.cn/RCzsdCq" class="layui-nav-img">  -->
<%--					<s:property value="user.username"/>| <s:property value="#session.user.username"/>--%>
				 </a>
				</li>
				
				<li class="layui-nav-item">
				<a  onclick="tips('/webproject/BackstageServlet?where=loginout')">注销</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul id="leftmenu" class="layui-nav layui-nav-tree" lay-filter="test">
					<c:forEach items="${umenu}" var="map">
<%--						父级菜单有地址--%>
						<c:if test="${map.mfid==0 and not empty map.murl}">
							<li class="layui-nav-item layui-nav-itemed">
								<a href="<%=path %>${map.murl}" target="main">${map.mname}</a>
							</li>
						</c:if>
<%--						父级菜单无地址--%>
						<c:if test="${map.mfid==0 and empty map.murl}">
							<li class="layui-nav-item layui-nav-itemed">
								<a class="" href="javascript:;">${map.mname}</a>
								<dl class="layui-nav-child">
									<c:forEach items="${map.childMenus}" var="scm">
										<dd>
											<c:if test="${scm.murl!=null}">
												<a href="<%=path %>${scm.murl}" target="main">${scm.mname}</a>
											</c:if>
											<c:if test="${scm.murl==null}">
												<c:forEach items="${scm.childMenus}" var="tcm">
													<dd>
														<c:if test="${tcm.murl!=null}">
															<a href="<%=path %>${tcm.murl}" target="main">${tcm.mname}</a>
														</c:if>
														<c:if test="${tcm.murl==null}">
															<a href="javascript:;" target="main">${tcm.mname}</a>
														</c:if>
													</dd>
												</c:forEach>
											</c:if>

										</dd>
									</c:forEach>
									<!--子菜单添加位置-->
								</dl>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域,连接后面加target="main"就可以了（和frameset一样） -->
			<iframe name="main" style="width: 100%; height: 100%;">
            </iframe>
		</div>

		<!-- <div class="layui-footer">
			底部固定区域
			© layui.com - 底部固定区域
		</div> -->
	</div>
	<script src="<%=path%>page/layui/layui.js"></script>

	<script src="<%=path%>page/js/jquery.min.js"></script>
	<!-- js -->
	<script src="<%=path%>page/js/admin.js"></script>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
		//开始计时
		window.onload = opentime();
		
		function tips(a) {
			  if (confirm("确定要退出?")) {
			   location.href = a;
			   alert("已退出");
			  } else {
			   alert("已取消");
			  }
			 }
	</script>
</body>
</html>