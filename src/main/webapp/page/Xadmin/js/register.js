function register() {
	var username_regex = /^[\u4E00-\u9FA5]{1,5}$/;
	var password_regex = /^(_|.|\W|\w){3,10}$/;
	var iphone_regex =/^1\d{10}$/;
	var age_regex = /^(?:[1-9]?\d|100)$/;
	var uacc_regex = /^[a-zA-Z0-9_-]{4,16}$/;
	var sitez=/^[\u4e00-\u9fa5]{0,}$/;
	var user_name = document.getElementById("uname").value;
	var user_acc = document.getElementById("uacc").value;
	var user_password = document.getElementById("password").value;
	var user_password_confirm = document.getElementById("password2").value;
	var user_age = document.getElementById("uage").value;
	var user_tel = document.getElementById("uph").value;
	var user_site = document.getElementById("uad").value;
	var register_error_info = document.getElementById("register_error_info");
	if (user_acc == null || user_acc.length == 0) {
		$("#uacc_news").text("账号不为空！") ;
		return false;
	}
	if ((uacc_regex.test(user_acc)) == false) {
			$("#uacc_news").text("账号格式不正确！") ;
			return false;
	}
	if (user_name == null || user_name.length == 0) {
		$("#uname_news").text("姓名不为空！") ;
		return false;
	}else {
		$("#uname_news").text("√") ;
	}
	if ((username_regex.test(user_name)) == false) {
		$("#uname_news").text("姓名格式错误，请输入1-5个中文字符") ;
		return false;
	}else {
		$("#uname_news").text("√") ;
	}

	if (user_password == null || user_password.length == 0) {
		$("#password_news").text("密码不为空！") ;
		return false;
	}else {
		$("#password_news").text("√") ;
	}
	
	if (user_password_confirm == null || user_password_confirm.length == 0) {
		$("#password2_news").text("确认密码不为空！") ;
		return false;
	}else {
		$("#password2_news").text("√") ;
	}

	
	if ((password_regex.test(user_password)) == false) {
		$("#password_news").text("密码格式错误，至少为3位，特殊符号只能用'_'和'.'") ;
		return false;
	}else {
		$("#password_news").text("√") ;
	}

	if (!(user_password == user_password_confirm)) {
		$("#password2_news").text("两次密码不一致！") ;
		return false;
	}else {
		$("#password2_news").text("√") ;
	}
	if (age_regex.test(user_age) == false) {
		$("#uage_news").text("年龄只能在0-100之间");
		return false;
	}else {
		$("#uage_news").text("√") ;
	}
	if (iphone_regex.test(user_tel) == false) {
		$("#uph_news").text("电话必须11位数字且有效");
		return false;
	}else {
		$("#uph_news").text("√") ;
	}
	  if(!sitez.test(user_site)){
		  $("#uad_news").text("地址必须是汉字");
	   return false;
	  }else {
		  $("#uad_news").text("√");
	}
	  if(30<user_site.length){
		  $("#uad_news").text("地址不得超过30个字");
	   return false;
	  }else {
		  $("#uad_news").text("√");
		}
	  if (($("#uacc_news").text())!="该账号可以使用") {
		  alert("该账号不可以使用");
		  return false;
	}
	  return true;
		
}

$(document).ready(function(){
	$("#uacc").blur(function(){
		var uacc_regex = /^[a-zA-Z0-9_-]{4,16}$/;
		var user_acc = $("#uacc").val();
		if (user_acc == null || user_acc.length == 0) {
			$("#uacc_news").text("账号不为空！") ;
		}else {
			if (uacc_regex.test(user_acc)) {
				$.ajax({
					url:"/webproject/RegisterServlet",
					type:"POST",
					data:{"action":"checkn","name":$("#uacc").val()},
					success:function(data){
						if (data=="1") {
							$("#uacc_news").text("该账号可以使用") ;
							alert("该账号可以使用");
						}else { 
							$("#uacc_news").text("该账号不可使用") ;
							alert("该账号不可使用");
						}
					},
					error:function(){}
				});
			}else {
				$("#uacc_news").text("账号格式不正确！") ;
			}
			
		}
		
		
	});
});