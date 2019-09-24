package com.hm.biz;

import com.hm.entity.Company;
import com.hm.entity.Credential;

import java.util.List;

public interface CompanyBiz {
    public Company comlogin(String facc, String fpwd);
    public Company checkfacc(String facc);
    public int addCompany(Company company);
    //------公司证书列表
    public List<Credential> findCreList(Credential credential);
    //------员工证书列表
    public List<Credential> findStfCreList(Credential credential);
    //    查找公司证书的总数
    public Integer comCount(Credential credential);
    //    查找员工证书的总数
    public Integer stfCount(Credential credential);
}
