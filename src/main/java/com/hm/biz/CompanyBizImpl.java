package com.hm.biz;

import com.hm.entity.Company;
import com.hm.mapper.CompanyMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("companyBiz")
public class CompanyBizImpl implements CompanyBiz {
    @Resource
    private CompanyMapper companyMapper;//实例化

    @Override
    public Company comlogin(String facc, String fpwd) {
        return companyMapper.comlogin(facc,fpwd);
    }

    @Override
    public int addCompany(Company company) {
        return companyMapper.addCompany(company);
    }
    @Override
    public Company checkfacc(String facc) {
        return companyMapper.checkfacc(facc);
    }
}
