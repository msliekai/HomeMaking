package com.hm.biz;

import com.hm.entity.TblUser;
import com.hm.entity.Tblrole;
import com.hm.mapper.MangerMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MangerBizImpl implements MangerBiz {
    @Resource
    private MangerMapper mangerMapper;

    @Override
    public TblUser cUserLogin(TblUser tblUser) {
        return mangerMapper.cUserLogin(tblUser);
    }

    @Override
    public List<Tblrole> getRole(Tblrole tblrole) {
        return mangerMapper.getRole(tblrole);
    }

    @Override
    public Integer addRole(Tblrole tblrole) {
        return mangerMapper.addRole(tblrole);
    }

    @Override
    public int upRole(Tblrole tblrole) {
        return  mangerMapper.upRole(tblrole);
    }

    @Override
    public int delRole(Tblrole tblrole) {
        return mangerMapper.delRole(tblrole);
    }


}
