package com.hm.biz;

import com.hm.entity.TblUser;
import com.hm.entity.Tblrole;
import com.hm.entity.*;
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
        return  mangerMapper.upRole(tblrole);}

    @Override
    public List<TblUser> cFindUserAll(TblUser tblUser) {
        return mangerMapper.cFindUserAll(tblUser);
    }

    @Override
    public List<Company> cFindCompanyAll(Company company) {
        return mangerMapper.cFindCompanyAll(company);
    }

    @Override
    public List<Tbltrain> cFindtrainAll(Tbltrain tbltrain) {
        return mangerMapper.cFindtrainAll(tbltrain);
    }

    @Override
    public List<TblCOStype> cFindServiceTypeAll(TblCOStype tblCOStype) {
        return mangerMapper.cFindServiceTypeAll(tblCOStype);

    }

    @Override
    public List<TblCOS> cFindServiceAll(TblCOS tblCOS) {
        return mangerMapper.cFindServiceAll(tblCOS);
    }

    @Override
    public List<TblCOS> cFindHotServiceAll(TblCOS tblCOS) {
        return mangerMapper.cFindHotServiceAll(tblCOS);
    }

    @Override
    public List<Tblorder> MserviceIfmationlist(Tblorder tblorder) {
        return mangerMapper.MserviceIfmationlist(tblorder);
    }

    @Override
    public List<Tblnotice> cFindDynamiclistAll(Tblnotice tblnotice) {
        return mangerMapper.cFindDynamiclistAll(tblnotice);
    }

    @Override
    public List<Tbltritem> cFindtritemlistAll(Tbltritem tbltritem) {
        return mangerMapper.cFindtritemlistAll(tbltritem);
    }

    @Override
    public List<Tblkap> cFindkaptAll(Tblkap tblkap) {
        return mangerMapper.cFindkaptAll(tblkap);
    }

    @Override
    public List<Tblorder> cFindOrderAll(Tblorder tblorder) {
        return mangerMapper.cFindOrderAll(tblorder);
    }

    @Override
    public int delRole(Tblrole tblrole) {
        return mangerMapper.delRole(tblrole);
    }



    @Override
    public List<TblAdvisor> cFindAdvisorAll(TblAdvisor tblAdvisor) {
        return mangerMapper.cFindAdvisorAll(tblAdvisor);
    }


}
