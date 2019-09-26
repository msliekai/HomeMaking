package com.hm.mapper;

import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyMapper {
    public Company comlogin(@Param("facc") String facc,@Param("fpwd")String fpwd);//登录
    public Company checkfacc(@Param("facc") String facc);//检测公司账号是否重复
    //---公司证书列表
    public List<Credential> findCreList(Credential credential);
    //------员工证书列表
    public List<Credential> findStfCreList(Credential credential);
    //-----查找公司证书的总数
    public Integer comCount();
    //----查找员工证书的总数
    public Integer stfCount();
    //注册公司用户
    public int addCompany(Company company);
    //公司入驻申请
    public int Companyin(Company company);
    //查看公司基本信息
    public Company queryBaseInfo(@Param("facc") String facc);
    //-----查找公司订单表
    public List<Tblorder> findCompanyOrder(@Param("fid") Integer fid,@Param("page") Integer page,@Param("limit")Integer limit);
    //----查找订单的总数
    public Integer ordercount(Integer fid);
    //--------查找员工信息表
    public List<Staff> staffList(@Param("fid") Integer fid,@Param("page") Integer page,@Param("limit")Integer limit);
    //---------查找员工总数
    public Integer staffCount(Integer fid);
    //    培训表
    public List<Tbltritem> train(@Param("page") Integer page,@Param("limit")Integer limit);
    //    培训表总数
    public Integer traincount();
}
