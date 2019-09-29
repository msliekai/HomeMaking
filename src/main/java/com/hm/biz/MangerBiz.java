package com.hm.biz;

import com.hm.entity.*;

import java.util.List;

public interface MangerBiz {
    public TblUser cUserLogin(TblUser tblUser);
    public List<TblUser> cFindUserAll(TblUser tblUser);
    public List<Company> cFindCompanyAll(Company company);
    public List<Tbltrain> cFindtrainAll(Tbltrain tbltrain);
    public List<TblCOStype> cFindServiceTypeAll(TblCOStype tblCOStype);
    public List<TblCOS> cFindServiceAll(TblCOS tblCOS);
    public List<TblCOS> cFindHotServiceAll(TblCOS tblCOS);
    public List<Tblorder> MserviceIfmationlist(Tblorder tblorder);
    public List<Tblnotice> cFindDynamiclistAll(Tblnotice tblnotice);
    public List<Tbltritem> cFindtritemlistAll(Tbltritem tbltritem);
    public List<Tblkap> cFindkaptAll(Tblkap tblkap);
    public List<Tblorder> cFindOrderAll(Tblorder tblorder);
    public List<TblAdvisor> cFindAdvisorAll(TblAdvisor tblAdvisor);

}
