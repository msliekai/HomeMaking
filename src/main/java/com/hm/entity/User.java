package com.hm.entity;

public class User {
    private String userid;
    private String userpwd;

    public User(String userid, String userpwd) {
        this.userid = userid;
        this.userpwd = userpwd;
    }

    public User() {
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }
}
