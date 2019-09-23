package com.hm.tools;


import com.hm.biz.MenuBiz;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;

public class Test2 {

    @Resource
    private MenuBiz menuBizImpl;
    @Test
    public void test(){
        menuBizImpl.getMenu("111");
    }

}
