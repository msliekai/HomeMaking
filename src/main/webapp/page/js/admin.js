// JavaScript Document

// ------------时间-------------------
function tim() {
	var tdate = new Date();
	var year = tdate.getFullYear();
	var m = tdate.getMonth() + 1;
	var d = tdate.getDate();
	var h = tdate.getHours();
	var mi = tdate.getMinutes();
	var s = tdate.getSeconds();
	var datestr = year + "年" + m + "月" + d + "日" + h + "时" + mi + "分" + s + "秒";
	document.getElementById("thtime").innerHTML = datestr;

}

function opentime() {
	setInterval(tim, 1000);
}

// -------------------表格颜色------------(就近原则不会影响内嵌样式)----

$(document).ready(function() {
		$("tr:even").css("backgroundColor", "#F2F2F2");// 偶数
		$("tr:odd").css("backgroundColor", "#00A0D8");// 奇数
	
});

// ----------------鼠标改变表格颜色-----------------------
// 当鼠标覆盖到相关单元格时所触发的事件
function changeOver(elementId) {
	$(elementId).css("background", "#CCCCCC");
};

// 当鼠标离开相关单元格时所触发的事件

$(document).ready(function() {
		$("#tabee").mouseout(function() {
		$("tr:even").css("backgroundColor", "#F2F2F2");// 偶数
		$("tr:odd").css("backgroundColor", "#00A0D8");// 奇数
	});
});

//-------ajax登陆-----
function login(){
	var accz = /^[a-zA-Z0-9_-]{4,16}$/;
	var pwdz = /^(_|.|\W|\w){3,10}$/;
	if ($('#img').val()==null||$('#img').val()=="") {
		alert("请输入验证码");
		return;
	}else if (!(accz.test( $("#username").val()))) {
		alert("请输入正确账号");
		return;
	} else if (!(pwdz.test( $("#userpwd").val()))) {
		alert("请输入正确密码");
		return;
	} else {
		var form=$("form");
		$.ajax({
			async:false,//false异步,true不异步
			type:"post",
			url:form.attr("action"),//attr()获取表单内容
			data:form.serialize(),
			dataType:"text",
			//执行结果
			success:function(data){
				if("1"==data){
					//跳转
					
					if ("adminForm"==form.attr("id")) {
						alert("登陆成功！");
						top.location.href="/webproject/admin/baseindex.jsp";
					}else {
						alert("欢迎使用！");
						top.location.href="/webproject/index/index.jsp";
					}
				}else if("2"==data){
					alert("密码或用户名错误");
				}else if("0"==data){
					alert("账号状态异常");
				}else if("3"==data){
					alert("验证码有误");
				}
				return;
			},
		});
	}
		
	};





