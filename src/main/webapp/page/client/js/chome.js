/**
 * 轮播图
 */
layui.use('carousel', function () {
    var carousel = layui.carousel;

    var b = 1920 / 460
    var W = $(window).width();//窗口宽度
    var H = $(window).height();//窗口高度
    //建造实例
    carousel.render({
        elem: '#sliderarea'
        , width: '100%'   //设置容器宽度
        , height: '400'
        , arrow: 'hover'  //始终显示箭头
        , autoplay: true   //自动切换
        , interval: 3000     //自动切换速度
        // ,anim: 'updown' //切换动画方式
    });

});


/**
 * <!-- 发送短信验证码倒计时-->
 */
var InterValObj; //timer变量，控制时间
var count = 60; //间隔函数，1秒执行
var curCount;//当前剩余秒数
function sendMessage() {
    curCount = count;
    $("#btn").attr("disabled", "true");
    $("#btn").val(curCount + "秒后可重新发送");
    InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次请求后台发送验证码 TODO
}

//timer处理函数
function SetRemainTime() {

    if (curCount == 0) {
        stopTime();
    } else {
        curCount--;
        $("#btn").val(curCount + "秒后可重新发送");
    }
}

function stopTime() {
    window.clearInterval(InterValObj);//停止计时器
    $("#btn").removeAttr("disabled");//启用按钮
    $("#btn").val("重新发送验证码");
}

/**
 * //发送手机验证码
 */
$("#btn").click(function () {
    layui.use('layer', function () {
        var userphone = $("#userphone").val();
        var az = /^1(3|4|5|7|8)\d{9}$/;
        if (az.test(userphone)) {

            sendMessage();
            $.ajax({
                async: true, //true不异步，false异步
                type: "post", //提交方式
                url: "../../serial/sendSms.action",
                data: {
                    "userphone": userphone
                },
                // dataType:"text", //返回类型
                success: function (jso) {//执行结果
                    if ("OK" == jso) {
                        layer.msg("验证码发送成功");
                    } else if ("phoneerr" == jso) {
                        layer.msg("手机号未注册");
                        stopTime();
                    } else {
                        layer.msg("验证码发送失败");
                        stopTime();
                    }
                },
                error: function (jso) {
                    layer.msg("验证码发送失败");
                    stopTime();
                }
            });

        } else {
            layer.msg("手机号输入不正确");
        }
    })
})

//电话表单
function valname() {
    var userphone = $("#userphone");
    var uerr = $("#userphoneerr");
    var az = /^1(3|4|5|7|8)\d{9}$/;
    if (!az.test(userphone.val())) {
            uerr.html("电话号码输入不正确");
        return false;
    } else {
            uerr.html("");
        return true;
    }
}

//密码
function valpass() {
    var userpwd = $("#userpwd");
    var passErr = $("#passErr");
    var pz = /^[a-zA-Z]\w{5,17}$/;
    if (!pz.test(userpwd.val())) {
        passErr.html("以字母开头，长度在6~18之间，只能包含字母、数字和下划线");
        return false;
    } else {
        passErr.html("");
        return true;
    }
}

//二次密码
function valpass2() {

    var userpwd = $("#userpwd");
    var userpwd2 = $("#userpwd2");
    var passErr2 = $("#passErr2");
    if (userpwd2.val() === userpwd.val()) {
        passErr2.html("");
        return true;
    } else {
        passErr2.html("两次密码不一致");
        return false;
    }
}

//提交验证----------------------登陆用
function valForm() {

    if (valname() == true && valpass() == true) {
        return true;
    } else {
        return false;
    }
}

$(function () {
    //点击图片更换验证码
    $("#verclo").click(function () {
        $("#Verify").attr("src", "../../serial/getimage.action?timestamp=" + new Date().getTime());
    });
});

//用户名
function uname() {
    var username = $("#username");
    var useerr = $("#useerr");
    var na = /^[\u4e00-\u9fa5]{0,}$/;
    if (!na.test(username.val())) {
        useerr.html("用户名只能输入中文");
        return false;
    } else {
        useerr.html("");
        return true;
    }
}

//银行卡
function bankcard() {
    var usercard = $("#usercard");
    var cardErr = $("#cardErr");
    var reg = /^(\d{16}|\d{19})$/;
    if (!reg.test(usercard.val())) {
        cardErr.html("请有效银行卡号");
        return false;
    } else {
        cardErr.html("");
        return true;
    }
}

//地址
function scity() {
    var sc = $("#s_county");
    var cityerr = $("#cityerr")

    if (sc.val() == "市、县级市") {
        cityerr.html("请选择地址");
        return false;
    }

    cityerr.html("");
    var scontext = $("#scontext")
    var scontexterr = $("#scontexterr");
    var va = scontext.val();
    var len = va.length;
    if (len <= 0) {
        scontexterr.html("请输入详细地址");
        return false;
    }
    scontexterr.html("");
    return true;
}

function reqsubmit() {

    if (!valname() == true) {
        return false;
    }
    if (!uname == true) {
        return false;
    }
    if (!valpass() == true) {
        return false;
    }
    if (!valpass2 == true) {
        return false;
    }
    if (!bankcard == true) {
        return false;
    }
    var flog = scity();
    if (!flog) {
        return false;
    }


    return true;
}

/**
 * 忘记密码
 */
