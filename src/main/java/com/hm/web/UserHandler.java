package com.hm.web;


import com.hm.aop.Log;
import com.hm.biz.UserBiz;
import com.hm.entity.Staff;
import com.hm.entity.*;
import com.hm.tools.TimeTools;
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
import java.util.*;

@Component
@Controller
@RequestMapping("/admin")
public class UserHandler {
    @Resource
    private UserBiz biz;

    private ModelAndView mav = null;

    private Map<String, Object> map = new HashMap<String, Object>();

    @Log(operationType = "注册",operationName = "用户端")
    @RequestMapping(value = "/cUserReq.action")
    public String cUserReq(HttpServletRequest request, HttpSession session, MultipartFile fileact, TblUser tblUser, TblSite tblSite, String securityCode, String phcode)
            throws MalformedURLException, IllegalStateException, IOException {
        String flog = "";
        if(!fileact.isEmpty()){
        String serverCode = (String) session.getAttribute("SESSION_SECURITY_CODE");
        if (securityCode.equalsIgnoreCase(serverCode)) {
            String phcode_req = (String) session.getAttribute(tblUser.getUserphone() + "_code_req");
            if (phcode_req.equals(phcode)) {
                //保存头像
                String filename = fileact.getOriginalFilename();//获取到的文件名
                String upf = request.getServletContext().getResource("/").getPath();

                File fileParent = new File(upf + "portrait");
                if (!fileParent.exists()) {
                    fileParent.createNewFile();
                }

                String url = "portrait/" + filename;
                tblUser.setUserurl(url);//抽象路径保存在实体类

                File file = new File(upf + url);
                fileact.transferTo(file);//文件保存的路径
                //判断是否保存成功
                if (file.exists()) {

                    TblUser num = biz.cUserReg(tblUser);//注册
                    tblSite.setUserid(num.getUserid());//set用户id
                    TblSite sit = biz.addSite(tblSite);
                    int fl = biz.updateUserSid(sit.getSid(), sit.getUserid());
                    if (fl > 0) {
                        flog = "success";
                        request.setAttribute("flog", flog);
                        return "client/signup";
                    } else {
                        flog = "reqerr";
                    }
                } else {
                    flog = "imgerr";
                }
            } else {
                flog = "phcodeerr";
            }
        } else {
            flog = "codeerr";
        }
        }else{
            flog = "imgeerr";
        }
        request.setAttribute("tblUser", tblUser);
        request.setAttribute("tblSite", tblSite);
        request.setAttribute("flog", flog);
        return "client/signup";
    }
    @Log(operationType = "忘记密码",operationName = "用户端")
    @RequestMapping(value = "/userForgot.action")
    public @ResponseBody
    Map<String, String> userForgetPassword(HttpSession session, String userphone, String userpwd, String phcode) {
        Map<String, String> flog = new HashMap();
        Integer count = biz.queryphone(userphone);
        if (count > 0) {
            String code = (String) session.getAttribute(userphone + "_code_req");

            if (phcode.equalsIgnoreCase(code)) {

                Integer in = biz.userForgetPassword(userpwd, userphone);
                if (in > 0) {
                    flog.put("flog", "OK");
                } else {
                    flog.put("flog", "notok");
                }
            } else {
                flog.put("flog", "codeerr");
            }
        } else {
            flog.put("flog", "notphone");
        }


        return flog;
    }
    @Log(operationType = "登陆",operationName = "用户端")
    @RequestMapping(value = "/cUserLogin.action")
    public @ResponseBody
    Map<String, String> cUserLogin(HttpServletRequest request, HttpSession session, TblUser tblUser, String securityCode) {
        Map<String, String> flog = new HashMap();
        String serverCode = (String) session.getAttribute("SESSION_SECURITY_CODE");
        if (securityCode.equalsIgnoreCase(serverCode)) {
            Integer stid = biz.queryUserState(tblUser.getUserphone());
            if (null == stid) {
                flog.put("flog", "0");
            } else if (2 == stid) {
                flog.put("flog", "2");
            } else if (3 == stid) {
                flog.put("flog", "3");
            } else if (1 == stid) {
                //登陆
                TblUser obj = biz.cUserLogin(tblUser);
                if (null != obj) {
                    session.setAttribute("userbacc", obj);
                    flog.put("flog", "success");
                } else {
                    flog.put("flog", "pw");
                }
            } else {
                flog.put("flog", "errc");
            }
        } else {
            flog.put("flog", "coderr");
        }
        return flog;
    }
    @Log(operationType = "查询服务人员",operationName = "用户端")
    @RequestMapping(value = "/classifyA.action")
    public @ResponseBody
    Map<String, Object> classifyA(HttpServletRequest request, HttpSession session, Staff staff) {

        TblUser use = (TblUser) session.getAttribute("userbacc");
        if (null != use) {
            staff.setUserid(use.getUserid());
        }
        Integer count = biz.getStaffCount(staff);

        List<Staff> list = biz.queryStaff(staff);

        Map<String, Object> map = new HashMap<String, Object>();

        map.put("data", list);
        map.put("count", count);

        return map;
    }
    @Log(operationType = "热门公司",operationName = "用户端")
    @RequestMapping(value = "/thwWelcome.action")
    public @ResponseBody
    Map<String, Object> thwWelcome(Staff staff) {


        Map<String, Object> map = new HashMap<String, Object>();

        Map<String, Object> whot = biz.thwWelcome();

        map.put("hot", whot);

        return map;
    }
    @Log(operationType = "查询服务类型",operationName = "用户端")
    @RequestMapping(value = "/queryCOSType.action")
    public @ResponseBody
    List<TblCOStype> queryCOSType(HttpServletRequest request) {

        List list = biz.queryCOSType();

        return list;
    }
    @Log(operationType = "查询服务类型的具体服务",operationName = "用户端")
    @RequestMapping(value = "/queryCOS.action")
    public @ResponseBody
    List<TblCOS> queryCOS(HttpServletRequest request, Integer ctid) {

        List list = biz.queryCOS(ctid);

        return list;
    }
    @Log(operationType = "用户发布需求",operationName = "用户端")
    @RequestMapping("/addOrder.action")
    public @ResponseBody
    Map addOrder(HttpSession session, Tblorder tblorder) {
        TblUser use = (TblUser) session.getAttribute("userbacc");

        tblorder.setUserid(use.getUserid());
        tblorder.setOsid(6);
        tblorder.setSendtime(TimeTools.getStringDateMin());
        tblorder.setOnumber(TimeTools.getOrderIdByTime());

        Integer num = biz.addOrder(tblorder);
        biz.cosHotUp(tblorder.getCosid());
        if (num != null && num != 0) {
            map.put("flog", "addok");
        } else {
            map.put("flog", "addnot");
        }

        return map;
    }

