package com.hm.biz;

import com.hm.entity.*;

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
    public Integer comCount();
    //    查找员工证书的总数
    public Integer stfCount();
    //-----查找公司订单表
    public List<Tblorder> findCompanyOrder(Integer fid,Integer page,Integer limit,String osname);
    //----查找订单的总数
    public Integer ordercount(Integer fid,String osname);
    //--------查找员工信息表
    public List<Staff> staffList(Integer fid,Integer page,Integer limit);
    //---------查找员工总数
    public Integer staffCount(Integer fid);
    //    培训表
    public List<Tbltritem> train(Integer page,Integer limit);
    //    培训表总数
    public Integer traincount();
    //-----------删除员工
    public Integer delStaff(Integer sfid);
}
