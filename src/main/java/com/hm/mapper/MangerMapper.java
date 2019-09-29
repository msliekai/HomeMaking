package com.hm.mapper;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import com.hm.entity.Tblrole;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MangerMapper {

    //管理用户登陆
    public TblUser cUserLogin(TblUser tblUser);

    //获取角色
    public List<Tblrole> getRole(Tblrole tblrole);
    //添加角色
    public int addRole(Tblrole tblrole);
    //修改角色
    public int upRole(Tblrole tblrole);
    //刪除角色
    public int delRole(Tblrole tblrole);

}