    @Log(operationType = "用户指定服务人员下单",operationName = "用户端")
    @RequestMapping("/addOrder2.action")
    public @ResponseBody
    Map addOrder2(HttpSession session, Tblorder tblorder) {
        TblUser use = (TblUser) session.getAttribute("userbacc");

        Integer money = biz.queryMoney(use.getUserid());
        Integer ji = Integer.parseInt(tblorder.getMoney());
        if ((money - ji) >= 0) {
            tblorder.setUserid(use.getUserid());
            tblorder.setOsid(1);
            tblorder.setSendtime(TimeTools.getStringDateMin());
            tblorder.setOnumber(TimeTools.getOrderIdByTime());
            int num1 = biz.updateMoney(ji, use.getUserid());
            if (num1 > 0) {
                Integer num = biz.addOrder(tblorder);
                if (num != null && num != 0) {
                    use.setUsermoney(money - ji);
                    biz.cosHotUp(tblorder.getCosid());//增加热度
                    biz.adddeallog(new Tbldeallog(tblorder.getFid(),use.getUserid(),TimeTools.getStringDate(),(money - ji)+""));//增加消费记录
                    session.setAttribute("userbacc", use);
                    map.put("flog", "addok");
                } else {
                    map.put("flog", "addnot");
                }
            } else {
                map.put("flog", "addnot");
            }
        } else {
            map.put("flog", "moneyerr");
        }
        return map;
    }

    @Log(operationType = "用户查地址",operationName = "用户端")
    @RequestMapping("/querySite.action")
    public @ResponseBody
    Map querySite(HttpSession session) {

        TblUser use = (TblUser) session.getAttribute("userbacc");

        Map<String, Object> mpas = new HashMap<>();

        List<TblSite> list = biz.querySite(use.getUserid());
        TblSite tblSite = null;
        Iterator<TblSite> iterator = list.iterator();
        while (iterator.hasNext()) {
            TblSite str = iterator.next();
            if (str.getSid() == use.getSid()) {
                tblSite = str;
                iterator.remove();
                break;
            }
        }

        mpas.put("defaulAddress", tblSite);
        mpas.put("list", list);

        return mpas;
    }

