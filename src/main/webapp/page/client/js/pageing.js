// 初始化页面

// getPageOfMemo(1);
window.οnlοad=getPageOfMemo(1);

// 分页函数

function getPageOfMemo(page) {
    // 获取请求参数(input里面的时间人员参数可忽略注释)
    var aunt = $("#aunt").val();
    // var endTime = $("#signDate1").val();
    // var organId = $("#organId").val();
    // var personName = $("#personName").val();
    $.ajax({
        url: "../../admin/classifyA.action",
        type: "POST",
        data: {
            "page": page, // 初始页
            "aunt": aunt,//以下是搜索相关的参数  input里面的时间人员参数可忽略注释，同上
            // "sleepStartTime": "---",
            // "sleepStopTime": "+++",
            // "organId": "/////",
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
                        htm += "<a href='#'>";
                        htm += "<img src='../../"+item.sfurl+"' alt=''>";
                        htm += "</a>";
                        if(i<2){
                            htm += "<span>hot</span>";
                        }
                        htm += "<div class='product-action'>";
                        htm += "<a class='animate-left' title='Wishlist' href='#'>";
                        htm += "<i class='pe-7s-like'></i>";
                        htm += "</a>";
                        // htm += "<a class='animate-top' title='Add To Cart' href=''#'>";
                        // htm += "<i class='pe-7s-cart'></i>";
                        // htm += "</a>";
                        htm += " <a class='animate-right' title='Quick View' data-toggle='modal' data-target='#exampleModal' href='#'>";
                        htm += "<i class='pe-7s-look'></i>";
                        htm += "</a>";
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




