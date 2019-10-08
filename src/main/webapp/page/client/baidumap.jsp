<%--
  Created by IntelliJ IDEA.
  User: HANG
  Date: 2019/10/7
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>

<head>

    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>地址选择</title>

    <style type="text/css">

        body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";font-size:14px;}

        #l-map{height:500px;width:100%;}

        #r-result{width:100%;}

    </style>

    <script src="http://api.map.baidu.com/api?v=2.0&ak=ivzd6zdhLMevro9rnMKrYuGsYd4rrYvZ"
            type="text/javascript"></script>

</head>



<body>

<div class="mui-content">
    <div class="mui-input-row mui-search">
        <input id="suggestId" type="search" class="mui-input-clear" placeholder="地址检索">
    </div>
    <!--百度地图显示框-->
    <div id="l-map"></div>
    <!--地址列表-->
    <div id="r-result"></div>
    <!--地图中心的图钉-->
    <div id="map_pin">
        <a><span class="mui-icon mui-icon-plusempty"></span></a>
    </div>
</div>

<script>
    var map = new BMap.Map("l-map");            // 创建Map实例
    map.centerAndZoom(basePoint,14);//设置中心位置
    map.addEventListener("moveend",showCurrentPoi);//设置地图移动监听

    function showCurrentPoi()
    {
        var center = map.getCenter();
        var mOption = {
            poiRadius : 500,           //半径为1000米内的POI,默认100米
            numPois : 12                //列举出50个POI,默认10个
        }
        var myGeo = new BMap.Geocoder();
        myGeo.getLocation(center, function mCallback(rs){
            var allPois = rs.surroundingPois;       //获取全部POI（该点半径为100米内有6个POI点）
            var content = "";
            content = " <ul class='mui-table-view mui-table-view-radio'> ";
            for(i=0;i<allPois.length;++i){
                title[i] = allPois[i].title;
                address[i] = allPois[i].address;
                city[i] = allPois[i].city;
                points[i] = allPois[i].point;
                content = content +
                    "<li class='mui-table-view-cell'>"+
                    "<a class='mui-navigate-right'>"+
                    "<div id='icon-location' class='mui-media-object mui-pull-left'><span class='mui-icon mui-icon-location-filled'></span></div>"+
                    "<div class='mui-media-body'><span class='points_title'>" + title[i] + "</span><p class='mui-ellipsis points_address'>" + address[i] + "</p>"+
                    "<p class='points_other_details display_none' city_name="+city[i]+" lng="+points[i].lng+" lat="+points[i].lat+"></p>"+
                    "</div></a></li>";

            }
            content = content + " </ul>";
            document.getElementById("r-result").innerHTML = content;
        },mOption);
    }

</script>
</body>

</html>
