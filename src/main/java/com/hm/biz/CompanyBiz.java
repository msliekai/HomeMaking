package com.hm.biz;

import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CompanyBiz {
    public Company comlogin(String facc, String fpwd);
    public Company checkfacc(String facc);
    public int addCompany(Company company);
    //修改公司基本信息
    public int upcom(Integer fid,String facc,String fname,String flaw,String flawphone,String fsite);
    public Company upcominfo(Integer fid);
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

    //查看交易
    public List<Tbldeallog> querydeallog(Integer fid,Integer page,Integer limit);
    //查看交易总条数
    public Integer countdeallog(Integer fid,Integer page,Integer limit);
    //查询所有服务
    public List<TblCOStype> querycostype();
    //查询公司银行账号
    public Tblfirmacc queryfirmacc(Integer fid);
    //银行充值
    public Integer addmoney( String famoney,Integer fid);
    //银行提现
    public Integer drawmoney( String famoney,Integer fid);
    //员工银行卡号
    public Staff queryscard(String scard);
    //银行卡号
    public Tblfirmacc queryfacard(Integer fid);
    //修改银行卡号
    public Integer changefacard(String facard,Integer fid);
    //检查银行卡支付密码
    public Tblfirmacc checkcompwd(String facard,String compwd);
    //查询某个公司的所有服务
    public List<Tblfc> servicetype(Integer fid,Integer page,Integer limit);
    public Integer countservicetype(Integer fid,Integer page,Integer limit);

    //查询具体服务
    public List<Tblfc> queryserve(Integer fid,Integer page,Integer limit);
    public Integer countserve(Integer fid,Integer page,Integer limit);
    //评价
    public List<Tbleva> querycomment(Integer fid,Integer page,Integer limit,String date1,String date2);
    public Integer countcomment(Integer fid,Integer page,Integer limit,String date1,String date2);


    //员工新增
    public Staff addStaff(Staff staff);
//    抢单
    public List<Tblorder> takeOrders(Integer osid,Integer page,Integer limit);
    //--------查找用户
    public TblUser findUser(Integer userid);
    //--------查找用户
    public List<Staff> findStaff(Integer fid);
    //----------抢单更新
    public Integer addOrder(Tblorder tblorder);
    //---员工修改
    public Integer staffFix(Staff staff);
    //---培训内容
    public Tbltrain trainMsg(Integer trid);
    //---员工评价
    public List<Tbleva> findStaffEva(Integer sfid);
    //----分配服务类型
    public List<Tblfc> findCosStyle(Integer fid);
    //----分配服务
    public List<TblCOS> findCos(Integer ctid);
    //---员工修改服务
    public Integer fenPeiCos(Integer cosid,Integer sfid);
    //-----售后接受
    public Integer after(Tblorder tblorder);
    //-----拒绝售后
    public Integer afterResult(Tblorder tblorder);
    //忘记密码
    public Company forgotpwd(String facc);
    //修改密码
    public Integer changepwd(String fpwd,String facc);
    //入驻
    public Integer infirm(String fname,String facc);
    //----公司资料上传
    public Tblfcc companyCreUp(Tblfcc tblfcc);
    //----公司资料上传
    public Tblsfdata staffCreUp(Tblsfdata tblsfdata);
    //---公司资料显示
    public List<Tblfcc> findImg(Integer fid,Integer creid);
    //---员工资料显示
    public List<Tblsfdata> findStaffImg(Integer fid,Integer creid);
    //发布订单统计
    public Map getSendOrder(String date,Integer fid);
    //循环插入服务
    public Integer addserve(List list);
    //入驻上传资料
    public Tblfcc infileup(Tblfcc tblfcc);
    //转账记录
    public Integer transfer(Integer fid ,String dlcost);
    //提现
    public Integer draw(Integer fid ,String dlcost);
    //充值
    public Integer add(Integer fid ,String dlcost);
    //添加银行卡号
    public Integer addcard(Integer fid,String facard,
                           String compwd);
}
