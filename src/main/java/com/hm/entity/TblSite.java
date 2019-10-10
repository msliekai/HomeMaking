package com.hm.entity;

/**
 * 地址实体
 * @author hha
 * @date 2019-09-22 13:30
 */
public class TblSite {

    //地址ID
    private Integer sid;
    //用户ID
    private Integer userid;
    //详细地址
    private String scontext;
    //省
    private String sa;
    //市
    private String sb;
    //区
    private String sc;
    //电话
    private String sphone;

    //省市区拼接
    private String site;

    public TblSite() {
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getScontext() {
        return scontext;
    }

    public void setScontext(String scontext) {
        this.scontext = scontext;
    }

    public String getSa() {
        return sa;
    }

    public void setSa(String sa) {
        this.sa = sa;
    }

    public String getSb() {
        return sb;
    }

    public void setSb(String sb) {
        this.sb = sb;
    }

    public String getSc() {
        return sc;
    }

    public void setSc(String sc) {
        this.sc = sc;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone;
    }
}
