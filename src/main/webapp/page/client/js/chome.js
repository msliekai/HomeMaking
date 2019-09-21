layui.use('carousel', function(){
    var carousel = layui.carousel;

    var b = 1920/460
    var W = $(window).width();//窗口宽度
    var H = $(window).height();//窗口高度
    //建造实例
    carousel.render({
        elem: '#sliderarea'
        ,width: '100%'   //设置容器宽度
        ,height: '400'
        ,arrow: 'hover'  //始终显示箭头
        ,autoplay:true   //自动切换
        ,interval:3000     //自动切换速度
        // ,anim: 'updown' //切换动画方式
    });

// //监听轮播切换事件
//     carousel.on('click(test1)', function(obj){ //test1来源于对应HTML容器的 lay-filter="test1" 属性值
//         console.log(obj.index); //当前条目的索引
//         console.log(obj.prevIndex); //上一个条目的索引
//         console.log(obj.item); //当前条目的元素对象
//     });
});

