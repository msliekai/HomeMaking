



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


