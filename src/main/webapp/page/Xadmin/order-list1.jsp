<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/8/26
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath() + "/";
%>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>文档配置</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-nav"><span class="layui-breadcrumb"> <a href="">首页</a> <a href="">演示</a> <a> <cite>文档配置</cite></a> </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新"> <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>文档配置</legend>
</fieldset>
<div class="layui-card-header">
    <button class="layui-btn" onclick="xadmin.open('添加','./suffix-add.jsp',600,400)"><i class="layui-icon"></i>添加
    </button>
</div>
<hr/>
<div class="demo-transfer" id="test1"></div>
</body>
<script>
    layui.use(['transfer', 'layer', 'util'], function () {
        var $ = layui.$
            , transfer = layui.transfer
        // ,layer = layui.layer
        // ,util = layui.util;

        $.ajax({
            type: "post"
            , url: "<%=path%>queryAction/queryFileType.action"
            , dataType: "json"
            , success: function (dat) {
                var va=[];
                var count=0;
                $.each(dat,function (k,v){
                    if(v.sid==2){
                        va[count]=v.ftid;
                        count++;
                    }
                })
                re(dat,va);
            },

            error: function (dat) {
                layer.msg('裂开，你是不是把服务器炸了');
            }
        })


        //基础效果
        function re(datas,va){
            transfer.render({
                elem: '#test1'
                , title: ['未启用', '启用']  //自定义标题
                , data: datas
                ,value:va
                ,parseData: function(res){
                    return {
                        "value": res.ftid //数据值
                        ,"title": res.ftname //数据标题
                    }
                }
            })
        }

    });


</script>
</html>