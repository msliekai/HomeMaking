package com.hm.biz;

import com.google.gson.Gson;
import com.hm.entity.Staff;
import com.hm.entity.Tblrole;
import com.hm.tools.JsoupHelper;
import com.hm.tools.ShortMessageUtil;
import junit.framework.TestCase;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * 單元測試，自動加載xml文件可進行測試。
 */


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/applicationContext.xml"})
public class Test extends TestCase {
    //    @Autowired
//    MenuBizImpl menuBizImpl;
    @Autowired
    UserBiz userBiz;
    MenuBizImpl menuBizImpl;
    @Resource
    private MangerBiz mangerBizImpl;
    ;


    @org.junit.Test
    public void menuTest() {
        Gson g = new Gson();
        Staff t = new Staff();
        t.setPage(1);
        System.out.println(g.toJson(userBiz.queryStaff(t)));
    }

    @org.junit.Test
    public void roleTest() {
        System.out.println(ShortMessageUtil.sendInformationToUsers("13860811761","gouzi"));
    }

    @org.junit.Test
    public void chong() throws Exception {
//            JsoupHelper.fecthByMap("http://www.jianshu.com/u/bf7b9c013c55","//ul[@class='note-list']/li//a[@class='title']");
            Object a=JsoupHelper.fecthArticle("http://www.5m4.net/yuerbaike/3783.html",
                    "/html/body/div[7]/div/div[1]/div/div[2]/div//div[@class='hd']/h2 |//p");
        System.out.println(new Gson().toJson(a));
    }

}