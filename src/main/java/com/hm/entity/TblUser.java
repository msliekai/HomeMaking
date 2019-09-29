package com.hm.entity;

/**
 * 用户实体
 * @author hha
 * @date 2019-09-22 11:39
 */

public class TblUser {

    //序号
    private Integer userid;
    //用户姓名
    private String username;
    // 用户密码
    private String userpwd;
    //用户性别
    private String usersex;
    // 用户手机
    private String userphone;
    //注册时间
    private String usertime;
    // 用户余额
    private Integer usermoney;
    // 用户积分
    private Integer usercon;
    //状态
    private Integer stid;
    // 头像url
    private String userurl;
    // 银行卡号码
    private String usercard;
    // 角色id
    private Integer rid;
    //地址类
    private TblSite tblSite;
    private Integer sid;


    public TblUser() {
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public String getUsersex() {
        return usersex;
    }

    public void setUsersex(String usersex) {
        this.usersex = usersex;
    }

    public String getUsertime() {
        return usertime;
    }

    public void setUsertime(String usertime) {
        this.usertime = usertime;
    }

    public Integer getUsermoney() {
        return usermoney;
    }

    public void setUsermoney(Integer usermoney) {
        this.usermoney = usermoney;
    }

    public Integer getUsercon() {
        return usercon;
    }

    public void setUsercon(Integer usercon) {
        this.usercon = usercon;
    }

    public String getUserurl() {
        return userurl;
    }

    public void setUserurl(String userurl) {
        this.userurl = userurl;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public Integer getStid() {
        return stid;
    }

    public void setStid(Integer stid) {
        this.stid = stid;
    }

    public String getUsercard() {
        return usercard;
    }

    public void setUsercard(String usercard) {
        this.usercard = usercard;
    }

    public TblSite getTblSite() {
        return tblSite;
    }

    public void setTblSite(TblSite tblSite) {
        this.tblSite = tblSite;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }
}
