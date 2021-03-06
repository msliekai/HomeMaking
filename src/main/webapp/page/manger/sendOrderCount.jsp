<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>渠道统计</title>
    <%
        String path = request.getContextPath() + "/";
    %>
    <link href="<%=path%>page/layui/css/layui.css" rel="stylesheet"
          type="text/css">
<%--    <link href="<%=path%>css/form1.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" href="<%=path%>page/jqueryui/jquery-ui.min.css">
    <script src="<%=path%>page/js/jquery.min.js"></script>
    <script src="<%=path%>page/jqueryui/jquery-ui.min.js"></script>
    <script src="<%=path%>page/layui/layui.js"></script>
    <script src="<%=path%>page/js/admin.js"></script>
    <!-- 引入 echarts.js -->
    <script src="<%=path %>page/js/echarts.min.js"></script>
<%--    <script src="<%=path%>page/layui/laydate/laydate.js"></script>--%>
</head>

<body>
<div align="center">渠道量统计</div>
<div align="center">
    请选择结束月份<input type="date" id="changedate">
    <input type="button" value="重置" id ="reset">
</div>

</div>
<div align="center">
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 100%;height:400px;" align="center"></div>
</div>
<script>
    //封装时间格式
    function format(time, format) {
        var t = new Date(time);
        var tf = function (i) {
            return (i < 10 ? '0' : '') + i
        };
        return format.replace(/yyyy|MM|dd/g, function (a) {
            switch (a) {
                case 'yyyy':
                    return tf(t.getFullYear());
                    break;
                case 'MM':
                    return tf(t.getMonth() + 1);
                    break;
                case 'dd':
                    return tf(t.getDate());
                    break;
            }
        })
    }
</script>
<script type="text/javascript">

    //ajax
    $(document).ready(function(){
        getHalfYear(new Date());
    });

    //近半年
    function getHalfYear(date){
        var date1 = format(date,'yyyy-MM-dd');
        var date2 = getNextDate(date1,-1);
        var date3 = getNextDate(date2,-1);
        var date4 = getNextDate(date3,-1);
        var date5 = getNextDate(date4,-1);
        var date6 = getNextDate(date5,-1);
        var date7 = getNextDate(date6,-1);
        $.ajax({
            async:true,
            type:"post",
            url:"<%=path%>manager/getSendOrderCount.action",
            dataType:"json",
            data:{
                "date":date1,
            },
            success:function(data){
                console.log(data);
                var a = [date7,date6,date5,date4,date3,date2,date1];
                var d = [];
                var c = 0;
                //循环计数
                var i = 0;
                $.each(data,function(key,value){
                    c=c+value;
                    d[i]=value;
                    i++;
                });
                c='近一周发布订单量为：'+c;
                createcharts(a,d,c);
            }
        }) ;
    };

    //创建图形
    function createcharts(a,d,c){

        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据

        var option = {
            title: {
                text:c
            },
            // 区域缩放控制器
            dataZoom: {
                orient: 'horizontal',      // 布局方式，默认为水平布局，可选为：
                                           // 'horizontal' ¦ 'vertical'
                // x: {number},            // 水平安放位置，默认为根据grid参数适配，可选为：
                // {number}（x坐标，单位px）
                // y: {number},            // 垂直安放位置，默认为根据grid参数适配，可选为：
                // {number}（y坐标，单位px）
                // width: {number},        // 指定宽度，横向布局时默认为根据grid参数适配
                // height: {number},       // 指定高度，纵向布局时默认为根据grid参数适配
                backgroundColor: 'rgba(0,0,0,0)',       // 背景颜色
                dataBackgroundColor: '#eee',            // 数据背景颜色
                fillerColor: 'rgba(144,197,237,0.2)',   // 填充颜色
                handleColor: 'rgba(70,130,180,0.8)'     // 手柄颜色
            },
            // 网格
            grid: {
                x: 80,
                y: 60,
                x2: 80,
                y2: 60,
                // width: {totalWidth} - x - x2,
                // height: {totalHeight} - y - y2,
                backgroundColor: 'rgba(0,0,0,0)',
                borderWidth: 1,
                borderColor: '#ccc'
            },

            tooltip: {},
            legend: {
                //菜单位置
                // x : 'right',
                data:['用户'],
                itemWidth: 40,             // 图例图形宽度
                itemHeight: 28,            // 图例图形高度
            },
            xAxis: {
                data: a
            },
            yAxis: {},
            series: [{
                name: '用户',
                type: 'bar',
                data: d
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

    };

    $('#changedate').change(function () {
        console.log( $('#changedate').val() );
        getHalfYear($('#changedate').val());
    })
    $('#reset').click(function () {
        $('#changedate').val(null);
        getHalfYear(new Date());
    })
    function getNextDate(date,day) {
        var dd = new Date(date);
        dd.setDate(dd.getDate() + day);
        var y = dd.getFullYear();
        var m = dd.getMonth() + 1 < 10 ? "0" + (dd.getMonth() + 1) : dd.getMonth() + 1;
        var d = dd.getDate() < 10 ? "0" + dd.getDate() : dd.getDate();
        return y + "-" + m + "-" + d;
    };
</script>
</body>

</html>
