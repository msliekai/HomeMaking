package com.hm.web;


import com.hm.biz.UserBiz;
import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.User;
import org.apache.commons.pool2.impl.BaseObjectPoolConfig;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;

@Component
@Controller
@RequestMapping("/admin")
public class UserHandler {
    @Resource
    private UserBiz biz;
    private ModelAndView mav = null;

    @RequestMapping(value = "/userlogin.action")
    public ModelAndView userlogin(HttpServletRequest request, User user) {
        User u = biz.userLogin(user.getUserid(), user.getUserpwd());
        if (null != u) {
            request.getSession().setAttribute("user", u);
            mav = new ModelAndView();
            mav.setViewName("index");

        } else {
            return null;
        }
        return mav;
    }

    @RequestMapping(value = "/cUserReq.action")
    public String cUserReq(HttpServletRequest request, HttpSession session, MultipartFile fileact, TblUser tblUser, TblSite tblSite, String securityCode) throws MalformedURLException, IllegalStateException, IOException {
        String flog = "";

        String serverCode = (String) session.getAttribute("SESSION_SECURITY_CODE");
        if (securityCode.equalsIgnoreCase(serverCode)) {
//            保存头像
            String filename = fileact.getOriginalFilename();//获取到的文件名
            String upf = request.getServletContext().getResource("/").getPath();
            String url = "portrait/" + filename;
            tblUser.setUserurl(url);//抽象路径保存在数据库

            File file = new File(upf + url);
            fileact.transferTo(file);//文件保存的路径
            //判断是否保存成功
            if (file.exists()) {

                Integer num = biz.cUserReg(tblUser, tblSite);
                if (num > 0) {
                    flog = "success";
                    request.setAttribute("flog",flog);
                    return "client/signup";
                } else {
                    flog = "reqerr";
                }
            } else {
                flog="imgerr";
            }

        }else{
            flog="codeerr";
        }
        request.setAttribute("tblUser",tblUser);
        request.setAttribute("tblSite",tblSite);
        request.setAttribute("flog",flog);
        return "client/signup";
    }

    @RequestMapping(value = "/cUserLogin.action")
    public  @ResponseBody
    Map<String,String> cUserLogin(HttpServletRequest request, HttpSession session, TblUser tblUser, String securityCode){
        Map<String,String> flog=new HashMap();
        String serverCode = (String) session.getAttribute("SESSION_SECURITY_CODE");
        if (securityCode.equalsIgnoreCase(serverCode)) {
            Integer stid=biz.queryUserState(tblUser.getUserphone());
            if(null==stid){
                flog.put("flog","0");
            }else if(2==stid){
                flog.put("flog","2");
            }else if(3==stid){
                flog.put("flog","3");
            }else if(1==stid){
                //登陆
                TblUser obj=biz.cUserLogin(tblUser);
                if(null!=obj){
                    session.setAttribute("userbacc",obj);
                    flog.put("flog","success");
                }else{
                    flog.put("flog","pw");
                }
            }else{
                flog.put("flog","errc");
            }
        }else{
            flog.put("flog","coderr");
        }
        return flog;
    }
}
