package com.hm.web;

/**
 * @author hha
 * @date 2019-08-30 15:55
 */

import com.hm.aoplog.Log;
import com.hm.biz.UserBiz;
import com.hm.entity.MyJsoup;
import com.hm.tools.CreateSecurityCodeANDImage;
import com.hm.tools.JsoupHelper;
import com.hm.tools.ShortMessage;
import com.hm.tools.ShortMessageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.LinkedList;
import java.util.List;

/**
 * 提供图片验证码
 *
 * @author dongliyang
 * @version 1.0 2012/08/22
 */
//@SuppressWarnings("serial")
@Controller
@RequestMapping("/serial")
public class SecurityCodeImageAction {
    @Resource
    private UserBiz biz;

    @Log(operationType = "", operationName = "")
    @RequestMapping(value = "getimage.action")
    public void getImage(HttpServletRequest request, HttpServletResponse response) {
        FileInputStream fis = null;
        response.setContentType("image/gif");
        try {
            //通过response获得输出流
            OutputStream out = response.getOutputStream();

            //获取到图片验证码，这个静态类需要自己写
//            File file = new File("D:/LiufuKin/Mysoft/apache-tomcat-6.0.14/images/9D5E800657A298BB06F56251D4BAEB24.jpg");
//            fis = new FileInputStream(file);
            String securityCodeString = CreateSecurityCodeANDImage.getSecurityCode();
            ByteArrayInputStream image = CreateSecurityCodeANDImage.getImageAsInputStream(securityCodeString);

            request.getSession().setAttribute("SESSION_SECURITY_CODE", securityCodeString);
            //这个是重点，由于输出字节流流只能传递二进制的数据，所以需要把他们转化成为数组就可以了
            //下面这种方式创建的数组大小和图片大小刚刚好，这样就不会浪费空间，而且可以一次性的把数据给写进去
//            byte[] b = new byte[fis.available()];
            byte[] b = new byte[image.available()];
            image.read(b);
            out.write(b);
            out.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Log(operationType = "", operationName = "")
    @RequestMapping(value = "/sendSms.action")
    public @ResponseBody
    String sendSms(HttpSession session, String userphone) {

        String flog = "";

        String code = ShortMessageUtil.vcode();//随机数

        session.setAttribute(userphone + "_code_req", code);

        flog = ShortMessageUtil.getVerificationCode(userphone, code);

        return flog;
    }

    @Log(operationType = "", operationName = "")
    @RequestMapping(value = "/getJsoup.action")
    public @ResponseBody
    List<MyJsoup> getJsoup(HttpSession session) throws Exception {
        List<MyJsoup> list=new LinkedList<>();

        list=JsoupHelper.fecthByMap("http://health.people.com.cn/GB/408565/index.html","/html/body/div/div[4]/div/div/div[1]/div[2]/ul/li//a[@target='_blank']");

        return list;
    }
}
