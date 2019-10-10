package com.hm.entity;

public class UserMoney {
    private Integer oid;
    private String onumber;
    private String cosname;
    private String ctname;
    private String otime;
    private String fname;
    private String osname;
    private Integer osid;
    private Integer money;
    private Integer page;
    private Integer limit;
    private Integer userid;

    public UserMoney() {
    }

    public UserMoney(Integer oid, String onumber, String cosname, String ctname, String otime, String fname, String osname, Integer osid, Integer money, Integer page, Integer limit, Integer userid) {
        this.oid = oid;
        this.onumber = onumber;
        this.cosname = cosname;
        this.ctname = ctname;
        this.otime = otime;
        this.fname = fname;
        this.osname = osname;
        this.osid = osid;
        this.money = money;
        this.page = page;
        this.limit = limit;
        this.userid = userid;
    }

    public String getOsname() {
        return osname;
    }

    public void setOsname(String osname) {
        this.osname = osname;
    }

    public Integer getOsid() {
        return osid;
    }

    public void setOsid(Integer osid) {
        this.osid = osid;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getOnumber() {
        return onumber;
    }

    public void setOnumber(String onumber) {
        this.onumber = onumber;
    }

    public String getCosname() {
        return cosname;
    }

    public void setCosname(String cosname) {
        this.cosname = cosname;
    }

    public String getCtname() {
        return ctname;
    }

    public void setCtname(String ctname) {
        this.ctname = ctname;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}
