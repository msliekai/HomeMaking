package com.hm.biz;

import com.hm.entity.*;
import com.hm.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("biz")
public class UserBizImpl implements UserBiz
{
    @Resource
    private UserMapper userMapper;

    @Override
    public Integer cUserReg(TblUser tblUser,TblSite tblSite) {

        Integer userid=userMapper.cUserReg(tblUser);

        tblSite.setUserid(userid);

        Integer num=userMapper.addSite(tblSite);

        return num;
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


}
