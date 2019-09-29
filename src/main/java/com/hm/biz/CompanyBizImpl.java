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

    //交易记录数量
    @Override
    public Integer countdeallog(Integer fid, Integer page, Integer limit) {
        return companyMapper.countdeallog(fid,page,limit);
    }

    //公司服务
    @Override
    public List<TblCOStype> querycostype() {
        return companyMapper.querycostype();
    }

    //交易记录
    @Override
    public List<Tbldeallog> querydeallog(Integer fid,Integer page,Integer limit) {
        return companyMapper.querydeallog(fid,page,limit);
    }

    //公司登陆
    @Override
    public Company comlogin(String facc, String fpwd) {
        return companyMapper.comlogin(facc,fpwd);
    }

    //注册公司
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

    //银行充值
    @Override
    public Integer addmoney(String famoney, Integer fid) {
        return companyMapper.addmoney(famoney,fid);
    }

    @Override
    public int upcom(Integer fid,String facc, String fname, String flaw, String flawphone, String fsite) {
        return companyMapper.upcom(fid,facc,fname,flaw,flawphone,fsite);
    }

    //银行密码
    @Override
    public Tblfirmacc checkcompwd(String facard,String compwd) {
        return companyMapper.checkcompwd(facard,compwd);
    }

    //具体服务
    @Override
    public List<TblCOS> service(Integer fid, Integer page, Integer limit) {
        return null;
    }

    //某个公司提供的服务数量
    @Override
    public Integer countservicetype(Integer fid, Integer page, Integer limit) {
        return companyMapper.countservicetype(fid,page,limit);
    }

    //某个公司提供的服务
    @Override
    public List<TblCOStype> servicetype(Integer fid,Integer page,Integer limit) {
        return companyMapper.servicetype(fid,page,limit);
    }

    @Override
    public Integer changefacard(String facard, Integer fid) {
        return companyMapper.changefacard(facard,fid);
    }

    //银行提现
    @Override
    public Integer drawmoney(String famoney, Integer fid) {
        return companyMapper.drawmoney(famoney,fid);
    }

    //查询公司银行账号
    @Override
    public Tblfirmacc queryfirmacc(Integer fid) {
        return companyMapper.queryfirmacc(fid);
    }
}
