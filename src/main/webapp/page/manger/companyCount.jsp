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
<%--<div align="center">渠道量统计</div>--%>
<div align="center">
    请选择结束月份<input type="month" id="changedate">
    <input type="button" value="重置" id ="reset">
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
        $('#changedate').val(new Date());
    });

    //近半年
    function getHalfYear(date){
        var date1 = format(date,'yyyy-MM');
        var date2 = getPreMonth(date1);
        var date3 = getPreMonth(date2);
        var date4 = getPreMonth(date3);
        var date5 = getPreMonth(date4);
        var date6 = getPreMonth(date5);
        $.ajax({
            async:true,
            type:"post",
            url:"<%=path%>manager/getFirmCount.action",
            dataType:"json",
            data:{
                "date":date1+"-01"
            },
            success:function(data){
                console.log(data);
                var a = [date6,date5,date4,date3,date2,date1];
                var d = [];
                var c = 0;
                var e = [];
                //循环计数
                var i = 0;
                $.each(data["1"],function(key,value){
                    c=c+value;
                    d[i]=value;
                    i++;
                });
                var i = 0;
                $.each(data["2"],function(key,value){
                    e[i]=value;
                    i++;
                });
                c='近半年入驻公司量为：'+c;
                createcharts(a,d,c,e);
            }
        }) ;
    };

    //创建图形
    function createcharts(a,d,c,e){

        console.log(d);
        console.log(e);
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据

        var option = {
            title: {
                text:c
            },
            tooltip: {},
            legend: {
                //菜单位置
                // x : 'right',
                data:['入驻公司数','总数'],
                itemWidth: 40,             // 图例图形宽度
                itemHeight: 28,            // 图例图形高度
            },
            xAxis: {
                data: a
            },
            yAxis: {},
            series: [{
                name: '入驻公司数',
                type: 'bar',
                data: d
            },{
                name: '总数',
                type: 'bar',
                data: e
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

    };

    /**
     * 获取上一个月
     *
     * @date 格式为yyyy-mm-dd的日期，如：2014-01-25
     */
    function getPreMonth(date) {
        var arr = date.split('-');
        var year = arr[0]; //获取当前日期的年份
        var month = arr[1]; //获取当前日期的月份
        var day = arr[2]; //获取当前日期的日
        var days = new Date(year, month, 0);
        days = days.getDate(); //获取当前日期中月的天数
        var year2 = year;
        var month2 = parseInt(month) - 1;
        if (month2 == 0) {//如果是1月份，则取上一年的12月份
            year2 = parseInt(year2) - 1;
            month2 = 12;
        }
        // var day2 = day;
        // var days2 = new Date(year2, month2, 0);
        // days2 = days2.getDate();
        // if (day2 > days2) {//如果原来日期大于上一月的日期，则取当月的最大日期。比如3月的30日，在2月中没有30
        //     day2 = days2;
        // }
        if (month2 < 10) {
            month2 = '0' + month2;//月份填补成2位。
        }
        var t2 = year2 + '-' + month2;
        return t2;
    }
    $('#changedate').change(function () {
        getHalfYear($('#changedate').val())
    })
    $('#reset').click(function () {
        $('#changedate').val(null);
        getHalfYear(new Date());
    })

</script>
</body>

</html>
