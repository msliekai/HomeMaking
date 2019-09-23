package com.hm.mapper;

import com.hm.entity.TblSite;
import com.hm.entity.TblUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
//
//    public User userLogin(@Param("userid") String userid, @Param("pwd") String pwd);

    //新增普通用户账号
    public Integer cUserReg(TblUser tblUser);

    //新增地址
    public Integer addSite(TblSite tblSite);

    //普通用户登陆
    public TblUser cUserLogin(TblUser tblUser);

    //查看用户状态
    public Integer queryUserState(@Param("userphone")String userphone);
}
