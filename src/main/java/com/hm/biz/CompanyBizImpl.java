package com.hm.biz;

import com.hm.entity.*;
import com.hm.mapper.CompanyMapper;
import org.apache.ibatis.annotations.Param;
//import org.bouncycastle.util.Integers;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

import static com.hm.utils.MD5Utils.md5;

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
        //fpwd = md5(fpwd);
        return companyMapper.comlogin(facc,fpwd);
    }

    //注册公司
    @Override
    public int addCompany(Company company) {
        String fpwd = company.getFpwd();
        fpwd = md5(fpwd);
        company.setFpwd(fpwd);
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

    @Override
    public Tblfirmacc queryfacard(Integer fid) {
        return companyMapper.queryfacard(fid);
    }

    @Override
    public Staff queryscard(String scard) {
        return companyMapper.queryscard(scard);
    }

    @Override
    public Integer addserve(List list) {
        return companyMapper.addserve(list);
    }

    //入驻
    @Override
    public Integer infirm(String fname, String facc) {

        return companyMapper.infirm(fname,facc);
    }
    //----公司资料上传
    @Override
    public Tblfcc companyCreUp(Tblfcc tblfcc) {
        Tblfcc obj=tblfcc;
        companyMapper.companyCreUp(obj);
        return obj;
    }
    //----公司资料上传
    @Override
    public Tblsfdata staffCreUp(Tblsfdata tblsfdata) {
        Tblsfdata obj=tblsfdata;
        companyMapper.staffCreUp(obj);
        return obj;
    }
    //---资料显示
    @Override
    public List<Tblfcc> findImg(Integer fid, Integer creid) {
        return companyMapper.findImg(fid,creid);
    }
    //---员工资料显示
    @Override
    public List<Tblsfdata> findStaffImg(Integer fid, Integer creid) {
        return companyMapper.findStaffImg(fid,creid);
    }
    //发布订单统计
    @Override
    public Map getSendOrder(String date,Integer fid) {
        return companyMapper.getSendOrder(date,fid);
    }

    //修改密码
    @Override
    public Integer changepwd(String fpwd, String facc) {
        fpwd = md5(fpwd);
        return companyMapper.changepwd(fpwd,facc);
    }

    //忘记密码
    @Override
    public Company forgotpwd(String facc) {
        return companyMapper.forgotpwd(facc);
    }

    @Override
    public Integer countcomment(Integer fid, Integer page, Integer limit,String date1,String date2) {
        return companyMapper.countcomment(fid,page,limit,date1,date2);
    }

    //评价
    @Override
    public List<Tbleva> querycomment(Integer fid,Integer page,Integer limit,String date1,String date2) {
        return companyMapper.querycomment(fid,page,limit,date1,date2);
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

    //提现交易记录
    @Override
    public Integer draw(Integer fid,String dlcost) {
        return companyMapper.draw(fid,dlcost);
    }

    //添加银行卡号
    @Override
    public Integer addcard(Integer fid,String facard,
                           String compwd) {
        return companyMapper.addcard(fid,facard,compwd);
    }

    //充值
    @Override
    public Integer add(Integer fid, String dlcost) {
        return companyMapper.add(fid,dlcost);
    }

    //转账交易记录
    @Override
    public Integer transfer(Integer fid,String dlcost) {
        return companyMapper.transfer(fid,dlcost);
    }

    @Override
    public Tblfcc infileup(Tblfcc tblfcc) {
        Tblfcc obj=tblfcc;
        companyMapper.infileup(obj);
        return obj;
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
    public int upcom(Integer fid,String facc, String fname, String flaw, String fphone, String fsite) {
        return companyMapper.upcom(fid,facc,fname,flaw,fphone,fsite);
    }

    //银行密码
    @Override
    public Tblfirmacc checkcompwd(String facard,String compwd) {
        return companyMapper.checkcompwd(facard,compwd);
    }

    @Override
    public Integer countserve(Integer fid, Integer page, Integer limit) {
        return companyMapper.countserve(fid,page,limit);
    }

    //具体服务
    @Override
    public List<Tblfc> queryserve(Integer fid, Integer page, Integer limit) {
        return companyMapper.queryserve(fid,page,limit);
    }

    //员工新增
    @Override
    public Staff addStaff(Staff staff) {
        Staff obj=staff;
        companyMapper.addStaff(obj);
        return obj;
    }
    //    抢单
    @Override
    public List<Tblorder> takeOrders(Integer osid,Integer page,Integer limit) {
        return companyMapper.takeorders(osid,page,limit);
    }
    //--------查找用户
    @Override
    public TblUser findUser(Integer userid) {
        return companyMapper.findUser(userid);
    }
    //--------查找用户
    @Override
    public List<Staff> findStaff(Integer fid) {
        return companyMapper.findStaff(fid);
    }
    //----------抢单更新
    @Override
    public Integer addOrder(Tblorder tblorder) {


        return companyMapper.addOrder(tblorder);
    }
    //---员工修改
    @Override
    public Integer staffFix(Staff staff) {
        return companyMapper.staffFix(staff);
    }
    //---培训内容
    @Override
    public Tbltrain trainMsg(Integer trid) {
        return companyMapper.trainMsg(trid);
    }
    //---员工评价
    @Override
    public List<Tbleva> findStaffEva(Integer sfid) {

        return companyMapper.findStaffEva(sfid);
    }
    //----分配服务类型
    @Override
    public List<Tblfc> findCosStyle(Integer fid) {
        return companyMapper.findCosStyle(fid);
    }
    //----分配服务
    @Override
    public List<TblCOS> findCos(Integer ctid) {
        return companyMapper.findCos(ctid);
    }
    //---员工修改服务
    @Override
    public Integer fenPeiCos(Integer cosid,Integer sfid) {
        return companyMapper.fenPeiCos(cosid,sfid);
    }
    //-----售后接受
    @Override
    public Integer after(Tblorder tblorder) {
        return companyMapper.after(tblorder);
    }
    //-----拒绝售后
    @Override
    public Integer afterResult(Tblorder tblorder) {
        return companyMapper.afterResult(tblorder);
    }

    //某个公司提供的服务数量
    @Override
    public Integer countservicetype(Integer fid, Integer page, Integer limit) {
        return companyMapper.countservicetype(fid,page,limit);
    }

    @Override
    public Company upcominfo(Integer fid) {
        return companyMapper.upcominfo(fid);
    }

    //某个公司提供的服务
    @Override
    public List<Tblfc> servicetype(Integer fid,Integer page,Integer limit) {
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
