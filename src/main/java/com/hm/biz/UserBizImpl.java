package com.hm.biz;

import com.hm.entity.*;
import com.hm.entity.Staff;
import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.Tblfc;
import com.hm.mapper.UserMapper;
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


}
