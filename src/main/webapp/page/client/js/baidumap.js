function mapre(){
    $.ajax({
        async: true,
        type: "post", //提交方式
        url: "../admin/addOrder2.action",
        data: self.serialize(), //获得表单的信息
        // dataType:"text", //返回类型
        success: function (jso) {//执行结果

        },
    });
    $("#ccypt").text("正在获取位置......");
    //创建百度地图控件
    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function (r) {
        if (this.getStatus() == BMAP_STATUS_SUCCESS) {
            //以指定的经度与纬度创建一个坐标点
            var pt = new BMap.Point(r.point.lng, r.point.lat);
            //创建一个地理位置解析器
            var geoc = new BMap.Geocoder();
            geoc.getLocation(pt, function (rs) {//解析格式：城市，区县，街道
                var addComp = rs.addressComponents;
                // alert(addComp.city + ", " + addComp.district + ", " + addComp.street)
                $("#ccypt").text(addComp.city + ", " + addComp.district + ", " + addComp.street);
                // $(ev.currentTarget).text(addComp.city + ", " + addComp.district + ", " + addComp.street);

            });
        } else {
            $("#ccypt").text('定位失败');
        }
    }, {enableHighAccuracy: true})//指示浏览器获取高精度的位置，默认false
}

mapre();