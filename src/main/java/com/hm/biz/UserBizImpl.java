package com.hm.biz;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.User;
import com.hm.entity.UserMoney;
import com.hm.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("biz")
public class UserBizImpl implements UserBiz {
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
    public List jUserAppraise() {
        return null;
    }

}
