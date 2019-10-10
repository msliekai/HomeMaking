package com.hm.biz;
/**
 * 單元測試，自動加載xml文件可進行測試。
 */

import com.google.gson.Gson;
import com.hm.entity.Staff;
import com.hm.entity.Tblorder;
import com.hm.entity.Tblrole;
import junit.framework.TestCase;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/applicationContext.xml"})
public class Test extends TestCase {
    //    @Autowired
//    MenuBizImpl menuBizImpl;
    @Autowired
    UserBiz userBiz;
    MenuBizImpl menuBizImpl;
    @Resource
    private MangerBiz mangerBizImpl;;


    @org.junit.Test
    public void menuTest() {

        Gson g = new Gson();
        Staff t= new Staff();
        t.setPage(1);
        System.out.println(g.toJson(userBiz.queryStaff(t)));
    }

    @org.junit.Test
    public void roleTest(){
        System.out.println();
        Tblrole tblrole = null;
        //mangerBizImpl.getRole(tblrole);
        System.out.println(mangerBizImpl.getRole(tblrole).size());
    }

}