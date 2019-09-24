package com.hm.mapper;

import com.hm.entity.Company;
import com.hm.entity.Credential;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyMapper {
    public Company comlogin(@Param("facc") String facc,@Param("fpwd")String fpwd);//登录
    public Company checkfacc(@Param("facc") String facc);//检测公司账号是否重复
    public int addCompany(Company company);
    //---公司证书列表
    public List<Credential> findCreList(Credential credential);
    //------员工证书列表
    public List<Credential> findStfCreList(Credential credential);
//    查找公司证书的总数
    public Integer comCount(Credential credential);
//    查找员工证书的总数
    public Integer stfCount(Credential credential);
}
