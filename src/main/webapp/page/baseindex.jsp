
<%@ page import="com.hm.entity.Tblmenu" %>
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
<%--	<link rel="stylesheet" href="<%=path%>page/src/css/layui.css" media="all">--%>
<%--	<script src="<%=path%>page/src/layui.js"></script>--%>
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
									<c:forEach items="${map.childTblmenus}" var="scm">
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
	<script>
	<%--聊天--%>
	var userid = "${company.fphone}";
	var uname =  "${company.fname}";
	var system ={};
	var p = navigator.platform;
	system.win = p.indexOf("Win") == 0;
	system.mac = p.indexOf("Mac") == 0;
	system.x11 = (p == "X11") || (p.indexOf("Linux") == 0);
	// if (system.win||system.mac||system.xll) {
	var socket = null;
	//连接websocket的ip地址
	var ip = "crm.natapp1.cc";
	//动态修改查
	var im = {
	init: function () {
	if ('WebSocket' in window) {
	var socketUrl = "ws://localhost:8080/HomeMaking_war_exploded/websocketTest/" + '${company.fphone}';
	socket = new WebSocket(socketUrl);
	im.startListener();
	} else {
	alert('当前浏览器不支持WebSocket功能，请更换浏览器访问。');
	}
	},
	startListener: function () {
	console.log(socket);
	if (socket) {
	// 连接发生错误的回调方法
	socket.onerror = function () {
	console.log("通讯连接失败!");
	};
	// 连接成功建立的回调方法
	socket.onopen = function (event) {
	console.log("通讯连接成功");
	}
	// 接收到消息的回调方法
	socket.onmessage = function (event) {
	console.log("通讯接收到消息");
	im.handleMessage(event.data);
	}
	// 连接关闭的回调方法
	socket.onclose = function () {
	console.log("通讯关闭连接！!");
	}
	}
	},
	handleMessage: function (msg) {
	console.log(msg);
	if(msg=="1"){
	layer.msg("该聊天对象不在线，请电话联系！");
	}else {
	msg = JSON.parse(msg);
	layim.getMessage(msg);
	}
	}
	};
	im.init();
	layui.use('layim', function(layim){
	var $ = layui.jquery;
	window.layim = layim;
	layim.config({
	brief: true //是否简约模式（如果true则不显示主面板）
	});
	layim.on('sendMessage', function(data){
	var To = data.to;
	console.log(data);
	console.log(data.to);
	if(To.type === 'friend'){
	// layim.setChatStatus('<span style="color:#FF5722;">对方正在输入。。。</span>');
	}
	console.log(data.mine.content);
	socket.send(To.id+"-f,t-"+data.mine.content+"-f,t-"+userid+"-f,t-"+uname);
	});
	//面板外的操作
	var $ = layui.jquery, active = {
	chat: function(data){
	alert(data);
	var id =data;
	//自定义会话
	layim.chat({
	name: id
	,type: 'friend'
	// ,avatar: '//tva3.sinaimg.cn/crop.0.0.180.180.180/7f5f6861jw1e8qgp5bmzyj2050050aa8.jpg'
	,id: id
	});
	}
	};
	$('.site-demo-layim').on('click', function(){
	var type = $(this).data('type');
	active[type] ? active[type].call(this, $(this).data('toggle')) : '';
	});
	});
	</script>
</body>
</html>