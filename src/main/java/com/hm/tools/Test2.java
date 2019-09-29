package com.hm.tools;


import com.hm.biz.MenuBiz;
import com.hm.entity.Company;
import com.hm.entity.CompanyService;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

public class Test2 {

    @Resource
    private MenuBiz menuBizImpl;
    @Test
    public void test(){
        menuBizImpl.getMenu(111);
    }
    @Test
    public void ss(){



    }

}
