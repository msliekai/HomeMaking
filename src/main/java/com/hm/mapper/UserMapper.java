package com.hm.mapper;

import com.hm.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    //查询消费记录
    public List<UserMoney> jUserMoney(UserMoney userMoney);

    //查询评论
    public List<Tbleva> jUserAppraise(@Param("page")int page,@Param("limit")int limit,@Param("userid")Integer userid);

    //查看地址
    public List<TblSite>  jUserSite(@Param("page")int page,@Param("limit")int limit,@Param("userid")Integer userid);

    //收藏的阿姨
    public List<Tblsfcoll>  jUsersfcoll(@Param("page")int page, @Param("limit")int limit, @Param("userid")Integer userid);
    //收藏的公司
    public List<Tblfcoll>  jUserfcoll(@Param("page")int page,@Param("limit")int limit,@Param("userid")Integer userid);

}
