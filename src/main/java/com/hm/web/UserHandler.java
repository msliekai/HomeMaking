package com.hm.web;


import com.hm.biz.UserBiz;
import com.hm.entity.*;
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
import java.util.List;
import java.util.Map;

@Component
@Controller
@RequestMapping("/admin")
public class UserHandler {
    @Resource
    private UserBiz biz;
    private ModelAndView mav = null;
    private Map<String,Object> map = new HashMap<String, Object>();


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

    /*@RequestMapping(value = "/jUserMoney.action")
    public ModelAndView jUserMoney(HttpServletRequest request, TblUser tblUser) {
        List<UserMoney> list = biz.jUserMoney((TblUser) request.getSession().getAttribute("userbacc"),-1,0);

        System.out.println(list.size());
        if (0 <=list.size()) {
            mav = new ModelAndView();
            mav.setViewName("client/UserBalance");
            mav.addObject("Moneylist",list);
        } else {
            return null;
        }
        return mav;
    }*/

    @RequestMapping("/jUserMoney.action")
    public @ResponseBody Map jUserMoney(HttpServletRequest request,UserMoney userMoney){
        userMoney.setUserid(((TblUser) request.getSession().getAttribute("userbacc")).getUserid());
        List<UserMoney> list = biz.jUserMoney(userMoney);
        System.out.println(list);//UserID
        map.put("code",0);
        UserMoney userMoney1 = new UserMoney();
        userMoney1.setUserid(((TblUser) request.getSession().getAttribute("userbacc")).getUserid());
        map.put("count",biz.jUserMoney(userMoney1).size());
        map.put("data",list);
        return map;
    }

    @RequestMapping("/jUserAppraise.action")
    public @ResponseBody Map jUserAppraise(HttpServletRequest request,int page,int limit,Integer userid){
        userid = (Integer)((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<Tbleva> list = biz.jUserAppraise(page,limit,userid);
        System.out.println(userid);
        System.out.println("列表长度："+list.size());
        System.out.println(list);
        map.put("code",0);
        map.put("count",biz.jUserAppraise(-1,0,userid).size());
        map.put("data",list);

        return map;
    }

    @RequestMapping("/jUserSite.action")
    public @ResponseBody Map jUserSite(HttpServletRequest request,int page,int limit,Integer userid){
        userid = (Integer)((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<TblSite> list = biz.jUserSite(page,limit,userid);
        System.out.println(userid);
        System.out.println("列表长度："+list.size());
        System.out.println(list);
        map.put("code",0);
        map.put("count",biz.jUserSite(-1,0,userid).size());
        map.put("data",list);
        return map;
    }

    @RequestMapping("/jUsersfcoll.action")
    public @ResponseBody Map jUsersfcoll(HttpServletRequest request,int page,int limit,Integer userid){
        userid = (Integer)((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<Tblsfcoll> list = biz.jUsersfcoll(page,limit,userid);
        System.out.println(userid);
        System.out.println("列表长度："+list.size());
        System.out.println(list);
        map.put("code",0);
        map.put("count",biz.jUsersfcoll(-1,0,userid).size());
        map.put("data",list);
        return map;
    }

    @RequestMapping("/jUserfcoll.action")
    public @ResponseBody Map jUserfcoll(HttpServletRequest request,int page,int limit,Integer userid){
        userid = (Integer)((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<Tblfcoll> list = biz.jUserfcoll(page,limit,userid);
        System.out.println(userid);
        System.out.println("列表长度："+list.size());
        System.out.println(list);
        map.put("code",0);
        map.put("count",biz.jUserfcoll(-1,0,userid).size());
        map.put("data",list);
        return map;
    }

}
