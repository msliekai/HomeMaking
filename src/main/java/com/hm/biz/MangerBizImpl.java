package com.hm.biz;

import com.hm.entity.TblUser;
import com.hm.entity.Tblmenu;
import com.hm.entity.Tblrole;
import com.hm.entity.*;
import com.hm.mapper.MangerMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.LinkedList;
import java.util.List;

import static com.hm.utils.MD5Utils.md5;

@Service
public class MangerBizImpl implements MangerBiz {
    @Resource
    private MangerMapper mangerMapper;

    @Override
    public TblUser cUserLogin(TblUser tblUser) {
        String userpwd = tblUser.getUserpwd();
        userpwd = md5(userpwd);
        tblUser.setUserpwd(userpwd);
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
    public List<Company> cmFindCompanyAll(Company company) {
        return mangerMapper.cmFindCompanyAll(company);
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

    @Override
    public int updateUserState(int userid) {
        return mangerMapper.updateUserState(userid);
    }

    @Override
    public int updateUserState2(int userid) {
        return mangerMapper.updateUserState2(userid);
    }

    @Override
    public int updateCompanyState(int fid) {
        return mangerMapper.updateCompanyState(fid);
    }

    @Override
    public int updateCompanyState2(int fid) {
        return mangerMapper.updateCompanyState2(fid);
    }

    @Override
    public int updateCompanyRole(int fid) {
        return mangerMapper.updateCompanyRole(fid);
    }

    @Override
    public int updateCompanyRole2(int fid) {
        return mangerMapper.updateCompanyRole2(fid);
    }

    @Override
    public int addTrain(Tbltrain tbltrain) {
        return mangerMapper.addTrain(tbltrain);
    }

    @Override
    public int delTrain(int trid) {
        return mangerMapper.delTrain(trid);
    }

    @Override
    public int updateTrain(Tbltrain tbltrain) {
        return mangerMapper.updateTrain(tbltrain);
    }

    @Override
    public int addServiceType(TblCOStype tblCOStype) {
        return mangerMapper.addServiceType(tblCOStype);
    }

    @Override
    public int delServiceType(int ctid) {
        return mangerMapper.delServiceType(ctid);
    }

    @Override
    public int updateServiceType(TblCOStype tblCOStype) {
        return mangerMapper.updateServiceType(tblCOStype);
    }

    @Override
    public int addService(TblCOS tblCOS) {
        return mangerMapper.addService(tblCOS);
    }

    @Override
    public int delService(int cosid) {
        return mangerMapper.delService(cosid);
    }

    @Override
    public int updateService(TblCOS tblCOS) {
        return mangerMapper.updateService(tblCOS);
    }

    @Override
    public int AddDynamic(Tblnotice tblnotice) {
        return mangerMapper.AddDynamic(tblnotice);
    }

    @Override
    public int delDynamic(int nid) {
        return mangerMapper.delDynamic(nid);
    }

    @Override
    public int updateDynamic(Tblnotice tblnotice) {
        return mangerMapper.updateDynamic(tblnotice);
    }

    @Override
    public int AddTritem(Tbltritem tbltritem) {
        return mangerMapper.AddTritem(tbltritem);
    }

    @Override
    public int delTritem(int itid) {
        return mangerMapper.delTritem(itid);
    }

    @Override
    public int updateTritem(Tbltritem tbltritem) {
        return mangerMapper.updateTritem(tbltritem);
    }

    @Override
    public int AddDKap(Tblkap tblkap) {
        return mangerMapper.AddDKap(tblkap);
    }

    @Override
    public int delKap(int kid) {
        return mangerMapper.delKap(kid);
    }

    @Override
    public int updateKap(Tblkap tblkap) {
        return mangerMapper.updateKap(tblkap);
    }

    @Override
    public int OrderVisit(Tblorder tblorder) {
        return mangerMapper.OrderVisit(tblorder);
    }


}