    @Log(operationType = "用户查服务人员详细信息，添加足迹",operationName = "用户端")
    @RequestMapping(value = "/product-details.action")
    public String productdetails(HttpServletRequest request, HttpSession session, Integer sfid) {
        String url="";
        TblUser use = (TblUser) session.getAttribute("userbacc");
        if(null==use){
            request.setAttribute("flog", "plassLogin");
            url="client/shopa";
        }else{
            Staff staff = biz.queryOneStaff(sfid, use.getUserid());

            biz.addFoot(new Tblfoot(use.getUserid(),sfid,TimeTools.getStringDate()));//添加足迹

            request.setAttribute("staff", staff);
            url="client/product-details";
        }
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("client/product-details");
//        modelAndView.addObject("staff", staff);

        return url;
    }

    //收藏阿姨
    @Log(operationType = "用户收藏服务人员",operationName = "用户端")
    @RequestMapping("/addsfcoll.action")
    public @ResponseBody
    Map addsfcoll(HttpSession session, Tblsfcoll tblsfcoll) {

        TblUser use = (TblUser) session.getAttribute("userbacc");

        tblsfcoll.setUserid(use.getUserid());
        tblsfcoll.setScotime(TimeTools.getStringDateMin());

        Integer num = biz.addsfcoll(tblsfcoll);

        if (num > 0) {
            map.put("flog", "OK");
        } else {
            map.put("flog", "NO");
        }
        return map;
    }

