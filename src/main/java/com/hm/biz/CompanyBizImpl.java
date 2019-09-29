package com.hm.biz;

import com.hm.entity.*;
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
    public Integer comCount() {
        return companyMapper.comCount();
    }
    //    查找员工证书的总数
    @Override
    public Integer stfCount() {
        return companyMapper.stfCount();
    }
    //-----查找公司订单表
    @Override
    public List<Tblorder> findCompanyOrder(Integer fid,Integer page,Integer limit,String osname) {
        return companyMapper.findCompanyOrder(fid,page,limit,osname);
    }
    //----查找订单的总数
    @Override
    public Integer ordercount(Integer fid,String osname) {
        return companyMapper.ordercount(fid,osname);
    }
    //--------查找员工信息表
    @Override
    public List<Staff> staffList(Integer fid, Integer page, Integer limit) {
        return companyMapper.staffList(fid,page,limit);
    }
    //---------查找员工总数
    @Override
    public Integer staffCount(Integer fid) {
        return companyMapper.staffCount(fid);
    }
    //    培训表
    @Override
    public List<Tbltritem> train(Integer page, Integer limit) {
        return companyMapper.train(page,limit);
    }
    //    培训表总数
    @Override
    public Integer traincount() {
        return companyMapper.traincount();
    }
    //-----------删除员工
    @Override
    public Integer delStaff(Integer sfid) {
        return companyMapper.delStaff(sfid);
    }

    //------公司证书列表
    @Override
    public Company checkfacc(String facc) {
        return companyMapper.checkfacc(facc);
    }
}
