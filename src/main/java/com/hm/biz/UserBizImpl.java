package com.hm.biz;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("biz")
public class UserBizImpl implements UserBiz {
    @Resource
    private UserMapper userMapper;
//    @Override
//    public User userLogin(String userid, String pwd) {
//        return userMapper.userLogin(userid,pwd);
//    }

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
    public Integer queryUserState(long userphone) {

        return userMapper.queryUserState(userphone);
    }

}
