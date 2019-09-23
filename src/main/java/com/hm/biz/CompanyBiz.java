package com.hm.biz;

import com.hm.entity.Company;
import com.hm.entity.Credential;

import java.util.List;

public interface CompanyBiz {
    public Company comlogin(String facc, String fpwd);
    public Company checkfacc(String facc);
    public int addCompany(Company company);
    //------公司证书列表
    public List<Credential> findCreList(Company company);

}