    @Log(operationType = "用户取消收藏服务人员",operationName = "用户端")
    @RequestMapping("/delsfcoll.action")
    public @ResponseBody
    Map delsfcoll(HttpSession session, Integer scoid) {

        Integer num = biz.delsfcoll(scoid);

        if (num > 0) {
            map.put("flog", "OK");
        } else {
            map.put("flog", "NO");
        }
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserMoney.action")
    public @ResponseBody
    Map jUserMoney(HttpServletRequest request, Tblorder tblorder) {
        Integer userid =((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        tblorder.setUserid(userid);
        List<Tblorder> list = biz.jUserMoney(tblorder);
        tblorder.setLimit(0);
        tblorder.setPage(-1);
        map.put("code", 0);
        map.put("count", biz.jUserMoney(tblorder).size());
        map.put("data", list);
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserAppraise.action")
    public @ResponseBody
    Map jUserAppraise(HttpServletRequest request, int page, int limit, Integer userid) {
        userid = (Integer) ((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<Tbleva> list = biz.jUserAppraise(page, limit, userid);
        map.put("code", 0);
        map.put("count", biz.jUserAppraise(-1, 0, userid).size());
        map.put("data", list);

        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserSite.action")
    public @ResponseBody
    Map jUserSite(HttpServletRequest request, int page, int limit, Integer userid) {
        userid = (Integer) ((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<TblSite> list = biz.jUserSite(page, limit, userid);
        map.put("code", 0);
        map.put("count", biz.jUserSite(-1, 0, userid).size());
        map.put("data", list);
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUsersfcoll.action")
    public @ResponseBody
    Map jUsersfcoll(HttpServletRequest request, int page, int limit, Integer userid) {
        userid = (Integer) ((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        String status = request.getParameter("status");
        switch (status) {
            case "":
                List<Tblsfcoll> list = biz.jUsersfcoll(page, limit, userid);

                map.put("code", 0);
                map.put("count", biz.jUsersfcoll(-1, 0, userid).size());
                map.put("data", list);
                break;
            case "1":
                List<Tblfcoll> list2 = biz.jUserfcoll(page, limit, userid);
                map.put("code", 0);
                map.put("count", biz.jUserfcoll(-1, 0, userid).size());
                map.put("data", list2);
                break;
        }
        /*List<Tblsfcoll> list = biz.jUsersfcoll(page,limit,userid);


        map.put("code",0);
        map.put("count",biz.jUsersfcoll(-1,0,userid).size());
        map.put("data",list);*/
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserHistory.action")
    public @ResponseBody
    Map jUserHistory(HttpServletRequest request, int page, int limit, Integer userid) {
        userid = (Integer) ((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<Tblorder> list = biz.jUserHistory(page, limit, userid);
        map.put("code", 0);
        map.put("count", biz.jUserHistory(-1, 0, userid).size());
        map.put("data", list);
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserfoot.action")
    public @ResponseBody
    Map jUserfoot(HttpServletRequest request, int page, int limit, Integer userid) {
        userid = (Integer) ((TblUser) request.getSession().getAttribute("userbacc")).getUserid();
        List<Tblfoot> list = biz.jUserfoot(page, limit, userid);
        map.put("code", 0);
        map.put("count", biz.jUserfoot(-1, 0, userid).size());
        map.put("data", list);
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserPay.action")
    public @ResponseBody String jUserPay(HttpServletRequest request,Integer userid,Integer usermoney,String userpwd){
        TblUser user = (TblUser) request.getSession().getAttribute("userbacc");
        userid =user.getUserid();
        int a = biz.jUserPay(userid,usermoney,userpwd);
        Tbldeallog tbldeallog = new Tbldeallog();
        tbldeallog.setDeid(7);tbldeallog.setDlcost(String.valueOf(usermoney));tbldeallog.setUserid(userid);tbldeallog.setDltype("充值");
        int c = biz.jUserAdddeallog(tbldeallog);
        String b =null;
        if (0 < a&&0<c){
            b ="1";
            user.setUsermoney(user.getUsermoney()+usermoney);
            request.getSession().setAttribute("userbacc",user);
        }else {
            b ="0";
        }
        return b;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserCard.action")
    public @ResponseBody String jUserCard(HttpServletRequest request,Integer userid,String usercard,String userpwd){
        TblUser user = (TblUser) request.getSession().getAttribute("userbacc");
        userid = user.getUserid();
        int a = biz.jUserCard(userid,usercard,userpwd);
        String b =null;
        if (0 < a){
            b ="1";
            user.setUsercard(usercard);
            request.getSession().setAttribute("userbacc",user);
        }else {
            b ="0";
        }
        return b;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/jUserOrderOK.action")
    public @ResponseBody String jUserOrderOK(HttpServletRequest request,Tblorder tblorder){
        TblUser user = (TblUser) request.getSession().getAttribute("userbacc");
        Integer userid = user.getUserid();
        String b =null;
        if(user.getUsermoney()>Integer.valueOf(request.getParameter("allmoney"))){
            int a = biz.jcorder(tblorder.getOid(),1);
            Tbldeallog tbldeallog = new Tbldeallog();
            tbldeallog.setDeid(6);tbldeallog.setDlcost(request.getParameter("allmoney"));tbldeallog.setUserid(userid);tbldeallog.setDltype("消费");
            int c = biz.jUserAdddeallog(tbldeallog);
            int d = biz.jUsercut(userid,Integer.valueOf(request.getParameter("allmoney")),user.getUserpwd());//扣钱
            if (0 < a&&0<c&&0<d){
                user.setUsermoney(user.getUsermoney()-Integer.valueOf(request.getParameter("allmoney")));
                request.getSession().setAttribute("userbacc",user);
                b ="1";
             }else {
                b ="0";
            }
        }else{
            b="2";
        }
        return b;
    }


    @Log(operationType = "",operationName = "")
    @RequestMapping("/myMap.action")
    public @ResponseBody
    Map myMap(HttpSession session, String csc) {

        String city = (String) session.getAttribute("csc");
        if (null == city) {
            session.setAttribute("csc", csc);
            map.put("csc", csc);
        } else {
            map.put("csc", city);
        }
        return map;
    }
    @Log(operationType = "",operationName = "")
    @RequestMapping("/upmyMap.action")
    public @ResponseBody
    Map upmyMap(HttpSession session, String csc) {

        if (null != csc) {
            session.setAttribute("csc", csc);
            map.put("flog", "OK");
        }
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdelorder.action")
    public @ResponseBody int jdelorder( Tblorder tblorder){
        return biz.jdelorder(tblorder);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdelsfcoll.action")
    public @ResponseBody int jdelsfcoll( Tblsfcoll tblsfcoll){
        return biz.jdelsfcoll(tblsfcoll);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdelfcoll.action")
    public @ResponseBody int jdelfcoll( Tblfcoll tblfcoll){
        return biz.jdelfcoll(tblfcoll);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdelhistory.action")
    public @ResponseBody int jdelhistory( Tblorder tblorder){
        return biz.jdelhistory(tblorder);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdelsite.action")
    public @ResponseBody int jdelsite( TblSite tblSite){
        return biz.jdelsite(tblSite);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdeleva.action")
    public @ResponseBody int jdeleva( Tbleva tbleva){
        return biz.jdeleva(tbleva);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jdelfoot.action")
    public @ResponseBody int jdelfoot( Tblfoot tblfoot){
        return biz.jdelfoot(tblfoot);
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jsetsite.action")
    public @ResponseBody String jsetsite(HttpServletRequest request, TblSite tblSite){
        TblUser user = (TblUser) request.getSession().getAttribute("userbacc");
        Integer userid = user.getUserid();
        int succ = biz.updateUserSid(tblSite.getSid(),userid);
        String b =null;
        if (0<succ){
            b="1";
            user.setSid(tblSite.getSid());
            request.getSession().setAttribute("userbacc",user);
        }else {
            b="0";
        }
        return b;
    }
    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jUserAddApp.action")
    public @ResponseBody String jUserAddApp(HttpServletRequest request, Tbleva tbleva){
        tbleva.setEconut("5");
        int succ = biz.jUserAddApp(tbleva);
        String b =null;
        if (0<succ){
            int c = biz.jcorder(tbleva.getOid(),5);
            if (0<c){
                b="1";
            }else{
                b="0";
            }
        }else {
            b="0";
        }
        return b;
    }
    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jUserAddAfter.action")
    public @ResponseBody String jUserAddAfter(HttpServletRequest request, Tblorder tblorder){
        int succ = biz.jUserAddAfter(tblorder);
        String b =null;
        if (0<succ){
            int c = biz.jcorder(tblorder.getOid(),9);
            if (0<c){
                b="1";
            }else{
                b="0";
            }
        }else {
            b="0";
        }
        return b;
    }
    @Log(operationType = "",operationName = "")
    @RequestMapping(value = "/jUserUpApp.action")
    public @ResponseBody String jUserUpApp(HttpServletRequest request, Tbleva tbleva){
        int succ = biz.jUserUpApp(tbleva.getEid(),tbleva.getEcontext());
        String b =null;
        if (0<succ){
                b="1";
        }else {
            b="0";
        }
        return b;
    }



@Log(operationType = "修改用户信息",operationName = "用户端")
    @RequestMapping("/upUser.action")
    public String upUser(HttpServletRequest request, HttpSession session, TblUser tblUser, MultipartFile fileact) throws IOException {

        TblUser use = (TblUser) session.getAttribute("userbacc");
        if (null != fileact&&!(fileact.isEmpty())) {
            //保存头像
            String filename = fileact.getOriginalFilename();//获取到的文件名
            String upf = request.getServletContext().getResource("/").getPath();

            String url = "portrait/" + filename;
            tblUser.setUserurl(url);//抽象路径保存在实体类
            use.setUserurl(url);
            File file = new File(upf + url);
            fileact.transferTo(file);//文件保存的路径
        }
        tblUser.setUserid(use.getUserid());
        Integer num = biz.upUser(tblUser);
        String backurl = "";
        if (num == null || num == 0) {
            request.setAttribute("flog", "NO");
            backurl="client/UserData";
        } else {
            if (tblUser.getUserpwd().equals(use.getUserpwd())){
                request.setAttribute("flog", "OK");
                use.setUsersex(tblUser.getUsersex());use.setSid(tblUser.getSid());use.setUsername(tblUser.getUsername());
                session.setAttribute("userbacc", use);
                backurl="client/UserData";
            }else{
                request.setAttribute("flog", "ChangePWD");
                request.getSession().removeAttribute("userbacc");//清空session信息
                session.invalidate();//清除 session 中的所有信息
                backurl="client/chome";
            }

        }

        return backurl;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/queryEva.action")
    public @ResponseBody
    List<Tbleva> queryEva(HttpServletRequest request, Integer sfid) {

        List<Tbleva> list= biz.queryEva(sfid);

        return list;
    }

    @Log(operationType = "退出",operationName = "用户端")
    @RequestMapping("/userEsc.action")
    public @ResponseBody
    Map<String,Object> userEsc(HttpServletRequest request, Integer sfid) {

        request.getSession().removeAttribute("user");//清空session信息
        request.getSession().invalidate();//清除 session 中的所有信息

        map.put("flog","by");
        return map;
    }

    @Log(operationType = "",operationName = "")
    @RequestMapping("/queryphone.action")
    public @ResponseBody
    String queryphone(HttpServletRequest request, String userphone) {
        Integer num=biz.queryphone(userphone);
        String flog="";
        if(num==null){
            flog="OK";
        }else{
            flog="NO";
        }
        return flog;
    }
}

