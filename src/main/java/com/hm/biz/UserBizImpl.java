package com.hm.biz;

import com.hm.entity.*;
import com.hm.entity.Staff;
import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.Tblfc;
import com.hm.mapper.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("biz")
public class UserBizImpl implements UserBiz
{
    @Resource
    private UserMapper userMapper;
//    @Override
//    public User userLogin(String userid, String pwd) {
//        return null;
//    }

    @Override
    public Integer queryphone(String userphone) {
        return userMapper.queryphone(userphone);
    }

    @Override
    public TblUser cUserReg(TblUser tblUser) {
        Integer num=0;
        TblUser obj=tblUser;
        userMapper.cUserReg(obj);
        return obj;
    }

    @Override
    public TblSite addSite(TblSite tblSite) {
        TblSite obj=tblSite;
        userMapper.addSite(obj);
        return obj;
    }

    @Override
    public Integer updateUserSid(Integer sid, Integer userid) {

        return userMapper.updateUserSid(sid,userid);
    }

    @Override
    public List<TblSite> querySite(Integer userid) {
        return userMapper.querySite(userid);
    }

    @Override
    public TblUser cUserLogin(TblUser tblUser) {
        return userMapper.cUserLogin(tblUser);
    }

    @Override
    public Integer queryUserState(String userphone) {

        return userMapper.queryUserState(userphone);
    }

    @Override
    public List<TblCOStype> queryCOSType() {
        return userMapper.queryCOSType();
    }

    @Override
    public List<TblCOS> queryCOS(Integer ctid) {
        return userMapper.queryCOS(ctid);
    }

    @Override
    public Integer addOrder(Tblorder tblorder) {
        return userMapper.addOrder(tblorder);
    }

    @Override
    public List<UserMoney> jUserMoney(UserMoney userMoney) {
        return userMapper.jUserMoney(userMoney);
    }

    @Override
    public List<Tbleva> jUserAppraise(int page,int limit,Integer userid) {
        return userMapper.jUserAppraise(page,limit,userid);
    }

    @Override
    public List<TblSite> jUserSite(int page, int limit, Integer userid) {
        return userMapper.jUserSite(page,limit,userid);
    }

    @Override
    public List<Tblsfcoll> jUsersfcoll(int page, int limit, Integer userid) {
        return userMapper.jUsersfcoll(page,limit,userid);
    }

    @Override
    public List<Tblfcoll> jUserfcoll(int page, int limit, Integer userid) {
        return userMapper.jUserfcoll(page,limit,userid);
    }

    @Override
    public List<Tblorder> jUserHistory(int page, int limit, Integer userid) {
        return userMapper.jUserHistory(page,limit,userid);
    }

    @Override
    public List<Tblfoot> jUserfoot(int page, int limit, Integer userid) {
        return userMapper.jUserfoot(page,limit,userid);
    }

    @Override
    public List<Tblorder> jUserOrder(int page, int limit, Integer userid) {
        return userMapper.jUserOrder(page,limit,userid);
    }

    @Override
    public List<Tblorder> jUserpoints(int page, int limit, Integer userid) {
        return userMapper.jUserpoints(page,limit,userid);
    }

    @Override
    public List<Tblorder> jUserticket(int page, int limit, Integer userid) {
        return userMapper.jUserticket(page,limit,userid);
    }

    @Override
    public int jUserPay(Integer userid, Integer money,String userpwd) {
        return userMapper.jUserPay(userid,money,userpwd);
    }

    @Override
    public int jUserCard(Integer userid, String usercard, String userpwd) {
        return userMapper.jUserCard(userid,usercard,userpwd);
    }

    @Override
    public int jdelorder(Tblorder tblorder) {
        return userMapper.jdelorder(tblorder);
    }

    @Override
    public int jdelsfcoll(Tblsfcoll tblsfcoll) {
        return userMapper.jdelsfcoll(tblsfcoll);
    }

    @Override
    public int jdelfcoll(Tblfcoll tblfcoll) {
        return userMapper.jdelfcoll(tblfcoll);
    }

    @Override
    public int jdelhistory(Tblorder tblorder) {
        return userMapper.jdelhistory(tblorder);
    }

    @Override
    public int jdelsite(TblSite tblSite) {
        return userMapper.jdelsite(tblSite);
    }

    @Override
    public int jdeleva(Tbleva tbleva) {
        return userMapper.jdeleva(tbleva);
    }

    @Override
    public int jdelfoot(Tblfoot tblfoot) {
        return userMapper.jdelfoot(tblfoot);
    }

    @Override
    public int jUserAddApp(Tbleva tbleva) {
        return userMapper.jUserAddApp(tbleva);
    }

    @Override
    public int jUserAddAfter(Tblorder tblorder) {
        return userMapper.jUserAddAfter(tblorder);
    }

    @Override
    public int jcorder(Integer oid,Integer state) {
        return userMapper.jcorder(oid,state);
    }


    @Override
    public List<Staff> queryStaff(Staff staff) {
        return userMapper.queryStaff(staff);
    }

    @Override
    public Staff queryOneStaff(Integer sfid ,Integer userid) {
        return userMapper.queryOneStaff(sfid,userid);
    }

    @Override
    public Integer getStaffCount(Staff staff) {
        return userMapper.getStaffCount(staff);
    }

    @Override
    public Integer addsfcoll(Tblsfcoll tblsfcoll) {
        return userMapper.addsfcoll(tblsfcoll);
    }

    @Override
    public Integer delsfcoll(Integer scoid) {
        return userMapper.delsfcoll(scoid);
    }

    @Override
    public Integer userForgetPassword(String userpwd, String userphone) {

        return userMapper.userForgetPassword(userpwd,userphone);
    }

    @Override
    public List<Tblfc> queryFirmService(Integer page, Integer limit) {
        return userMapper.queryFirmService(page,limit);
    }

    @Override
    public Map<String,Object> thwWelcome() {

        Map<String,Object>map=new HashMap<String,Object>();
        List li=null;
        List<Map<String,Object>> list = userMapper.thwWelcome();
        for (int i = 0; i < list.size(); i++) {

            String key = (String)list.get(i).get("ctname");
            if (!map.containsKey(key)) {
                li = new ArrayList<Map<String,Object>>();
                li.add(list.get(i));
            } else {
                li.add(list.get(i));
            }
            map.put(key, li);
        }

        return map;
    }

    @Override
    public Integer queryMoney(Integer userid) {
        return userMapper.queryMoney(userid);
    }

    @Override
    public Integer updateMoney(Integer usermoney, Integer userid) {
        return userMapper.updateMoney(usermoney,userid);
    }

    @Override
    public Integer upUser(TblUser tblUser) {
        return userMapper.upUser(tblUser);
    }

    @Override
    public List<Tbleva> queryEva(Integer sfid) {
        return userMapper.queryEva(sfid);
    }

    @Override
    public Integer addFoot(Tblfoot tblfoot) {
        return userMapper.addFoot(tblfoot);
    }

    @Override
    public Integer cosHotUp(Integer cosid) {
        return userMapper.cosHotUp(cosid);
    }


}
