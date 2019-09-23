package com.hm.entity;

import lombok.Data;

@Data
public class User {
    private String userid;
    private String userpwd;
    private String rid;

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
