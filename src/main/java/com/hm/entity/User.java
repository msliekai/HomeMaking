package com.hm.entity;

import lombok.Data;

@Data
public class User {
    private String userid;
    private String userpwd;
    private Integer rid;

    public User(String userid, String userpwd) {
        this.userid = userid;
        this.userpwd = userpwd;
    }

    public User() {
    }

}
