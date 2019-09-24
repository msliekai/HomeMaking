package com.hm.mapper;

import com.hm.entity.Company;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyMapper {
    public Company comlogin(@Param("facc") String facc,@Param("fpwd")String fpwd);//登录
    public Company checkfacc(@Param("facc") String facc);//检测公司账号是否重复
    public int addCompany(Company company);//注册公司用户
    public int Companyin(Company company);//公司入驻申请
    public Company queryBaseInfo(@Param("facc") String facc);//查看公司基本信息
}
