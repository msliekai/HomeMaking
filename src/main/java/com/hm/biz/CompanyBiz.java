package com.hm.biz;

import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CompanyBiz {
    public Company comlogin(String facc, String fpwd);
    public Company checkfacc(String facc);
    public int addCompany(Company company);
    //修改公司基本信息
    public int upcom(Integer fid,String facc,String fname,String flaw,String flawphone,String fsite);
    //------公司证书列表
    public List<Credential> findCreList(Company company);
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
    //修改银行卡号
    public Integer changefacard(String facard,Integer fid);
    //检查银行卡支付密码
    public Tblfirmacc checkcompwd(String facard,String compwd);
    //查询某个公司的所有服务
    public List<TblCOStype> servicetype(Integer fid,Integer page,Integer limit);
    public Integer countservicetype(Integer fid,Integer page,Integer limit);

    //查询具体服务
    public List<TblCOS> service(Integer fid,Integer page,Integer limit);

}
