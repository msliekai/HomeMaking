function mapre(){

    $.ajax({
        async: true,
        type: "post", //提交方式
        url: "../../admin/myMap.action",
        success: function (jso) {//执行结果
            $("#ccypt").text("正在获取位置......");
            if(jso.csc!=null){
                $("#ccypt").text(jso.csc);
            }else{
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
                            $("#ccypt").text(addComp.city+ ", " + addComp.district + ", " + addComp.street );
                            //保存
                            addd(addComp.city+ ", " + addComp.district + ", " + addComp.street);
                        });
                    } else {
                        $("#ccypt").text('定位失败');
                    }
                }, {enableHighAccuracy: true})//指示浏览器获取高精度的位置，默认false
            }
        },
        error:function (jso) {
            $("#ccypt").text("定位失败,出现异常");
        }
    });

}


//保存
function addd(csc) {
    $.ajax({
        async: true,
        type: "post", //提交方式
        url: "../../admin/myMap.action",
        data:{
            "csc":csc,
        },
        success: function (jso) {//执行结果

        }
    })
}
function upcity() {
    layui.use('layer', function () {
        var sa=$("#s_province");
        var sb=$("#s_city");
        var sc=$("#s_county");

        if(sa.val()=="省份"&&sb.val()=="地级市"&&sc.val()=="市、县级市"){
            layer.msg("请选择地址");
        }else{
            $.ajax({
                async: true,
                type: "post", //提交方式
                url: "../../admin/upmyMap.action",
                data: {
                    "csc": sa.val()+","+sb.val()+","+sc.val(),
                },
                success: function (jso) {//执行结果
                    if(jso.flog=="OK"){
                        layer.msg('地址已修改，准备刷新界面', {
                            time: 1000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            history.go(0);
                        });
                    }else{
                        layer.msg('地址修改失败');
                    }
                },
                error:function () {
                    layer.msg("地址修改失败");
                }
            })
        }
    })
}

mapre();