package com.hm.biz;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.mapper.MangerMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MangerBizImpl implements UserBiz {
    @Resource
    private MangerMapper mangerMapper;

    @Override
    public Integer cUserReg(TblUser tblUser, TblSite tblSite) {
        return null;
    }

    @Override
    public TblUser cUserLogin(TblUser tblUser) {

        return mangerMapper.cUserLogin(tblUser);
    }

    @Override
    public Integer queryUserState(long userphone) {
        return null;
    }
}
