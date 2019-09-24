package com.hm.biz;

import com.hm.entity.Company;
import com.hm.entity.Credential;
import com.hm.mapper.CompanyMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

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
    public List<Credential> findCreList(Credential credential) {

        return companyMapper.findCreList(credential);
    }
    //------员工证书列表
    @Override
    public List<Credential> findStfCreList(Credential credential) {

        return companyMapper.findStfCreList(credential);
    }
    //    查找公司证书的总数
    @Override
    public Integer comCount(Credential credential) {
        return companyMapper.comCount(credential);
    }
    //    查找员工证书的总数
    @Override
    public Integer stfCount(Credential credential) {
        return companyMapper.stfCount(credential);
    }

    //------公司证书列表
    @Override
    public Company checkfacc(String facc) {
        return companyMapper.checkfacc(facc);
    }
}
