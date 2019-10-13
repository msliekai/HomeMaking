package com.hm.mapper;

import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CompanyMapper {
    public Company comlogin(@Param("facc") String facc, @Param("fpwd") String fpwd);//登录

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
    public List<Tblorder> findCompanyOrder(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit, @Param("osname") String osname);

    //----查找订单的总数
    public Integer ordercount(@Param("fid") Integer fid, @Param("osname") String osname);

    //--------查找员工信息表
    public List<Staff> staffList(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    //---------查找员工总数
    public Integer staffCount(Integer fid);

    //    培训表
    public List<Tbltritem> train(@Param("page") Integer page, @Param("limit") Integer limit);

    //    培训表总数
    public Integer traincount();

    //-----------删除员工
    public Integer delStaff(Integer sfid);

    //修改公司基本信息
    public int upcom(@Param("fid") Integer fid, @Param("facc") String facc, @Param("fname") String fname, @Param("flaw") String flaw,
                     @Param("flawphone") String flawphone, @Param("fsite") String fsite);

    public Company upcominfo(@Param("fid") Integer fid);

    //查看交易
    public List<Tbldeallog> querydeallog(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    public Integer countdeallog(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    //查询所有服务
    public List<TblCOStype> querycostype();

    //查询公司银行账号
    public Tblfirmacc queryfirmacc(@Param("fid") Integer fid);

    //公司银行卡充值
    public Integer addmoney(@Param("famoney") String famoney, @Param("fid") Integer fid);

    //公司银行卡提现
    public Integer drawmoney(@Param("famoney") String famoney, @Param("fid") Integer fid);

    //员工银行卡号
    public Staff queryscard(@Param("scard") String scard);

    //公司银行账号
    public Tblfirmacc queryfacard(@Param("fid") Integer fid);

    //修改银行卡号
    public Integer changefacard(@Param("facard") String facard, @Param("fid") Integer fid);

    //检查银行卡支付密码
    public Tblfirmacc checkcompwd(@Param("facard") String facard, @Param("compwd") String compwd);

    //查询某个公司的所有服务
    public List<Tblfc> servicetype(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    public Integer countservicetype(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    //具体服务
    public List<Tblfc> queryserve(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    public Integer countserve(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit);

    //评价
    public List<Tbleva> querycomment(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit,
                                     @Param("date1") String date1, @Param("date2") String date2);

    public Integer countcomment(@Param("fid") Integer fid, @Param("page") Integer page, @Param("limit") Integer limit,
                                @Param("date1") String date1, @Param("date2") String date2);

    //    public List<TblCOS> service(@Param("fid") Integer fid,@Param("page") Integer page,@Param("limit") Integer limit);
    //员工新增
    public Integer addStaff(Staff staff);

    //    抢单
    public List<Tblorder> takeorders(@Param("osid") Integer osid, @Param("page") Integer page, @Param("limit") Integer limit);

    //--------查找用户
    public TblUser findUser(Integer userid);

    //--------查找用户
    public List<Staff> findStaff(Integer fid);

    //----------抢单更新
    public Integer addOrder(Tblorder tblorder);

    //---员工修改
    public Integer staffFix(Staff staff);

    //忘记密码
    public Company forgotpwd(String facc);

    //修改密码
    public Integer changepwd(@Param("fpwd") String fpwd, @Param("facc") String facc);
    //---培训内容
    public Tbltrain trainMsg(Integer trid);
    //---员工评价
    public List<Tbleva> findStaffEva(@Param("sfid") Integer sfid);
    //----分配服务类型
    public List<Tblfc> findCosStyle(Integer fid);
    //----分配服务
    public List<TblCOS> findCos(@Param("ctid") Integer ctid);
    //---员工修改服务
    public Integer fenPeiCos(@Param("cosid") Integer cosid,@Param("sfid")Integer sfid);
    //-----售后接受
    public Integer after(Tblorder tblorder);
    //-----拒绝售后
    public Integer afterResult(Tblorder tblorder);


    //入驻
    public Integer infirm(@Param("fname") String fname, @Param("facc") String facc);

    //循环插入服务
    public Integer addserve(List list);
    //----公司资料上传
    public Integer companyCreUp(Tblfcc tblfcc);
    //----公司资料上传
    public Integer staffCreUp(Tblsfdata tblsfdata);
    //---公司资料显示
    public List<Tblfcc> findImg(@Param("fid") Integer fid,@Param("creid") Integer creid);
    //---员工资料显示
    public List<Tblsfdata> findStaffImg(@Param("fid") Integer fid,@Param("dataid")Integer dataid);
    //发布订单统计
    public Map getSendOrder(@Param("date") String date,@Param("fid")Integer fid);
    //入驻上传资料
    public Integer infileup(Tblfcc tblfcc);

    //转账记录
    public Integer transfer(@Param("fid")Integer fid,@Param("dlcost")String dlcost);
    //提现记录
    public Integer draw(@Param("fid")Integer fid,@Param("dlcost")String dlcost);
// 充值
    public Integer add(@Param("fid")Integer fid,@Param("dlcost")String dlcost);

}