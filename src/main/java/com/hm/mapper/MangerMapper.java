package com.hm.mapper;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.Tblrole;
import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.LinkedList;
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
    //家政公司审核列表
    public List<Company> cmFindCompanyAll(Company company);
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
    //用户禁用
    public int updateUserState(@Param("userid") int userid);
    //用户启用
    public int updateUserState2(@Param("userid") int userid);
    //家政公司禁用
    public int updateCompanyState(@Param("fid") int fid);
    //家政公司启用
    public int updateCompanyState2(@Param("fid") int fid);
    //入驻审核不通过
    public int updateCompanyRole(@Param("fid") int fid);
    //入驻审核通过
    public int updateCompanyRole2(@Param("fid") int fid);
    //添加培训安排
    public  int addTrain(Tbltrain tbltrain);
    //删除培训安排
    public int delTrain(@Param("trid") int trid);
    //修改培训安排
    public int updateTrain(Tbltrain tbltrain);
    //添加服务类别
    public  int addServiceType(TblCOStype tblCOStype);
    //删除服务类别
    public int delServiceType(@Param("ctid") int ctid);
    //修改服务类别
    public int updateServiceType(TblCOStype tblCOStype);
    //添加服务
    public  int addService(TblCOS tblCOS);
    //删除服务
    public int delService(@Param("cosid") int cosid);
    //修改服务
    public int updateService(TblCOS tblCOS);
    //添加公告
    public  int AddDynamic(Tblnotice tblnotice);
    //删除公告
    public int delDynamic(@Param("nid") int nid);
    //修改公告
    public int updateDynamic(Tblnotice tblnotice);
    //添加技能培训
    public  int AddTritem(Tbltritem tbltritem);
    //删除技能培训
    public int delTritem(@Param("itid") int itid);
    //修改技能培训
    public int updateTritem(Tbltritem tbltritem);
    //添加育婴知识
    public  int AddDKap(Tblkap tblkap);
    //删除育婴知识
    public int delKap(@Param("kid") int kid);
    //修改育婴公告
    public int updateKap(Tblkap tblkap);
    //提交订单回访
    public int OrderVisit(Tblorder tblorder);
}
