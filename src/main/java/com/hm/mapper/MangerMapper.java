package com.hm.mapper;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.Tblrole;
import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MangerMapper {

    //管理用户登陆
    public TblUser cUserLogin(TblUser tblUser);

    //获取角色
    public List<Tblrole> getRole(Tblrole tblrole);
    //添加角色
    public int addRole(Tblrole tblrole);
    //修改角色
    public int upRole(Tblrole tblrole);
    //刪除角色
    public int delRole(Tblrole tblrole);

    //管理用户信息列表
    public List<TblUser> cFindUserAll(TblUser tblUser);
    //管理家政公司列表
    public List<Company> cFindCompanyAll(Company company);
    //培训计划列表
    public List<Tbltrain> cFindtrainAll(Tbltrain tbltrain);
    //服务类型列表
    public List<TblCOStype> cFindServiceTypeAll(TblCOStype tblCOStype);
    //服务列表
    public List<TblCOS> cFindServiceAll(TblCOS tblCOS);
    //热门服务列表
    public List<TblCOS> cFindHotServiceAll(TblCOS tblCOS);
    //服务信息列表
    public List<Tblorder> MserviceIfmationlist(Tblorder tblorder);
    //动态列表
    public List<Tblnotice> cFindDynamiclistAll(Tblnotice tblnotice);
    //技能培训列表
    public List<Tbltritem> cFindtritemlistAll(Tbltritem tbltritem);
    //育婴知识
    public List<Tblkap> cFindkaptAll(Tblkap tblkap);
    //订单列表
    public List<Tblorder> cFindOrderAll(Tblorder tblorder);
    //顾问信息
    public List<TblAdvisor> cFindAdvisorAll(TblAdvisor tblAdvisor);
}
