package com.hm.biz;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.User;
import com.hm.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("biz")
public class UserBizImpl implements UserBiz {
    @Resource
    private UserMapper userMapper;
//    @Override
//    public User userLogin(String userid, String pwd) {
//        return null;
//    }

    @Override
    public Integer cUserReg(TblUser tblUser,TblSite tblSite) {
        Integer num=0;
        Integer coun=userMapper.cUserReg(tblUser);
        if(0<coun){
            Integer userid=userMapper.queryUserid(tblUser.getUserphone());

            tblSite.setUserid(userid);

            num=userMapper.addSite(tblSite);
        }


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

}