function forgot() {

    if (forg()) {
        layui.use('layer', function () {

            var self = $("form");
            $.ajax({
                async: true,
                type: "post", //提交方式
                url: self.attr("action"), //提交的地址（ self.attr("action")为form中的action地址）
                data: self.serialize(), //获得表单的信息
                // dataType:"text", //返回类型
                success: function (jso) {//执行结果
                    if (jso.flog == "OK") {
                        layer.msg("修改成功，准备跳转登陆界面")
                        location.href = "signin.jsp";
                    } else if (jso.flog == "codeerr") {
                        layer.msg("验证码错误")
                    } else if (jso.flog == "notphone") {
                        layer.msg("手机号未注册")
                    } else {
                        layer.msg("修改失败")
                    }
                },
            });
        })
    }
}

function forg() {

    if (valname == false) {
        return false;
    }
    if (valpass == false) {
        return false;
    }
    if (valpass2 == false) {
        return false;
    }
    return true;
}

function getct() {
    var ctid = $("#ctid");
    var cosid = $("#cosid");
    $.ajax({
        async: true,
        type: "post", //提交方式
        url: "../../admin/queryCOSType.action",
        // dataType:"text", //返回类型
        success: function (jso) {//执行结果
            var ht = "<option value='0'>选择服务类型</option>";
            $.each(jso, function (k, v) {
                ht += "<option value='" + v.ctid + "' >" + v.ctname + "</option>";
            })
            ctid.html(ht);
            cosid.html("选择服务事项");
        },
    })
}

$(document).ready(function () {
    var cosid=$("#cosid");
    $("#ctid").change(function () {
        cosid.html("服务事项载入中。。。");
        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "../../admin/queryCOS.action",
            data:{
                "ctid":$("#ctid").val()
            },
            // dataType:"text", //返回类型
            success: function (jso) {//执行结果
                var ht="";
                $.each(jso,function(k,v){
                    ht+="<option value='"+ v.cosid +"' >"+ v.cosname +"</option>";
                })
                cosid.html(ht);
            }
        })

    })
})


/**
 * 发布需求
 */
function addOrder() {

    layui.use('layer', function () {
        var ctid = $("#ctid");
        var cosid = $("#cosid");
        var self = $("form");
        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "../../admin/addOrder.action",
            data: self.serialize(), //获得表单的信息
            // dataType:"text", //返回类型
            success: function (jso) {//执行结果
                if (jso.flog == "addok") {
                    layer.msg("发布成功")
                } else {
                    layer.msg("发布失败")
                }
            },
        })
    })
}

$(document).ready(function(){
    $("#addor").click(function(){
        if(biaoti()==true&&dianh()==true&&tcos()==true&&yaoqiu()==true){
            addOrder();
        }
    })
})

//标题的正则
function biaoti() {
    var otitle = $("#otitle");
    var na = /^[\u4E00-\u9FA5A-Za-z0-9_]+$/;
        if (!na.test(otitle.val())) {
            layui.use('layer', function () {
            layer.msg("请检查标题，标题只能中文、英文、数字包括下划线");
            })
            return false;
        } else {
            return true;
        }
}
//发布需求电话表单
function dianh() {
    var ophone = $("#ophone");
    var az = /^1(3|4|5|7|8)\d{9}$/;
    if (!az.test(ophone.val())) {
        layui.use('layer', function () {
            layer.msg("电话号码输入不正确");
        })
        return false;
    } else {
        return true;
    }
}
//需求
function yaoqiu() {
    var ocontext = $("#ocontext");
    var na = /^[\u4E00-\u9FA5A-Za-z0-9_]+$/;
    if (!na.test(ocontext.text())) {
        layui.use('layer', function () {
            layer.msg("请检查需求，只能中文、英文、数字包括下划线");
        })
        return false;
    } else {
        return true;
    }
}

function tcos() {
    var ctid=$("#ctid");
    if(ctid.val()!=0){
        return true;
    }
    layui.use('layer', function () {
        layer.msg("请选择服务");
    })
    return false;
}

/**
 * 查询地址
 */
function querySity(){
    layui.use('layer', function () {
        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "../../admin/querySite.action",
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

//选择阿姨并下单
function Appointord() {

    layui.use('layer', function () {
        var self = $("form");
        $.ajax({
            async: true,
            type: "post", //提交方式
            url: "../admin/addOrder2.action",
            data: self.serialize(), //获得表单的信息
            // dataType:"text", //返回类型
            success: function (jso) {//执行结果
                if (jso.flog == "addok") {
                    layer.msg('发布成功', {
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        location.href="../page/client/chome.jsp";
                    });

                } else if(jso.flog=="moneyerr"){
                    layer.msg("余额不足请充值")
                }else{
                    layer.msg("发布失败")
                }
            },
        })
    })

}

function upuse() {
    if(!upph()){
        return false;
    }
    if(!upname()){
        return false;
    }
    return true;
}

function upph() {
    var userphone = $("#userphone");
    var az = /^1(3|4|5|7|8)\d{9}$/;
    if (!az.test(userphone.val())) {
        alert("电话号码输入不正确");
        return false;
    } else {
        return true;
    }
}

function upname() {
    var username = $("#username");
    var na = /^[\u4e00-\u9fa5]{0,}$/;
    if (!na.test(username.val())) {
        alert("用户名只能输入中文");
        return false;
    } else {
        return true;
    }
}

