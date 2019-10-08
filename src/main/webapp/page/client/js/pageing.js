

// 分页函数

function getPageOfMemo(page) {
    var anpage=page;
    var aunt = $("#aunt").val();

    var thispage=$("#thispage")
    if(anpage==null){
        anpage=thispage.val();
    }else{
        thispage.val(anpage);
    }
    // var endTime = $("#signDate1").val();
    // var organId = $("#organId").val();
    // var personName = $("#personName").val();
    $.ajax({
        url: "../../admin/classifyA.action",
        type: "POST",
        data: {
            "page": anpage, // 初始页
            "aunt": aunt,//以下是搜索相关的参数  input里面的时间人员参数可忽略注释，同上
        },
        dataType: "json",
        success: function (obj) {
            console.log(obj);
            var htm = "";
            if (obj != null) {
                // if(obj.length>0){
                    // totalPages = data.returnData.totalPages;
                    $.each(obj.data, function (i, item) {

                        htm += "<div class='col-md-6 col-xl-4'>";
                        htm += "<div class='product-wrapper mb-30'>";
                        htm += "<div class='product-img'>";
                        htm += "<a href='../../admin/product-details.action?sfid="+item.sfid+"'>";
                        htm += "<img src='../../"+item.sfurl+"' alt=''>";
                        htm += "</a>";
                        if(i<2){
                            htm += "<span>hot</span>";
                        }
                        htm += "<div class='product-action'>";
                        if(item.tblsfcoll!=null){
                            htm += "<a class='animate-left' title='Wishlist' onclick='delcollections("+item.tblsfcoll.scoid+")'>";
                            htm += "<i class='layui-icon layui-icon-rate-solid' style='font-size: 35px; color: #FFFF00;'></i>";
                            htm += "</a>";
                        }else{
                            htm += "<a class='animate-left' title='Wishlist' onclick='collections("+item.sfid+")'>";
                            htm += "<i class='layui-icon layui-icon-rate' style='font-size: 35px;'></i>";
                            htm += "</a>";
                        }
                        // htm += "<a class='animate-top' title='Add To Cart' href=''#'>";
                        // htm += "<i class='pe-7s-cart'></i>";
                        // htm += "</a>";
                        // htm += " <a class='animate-right' title='Quick View' data-toggle='modal' data-target='#exampleModal' href='#'>";
                        // htm += "<i class='pe-7s-look'></i>";
                        // htm += "</a>";
                        htm += "</div>";
                        htm += " </div>";
                        htm += "<div class='product-content'>";
                        htm += "<h4><a href='#'> "+item.sfname+" </a></h4>";
                        htm += "<span>￥"+item.sfcos+"/天（次）</span>" +
                            "<p>服务经验："+item.sfexp+"年/擅长："+item.sfgood+"/公司："+item.company.fname+"</p>";
                        htm += "</div>";
                        htm += "</div>";
                        htm += "</div>";
                    });
                    $('#ayitable').html(htm);

                    var totalPages = obj.count;
                    var limit=totalPages%5==0 ? totalPages/5:totalPages/5+1;

                    var element = $('#pageButton');
                    var options = {
                        bootstrapMajorVersion: 3,
                        currentPage: page, // 当前页数
                        numberOfPages: 5, // 显示按钮的数量
                        totalPages: limit, // 总页数
                        itemTexts: function (type, page, current) {
                            switch (type) {
                                case "first":
                                    return "首页";
                                case "prev":
                                    return "<";
                                case "next":
                                    return ">";
                                case "last":
                                    return "末页";
                                case "page":
                                    return page;
                            }

                        },
                        // 点击事件，用于通过Ajax来刷新整个list列表
                        onPageClicked: function (event, originalEvent, type, page) {
                            getPageOfMemo(page);
                        }
                    };
                    element.bootstrapPaginator(options);
                }else{
                    htm+="<div align='center'>暂无服务</div>";
                    $('#ayitable').html(htm);
                }

            // }else{
            //     htm+="<div align='center'>暂无服务</div>";
            //     $('#ayitable').html(htm);
            // }
        }
    });
};

/**
 * 异步用收藏
 * @param sfid
 */
function collections(sfid) {
    layui.use('layer', function () {
    $.ajax({
        url: "../../admin/addsfcoll.action",
        type: "POST",
        data: {
            "sfid": sfid,
        },
        dataType: "json",
        success: function (obj) {
            if (obj.flog == "OK") {
                layer.msg("收藏成功");
                history.go(0);
            } else {
                layer.msg("收藏失败");
            }
        }
    })
    })
}

/**
 * 异步用取消收藏
 * @param scoid
 */
function delcollections(scoid){
    layui.use('layer', function () {
        $.ajax({
            url: "../../admin/delsfcoll.action",
            type: "POST",
            data: {
                "scoid": scoid,
            },
            dataType: "json",
            success: function (obj) {
                if (obj.flog == "OK") {
                    layer.msg("取消收藏");
                    history.go(0);
                } else {
                    layer.msg("操作失败");
                }
            }
        })
    })
}


/**
 * 同步用取消收藏
 * @param scoid
 */
function proDelcollections(scoid){
    layui.use('layer', function () {
        $.ajax({
            url: "../admin/delsfcoll.action",
            type: "POST",
            data: {
                "scoid": scoid,
            },
            dataType: "json",
            success: function (obj) {
                if (obj.flog == "OK") {
                    layer.msg("取消收藏");
                    history.go(0);
                } else {
                    layer.msg("操作失败");
                }
            }
        })
    })
}

/**
 * 同步用收藏
 * @param sfid
 */
function proCollections(sfid) {
    layui.use('layer', function () {
        $.ajax({
            url: "../admin/addsfcoll.action",
            type: "POST",
            data: {
                "sfid": sfid,
            },
            dataType: "json",
            success: function (obj) {
                if (obj.flog == "OK") {
                    layer.msg("收藏成功");
                    history.go(0);
                } else {
                    layer.msg("收藏失败");
                }
            }
        })
    })
}


