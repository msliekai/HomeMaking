package com.hm.biz;

import com.hm.entity.Company;

public interface CompanyBiz {
    public Company comlogin(String facc, String fpwd);
    public Company checkfacc(String facc);
    public int addCompany(Company company);
}
