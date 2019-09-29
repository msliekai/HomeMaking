package com.hm.biz;

import com.hm.entity.TblUser;
import com.hm.entity.Tblrole;

import java.util.List;

public interface MangerBiz {
    //登录
    public TblUser cUserLogin(TblUser tblUser);

    //查询角色
    public List<Tblrole> getRole(Tblrole tblrole);
    //添加角色
    public Integer addRole(Tblrole tblrole);
    //修改角色
    public int upRole(Tblrole tblrole);
    //刪除角色
    public int delRole(Tblrole tblrole);
}
